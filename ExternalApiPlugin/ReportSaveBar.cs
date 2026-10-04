using System;
using System.Runtime.InteropServices;
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

        private readonly Button _cancelButton;

        private INetPluginCall _call;
        private IntPtr _clientHwnd;
        private long _lastKey = -1;
        private bool _saved;
        private TargetInfo _target;
        private SaveAssessment _assessment = SaveAssessment.Refuse("объект не выбран");
        private bool _closed;

        [DllImport("user32.dll")] private static extern bool IsIconic(IntPtr hWnd);
        [DllImport("user32.dll")] private static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
        [DllImport("user32.dll")] private static extern bool SetForegroundWindow(IntPtr hWnd);
        private const int SW_RESTORE = 9;

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
            _cancelButton = new Button { Content = "Отмена", Padding = new Thickness(16, 5, 16, 5) };
            _cancelButton.Click += (s, e) => { PendingReport.Clear(); CloseKeepingClient(); };

            var buttons = new StackPanel { Orientation = Orientation.Horizontal, HorizontalAlignment = HorizontalAlignment.Right };
            buttons.Children.Add(_saveButton);
            buttons.Children.Add(_cancelButton);
            panel.Children.Add(buttons);
            Content = panel;

            _timer = new DispatcherTimer { Interval = TimeSpan.FromMilliseconds(800) };
            _timer.Tick += (s, e) => Refresh(_call, "таймер");
            Closed += (s, e) => { _closed = true; _timer.Stop(); };
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
                    _clientHwnd = hwnd;
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

                _target = LoodsmanFileUploader.GetTargetInfo(call, id);
                _assessment = _target?.Assess(checkOut) ?? SaveAssessment.Direct;
                var title = _target?.Title ?? "id " + id;
                SetState(
                    !_assessment.CanSave ? $"Нельзя сохранить: {_assessment.Reason}."
                        : _assessment.Mode == SaveMode.AutoCheckOut ? $"Можно сохранить в: {title}.\nДокумент не в работе: будет взят в работу и сразу сохранён в базу (check-in)."
                        : $"Можно сохранить в: {title}",
                    _assessment.CanSave);
                _saveButton.Content = _assessment.Mode == SaveMode.AutoCheckOut ? "Взять в работу и сохранить" : "Сохранить";
            }
            catch (Exception ex)
            {
                // Проверка не удалась — не блокируем: попытка сохранения покажет реальную причину.
                SetState($"Не удалось проверить объект ({ex.Message}). Можно попробовать сохранить.", true);
            }
        }

        // Закрытие owned-окна может оставить клиента без активации (он сворачивается): перед закрытием
        // явно отдаём активацию главному окну, а если оно всё же свёрнуто — восстанавливаем.
        private void CloseKeepingClient()
        {
            var hwnd = _clientHwnd;
            if (hwnd != IntPtr.Zero)
            {
                try
                {
                    if (IsIconic(hwnd))
                    {
                        ShowWindow(hwnd, SW_RESTORE);
                    }
                    SetForegroundWindow(hwnd);
                }
                catch (Exception)
                {
                    // Только косметика: не мешаем закрытию.
                }
            }

            if (!_closed)
            {
                Close();
            }

            if (hwnd != IntPtr.Zero)
            {
                try
                {
                    if (IsIconic(hwnd))
                    {
                        ShowWindow(hwnd, SW_RESTORE);
                    }
                }
                catch (Exception)
                {
                }
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
                LoodsmanFileUploader.SaveToDocument(_call, id, _target, _assessment.Mode, report.FileName, report.Data);
                PendingReport.Clear();
                _saved = true;

                // Без MessageBox: диалог с владельцем-панелью, которая тут же закрывается, сворачивал клиент.
                _timer.Stop();
                SetState($"✓ Файл «{report.FileName}» добавлен (id объекта {id}). " + (_assessment.Mode == SaveMode.Direct ? "Изменения станут видны после сохранения рабочего проекта." : "Документ сохранён в базу."), false);
                _cancelButton.Content = "Закрыть";
                var closeTimer = new DispatcherTimer { Interval = TimeSpan.FromSeconds(2.5) };
                closeTimer.Tick += (s2, e2) =>
                {
                    closeTimer.Stop();
                    if (_saved && !_closed)
                    {
                        CloseKeepingClient();
                    }
                };
                closeTimer.Start();
            }
            catch (Exception ex)
            {
                // Панель остаётся открытой: можно выбрать другой документ и повторить.
                MessageBox.Show(this, ex.ToString(), "Сохранение отчёта: ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
