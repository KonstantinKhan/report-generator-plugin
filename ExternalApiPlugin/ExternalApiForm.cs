using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Text.Json;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Ascon.Plm.Loodsman.PluginSDK;
using Microsoft.Win32;

namespace ExternalApiPlugin
{
    internal class ExternalApiForm : Window
    {
        private readonly long _objectId;
        private readonly ReportType _reportType;
        private readonly Button _requestButton;
        private readonly TextBox _resultBox;
        private readonly INetPluginCall _call;
        private readonly StackPanel _actionsPanel;
        private readonly TextBox _fileNameBox;

        public bool SaveRequested { get; private set; }

        private byte[] _reportPdf;

        public ExternalApiForm(long objectId, ReportType reportType, INetPluginCall call)
        {
            _objectId = objectId;
            _reportType = reportType;
            _call = call;

            Title = ReportTypeNames.GetName(reportType);
            Width = 560;
            Height = 560;
            WindowStartupLocation = WindowStartupLocation.CenterScreen;
            FontFamily = new FontFamily("Segoe UI");
            FontSize = 13;

            var root = new Grid { Margin = new Thickness(16) };
            root.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            root.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            root.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            root.RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Star) });

            var idLabel = new TextBlock
            {
                Text = LoodsmanFileUploader.GetObjectCaption(call, objectId),
                Margin = new Thickness(0, 0, 0, 12)
            };
            Grid.SetRow(idLabel, 0);

            _requestButton = new Button
            {
                Content = "Сформировать отчёт",
                Padding = new Thickness(12, 6, 12, 6),
                HorizontalAlignment = HorizontalAlignment.Left
            };
            _requestButton.Click += RequestButton_Click;
            Grid.SetRow(_requestButton, 1);

            _fileNameBox = new TextBox { Padding = new Thickness(4), Margin = new Thickness(0, 0, 0, 6) };
            _fileNameBox.TextChanged += (s, e) => PendingReport.Rename(_fileNameBox.Text);

            var saveButton = new Button { Content = "Сохранить на диск…", Padding = new Thickness(12, 6, 12, 6), Margin = new Thickness(0, 0, 8, 0) };
            saveButton.Click += SaveButton_Click;
            var chooseButton = new Button { Content = "Сохранить в документ…", Padding = new Thickness(12, 6, 12, 6), Margin = new Thickness(0, 0, 8, 0) };
            chooseButton.Click += (s, e) => { SaveRequested = true; Close(); };
            var filesButton = new Button { Content = "Файлы объекта", Padding = new Thickness(12, 6, 12, 6) };
            filesButton.Click += FilesButton_Click;

            var buttonsRow = new StackPanel { Orientation = Orientation.Horizontal };
            buttonsRow.Children.Add(chooseButton);
            buttonsRow.Children.Add(saveButton);
            buttonsRow.Children.Add(filesButton);

            _actionsPanel = new StackPanel { Margin = new Thickness(0, 12, 0, 0), Visibility = Visibility.Collapsed };
            _actionsPanel.Children.Add(new TextBlock
            {
                Text = "«Сохранить в документ…» закроет окно и покажет панель «Сохранить / Отмена»: выберите в клиенте документ в рабочем проекте, и кнопка «Сохранить» станет активной.",
                TextWrapping = TextWrapping.Wrap,
                Margin = new Thickness(0, 0, 0, 8)
            });
            _actionsPanel.Children.Add(new TextBlock { Text = "Имя файла:" });
            _actionsPanel.Children.Add(_fileNameBox);
            _actionsPanel.Children.Add(buttonsRow);
            Grid.SetRow(_actionsPanel, 2);

            _resultBox = new TextBox
            {
                Margin = new Thickness(0, 12, 0, 0),
                Padding = new Thickness(8),
                IsReadOnly = true,
                TextWrapping = TextWrapping.Wrap,
                AcceptsReturn = true,
                VerticalScrollBarVisibility = ScrollBarVisibility.Auto,
                HorizontalScrollBarVisibility = ScrollBarVisibility.Auto
            };
            Grid.SetRow(_resultBox, 3);

            root.Children.Add(idLabel);
            root.Children.Add(_requestButton);
            root.Children.Add(_actionsPanel);
            root.Children.Add(_resultBox);
            Content = root;
        }

        private async void RequestButton_Click(object sender, RoutedEventArgs e)
        {
            _requestButton.IsEnabled = false;
            _resultBox.Text = "Формирование отчёта...";
            try
            {
                if (_reportType != ReportType.SpecificationWithPZ && _reportType != ReportType.SpecificationWithoutPZ)
                {
                    _resultBox.Text = $"{ReportTypeNames.GetName(_reportType)}\r\n\r\nЭтот отчёт находится в процессе разработки.";
                    return;
                }

                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                var config = ServerConfig.Load();
                var url = config.BuildSpecificationUrl(_objectId, _reportType);

                using (var client = new HttpClient { Timeout = TimeSpan.FromSeconds(config.TimeoutSeconds) })
                using (var response = await client.PostAsync(url, null))
                {
                    var body = await response.Content.ReadAsStringAsync();
                    if (!response.IsSuccessStatusCode)
                    {
                        throw new HttpRequestException($"HTTP {(int)response.StatusCode} {response.ReasonPhrase}\r\n{body}");
                    }

                    if (!TryGetReportId(body, out var reportId))
                    {
                        throw new InvalidOperationException($"В ответе сервера нет id отчёта:\r\n{body}");
                    }

                    _resultBox.Text = "Сохранение отчёта...";
                    _reportPdf = await client.GetByteArrayAsync(config.BuildReportDownloadUrl(reportId));
                    PendingReport.Set($"report-{_objectId}.pdf", _reportPdf, _objectId);
                    _fileNameBox.Text = $"report-{_objectId}.pdf";
                    _actionsPanel.Visibility = Visibility.Visible;
                    _resultBox.Text = "Отчёт сохранён";
                }
            }
            catch (Exception ex)
            {
                _resultBox.Text = ex.ToString();
            }
            finally
            {
                _requestButton.IsEnabled = true;
            }
        }

        private static bool TryGetReportId(string body, out string id)
        {
            id = null;
            try
            {
                using (var doc = JsonDocument.Parse(body))
                {
                    if (doc.RootElement.TryGetProperty("id", out var idProp) && idProp.ValueKind == JsonValueKind.String)
                    {
                        id = idProp.GetString();
                    }
                }
            }
            catch (JsonException)
            {
            }

            return !string.IsNullOrEmpty(id);
        }

        private void Log(string message) => _resultBox.Text += "\r\n\r\n" + message;

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            if (_reportPdf == null) return;

            var dialog = new SaveFileDialog
            {
                FileName = _fileNameBox.Text,
                Filter = "PDF (*.pdf)|*.pdf|Все файлы (*.*)|*.*",
                DefaultExt = ".pdf"
            };
            if (dialog.ShowDialog(this) != true) return;

            try
            {
                File.WriteAllBytes(dialog.FileName, _reportPdf);
                Log($"Сохранено на диск: {dialog.FileName}");
            }
            catch (Exception ex)
            {
                Log($"Ошибка сохранения на диск:\r\n{ex}");
            }
        }

        private void FilesButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Log($"GetInfoAboutVersion(id={_objectId}, режим 7):\r\n{LoodsmanFileUploader.GetFilesInfo(_call, _objectId)}");
            }
            catch (Exception ex)
            {
                Log($"GetInfoAboutVersion: исключение\r\n{ex}");
            }
        }
    }
}
