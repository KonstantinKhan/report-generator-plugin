using System;
using System.Net;
using System.Net.Http;
using System.Text.Json;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace ExternalApiPlugin
{
    internal class ExternalApiForm : Window
    {
        private readonly long _objectId;
        private readonly Button _requestButton;
        private readonly TextBox _resultBox;

        public ExternalApiForm(long objectId)
        {
            _objectId = objectId;

            Title = "Отчёты";
            Width = 560;
            Height = 380;
            WindowStartupLocation = WindowStartupLocation.CenterScreen;
            FontFamily = new FontFamily("Segoe UI");
            FontSize = 13;

            var root = new Grid { Margin = new Thickness(16) };
            root.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            root.RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Star) });

            _requestButton = new Button
            {
                Content = "Спецификация ГОСТ Р 2.106-2019 без ВП",
                Padding = new Thickness(12, 6, 12, 6),
                HorizontalAlignment = HorizontalAlignment.Left
            };
            _requestButton.Click += RequestButton_Click;
            Grid.SetRow(_requestButton, 0);

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
            Grid.SetRow(_resultBox, 1);

            root.Children.Add(_requestButton);
            root.Children.Add(_resultBox);
            Content = root;
        }

        private async void RequestButton_Click(object sender, RoutedEventArgs e)
        {
            _requestButton.IsEnabled = false;
            _resultBox.Text = "Запрос...";
            try
            {
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                var config = ServerConfig.Load();
                var url = config.BuildSpecificationUrl(_objectId);

                using (var client = new HttpClient { Timeout = TimeSpan.FromSeconds(config.TimeoutSeconds) })
                using (var response = await client.PostAsync(url, null))
                {
                    var body = await response.Content.ReadAsStringAsync();
                    _resultBox.Text = FormatResult(response.StatusCode, response.ReasonPhrase, body);
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

        private static string FormatResult(HttpStatusCode statusCode, string reasonPhrase, string body)
        {
            var header = $"HTTP {(int)statusCode} {reasonPhrase}";

            try
            {
                using (var doc = JsonDocument.Parse(body))
                {
                    var root = doc.RootElement;
                    if (root.TryGetProperty("path", out var pathProp) && pathProp.ValueKind == JsonValueKind.String)
                    {
                        var path = pathProp.GetString();
                        var idText = root.TryGetProperty("id", out var idProp) ? idProp.ToString() : "?";
                        return $"{header}\r\n\r\nId отчёта: {idText}\r\nПолный путь до отчёта: {path}";
                    }
                }
            }
            catch (JsonException)
            {
                // Ответ не JSON или без поля path — показываем тело как есть ниже.
            }

            return $"{header}\r\n\r\nОтвет сервера:\r\n{body}";
        }
    }
}
