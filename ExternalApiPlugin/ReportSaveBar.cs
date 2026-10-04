using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Interop;
using System.Windows.Threading;
using Ascon.Plm.Loodsman.PluginSDK;

namespace ExternalApiPlugin
{
    /// <summary>
    /// Немодальная плавающая панель «Сохранить / Отмена». Пока она открыта, пользователь свободно ходит по клиенту;
    /// «Сохранить» активна, только когда выделенный объект принимает файл.
    /// Выделение приходит двумя путями: из enableCheck пунктов меню (клиент вызывает его со свежим контекстом)
    /// и по таймеру из последнего известного INetPluginCall. Какой путь реально «живой» — видно в строке источника.
    /// </summary>
    internal sealed class ReportSaveBar : Window
    {
        private static ReportSaveBar _current;

        private readonly TextBlock _statusText;
        private readonly TextBlock _sourceText;
        private readonly Button _saveButton;
        private readonly DispatcherTimer _timer;

        private INetPluginCall _call;
        private long _lastKey = -1;

        public static void ShowFor(INetPluginCall call)
        {
            if (PendingReport.Current == null)
            {
                return;
            }

            if (_current == null)
            {
                _current = new ReportSaveBar();
                _current.Closed += (s, e) => _current = null;
                _current.TryAttachToClient(call);
                _current.Show();
            }

            _current.Refresh(call, "открытие");
        }

        /// <summary>Вызывается из enableCheck меню: клиент передаёт актуальный контекст при смене выделения.</summary>
        public static void NotifySelection(INetPluginCall call)
        {
            _current?.Refresh(call, "меню");
        }

        private ReportSaveBar()
        {
            Title = "Сохранение отчёта";
            Width = 420;
            SizeToContent = SizeToContent.Height;
            ResizeMode = ResizeMode.NoResize;
            ShowInTaskbar = false;
            Topmost = true;
            WindowStartupLocation = WindowStartupLocation.Manual;
            Left = SystemParameters.WorkArea.Right - Width - 24;
            Top = SystemParameters.WorkArea.Top + 80;

            var report = PendingReport.Current;
            var panel = new StackPanel { Margin = new Thickness(12) };
            panel.Children.Add(new TextBlock
            {
                Text = $"Отчёт «{report.FileName}», {report.Data.Length} байт.\nВыберите в клиенте документ в рабочем проекте.",
                TextWrapping = TextWrapping.Wrap,
                Margin = new Thickness(0, 0, 0, 8)
            });
            _statusText = new TextBlock { TextWrapping = TextWrapping.Wrap, Margin = new Thickness(0, 0, 0, 4) };
            _sourceText = new TextBlock { FontSize = 10, Foreground = System.Windows.Media.Brushes.Gray, Margin = new Thickness(0, 0, 0, 8) };
            panel.Children.Add(_statusText);
            panel.Children.Add(_sourceText);

            _saveButton = new Button { Content = "Сохранить", Padding = new Thickness(16, 5, 16, 5), Margin = new Thickness(0, 0, 8, 0), IsEnabled = false };
            _saveButton.Click += SaveButton_Click;
            var cancelButton = new Button { Content = "Отмена", Padding = new Thickness(16, 5, 16, 5) };
            cancelButton.Click += (s, e) => { PendingReport.Clear(); Close(); };

            var buttons = new StackPanel { Orientation = Orientation.Horizontal, HorizontalAlignment = HorizontalAlignment.Right };
            buttons.Children.Add(_saveButton);
            buttons.Children.Add(cancelButton);
            panel.Children.Add(buttons);
            Content = panel;

            _timer = new DispatcherTimer { Interval = TimeSpan.FromMilliseconds(800) };
            _timer.Tick += (s, e) => Refresh(_call, "таймер");
            Closed += (s, e) => _timer.Stop();
            _timer.Start();
        }

        // Владелец — главное окно клиента: панель сворачивается и восстанавливается вместе с ним.
        private void TryAttachToClient(INetPluginCall call)
        {
            try
            {
                object handle = call.PluginCall.MainHandle;
                var hwnd = handle is IntPtr ptr ? ptr : new IntPtr(Convert.ToInt64(handle));
                if (hwnd != IntPtr.Zero)
                {
                    new WindowInteropHelper(this).Owner = hwnd;
                }
            }
            catch (Exception)
            {
                // Без владельца панель просто остаётся Topmost.
            }
        }

        private void Refresh(INetPluginCall call, string source)
        {
            if (call?.PluginCall == null)
            {
                return;
            }

            _call = call;

            try
            {
                var id = call.PluginCall.IdVersion;
                var checkOut = call.PluginCall.CheckOut;
                var key = id * 1000003 + checkOut;
                if (key == _lastKey)
                {
                    return;
                }
                _lastKey = key;

                _sourceText.Text = $"выделение обновлено: {source}, {DateTime.Now:HH:mm:ss}; id={id}, CheckOut={checkOut}";

                if (id <= 0)
                {
                    SetState("Ничего не выделено.", false);
                    return;
                }

                var target = LoodsmanFileUploader.GetTargetInfo(call, id);
                var reason = target?.RefusalReason(checkOut);
                SetState(
                    reason == null ? $"Можно сохранить в: {target?.Title ?? "id " + id}" : $"Нельзя сохранить: {reason}.",
                    reason == null);
            }
            catch (Exception ex)
            {
                // Проверка не удалась — не блокируем: попытка сохранения покажет реальную причину.
                SetState($"Не удалось проверить объект ({ex.Message}). Можно попробовать сохранить.", true);
            }
        }

        private void SetState(string text, bool canSave)
        {
            _statusText.Text = text;
            _saveButton.IsEnabled = canSave;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            var report = PendingReport.Current;
            if (report == null || _call == null)
            {
                return;
            }

            try
            {
                var id = _call.PluginCall.IdVersion;
                LoodsmanFileUploader.UpFileById(_call, id, report.FileName, string.Empty, report.Data);
                PendingReport.Clear();
                MessageBox.Show(this, $"Файл «{report.FileName}» добавлен (id объекта {id}).\nИзменения станут видны после сохранения рабочего проекта.", "Сохранение отчёта");
                Close();
            }
            catch (Exception ex)
            {
                // Панель остаётся открытой: можно выбрать другой документ и повторить.
                MessageBox.Show(this, ex.ToString(), "Сохранение отчёта: ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
