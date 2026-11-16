using System;
using System.IO;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Interop;
using Microsoft.Win32;
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
        private readonly Button _saveButton;
        private readonly DispatcherTimer _timer;

        private readonly Button _cancelButton;
        private readonly TextBox _nameBox;
        private readonly CheckBox _overwriteBox;
        private bool _stateCanSave;
        private bool _needsOverwrite;

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
            Width = 560;
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
                Text = $"Отчёт «{report.FileName}».\nВыберите в клиенте документ в рабочем проекте.",
                TextWrapping = TextWrapping.Wrap,
                Margin = new Thickness(0, 0, 0, 8)
            });
            panel.Children.Add(new TextBlock { Text = "Имя файла:" });
            _nameBox = new TextBox { Text = report.FileName, Padding = new Thickness(4), Margin = new Thickness(0, 0, 0, 6) };
            _nameBox.TextChanged += NameBox_TextChanged;
            panel.Children.Add(_nameBox);
            _overwriteBox = new CheckBox
            {
                Content = "Перезаписать существующий файл",
                Visibility = Visibility.Collapsed,
                Margin = new Thickness(0, 0, 0, 6)
            };
            _overwriteBox.Click += (s, e) => UpdateSaveButton();
            panel.Children.Add(_overwriteBox);
            _statusText = new TextBlock { TextWrapping = TextWrapping.Wrap, Margin = new Thickness(0, 0, 0, 4) };
            panel.Children.Add(_statusText);

            _saveButton = new Button { Content = "Сохранить", Padding = new Thickness(16, 5, 16, 5), Margin = new Thickness(0, 0, 8, 0), IsEnabled = false };
            _saveButton.Click += SaveButton_Click;
            var diskButton = new Button { Content = "На диск…", Padding = new Thickness(16, 5, 16, 5), Margin = new Thickness(0, 0, 8, 0) };
            diskButton.Click += DiskButton_Click;
            _cancelButton = new Button { Content = "Отмена", Padding = new Thickness(16, 5, 16, 5) };
            _cancelButton.Click += (s, e) => { PendingReport.Clear(); CloseKeepingClient(); };

            var buttons = new StackPanel { Orientation = Orientation.Horizontal, HorizontalAlignment = HorizontalAlignment.Right };
            buttons.Children.Add(_saveButton);
            buttons.Children.Add(diskButton);
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

                if (id <= 0)
                {
                    SetState("Ничего не выделено.", false);
                    return;
                }

                _target = LoodsmanFileUploader.GetTargetInfo(call, id);
                _assessment = _target?.Assess(checkOut) ?? SaveAssessment.Direct;
                var title = _target?.Title ?? "id " + id;
                var lockOwner = _assessment.LockedByOther ? LoodsmanFileUploader.GetLockOwnerText(call, id) : null;
                var text =
                    !_assessment.CanSave ? $"Нельзя сохранить: {_assessment.Reason}." + (lockOwner != null ? $"\nЗаблокировал: {lockOwner}." : string.Empty)
                        : _assessment.Mode == SaveMode.AutoCheckOut ? $"Можно сохранить в: {title}.\nДокумент не в работе: будет взят в работу и сразу сохранён в базу."
                        : $"Можно сохранить в: {title}";

                // Файл с таким именем уже есть в базе: в тот же документ его можно перезаписать, в чужой — нет.
                var fileName = PendingReport.Current?.FileName;
                var owner = string.IsNullOrEmpty(fileName) ? null : LoodsmanFileUploader.FindFileOwner(call, fileName);
                var canSave = _assessment.CanSave;
                _needsOverwrite = false;
                if (owner != null)
                {
                    if (owner.IdVersion == id)
                    {
                        _needsOverwrite = true;
                        text += $"\nФайл «{fileName}» уже есть в этом документе. Отметьте «Перезаписать» или измените имя.";
                    }
                    else
                    {
                        canSave = false;
                        text += $"\nФайл «{fileName}» уже привязан к объекту {owner.Title}. Измените имя файла.";
                    }
                }

                _overwriteBox.Visibility = _needsOverwrite ? Visibility.Visible : Visibility.Collapsed;
                if (!_needsOverwrite)
                {
                    _overwriteBox.IsChecked = false;
                }
                SetState(text, canSave);
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
            _stateCanSave = canSave;
            UpdateSaveButton();
        }

        private void UpdateSaveButton()
        {
            _saveButton.IsEnabled = _stateCanSave && (!_needsOverwrite || _overwriteBox.IsChecked == true);
        }

        private void NameBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            PendingReport.Rename(_nameBox.Text);
            _lastKey = -1;
            Refresh(_call, "имя файла");
        }

        // Запасной путь, когда в документ сохранить нельзя (например, заблокирован другим пользователем).
        // Отчёт остаётся в памяти плагина: после сохранения на диск можно всё равно выбрать документ.
        private void DiskButton_Click(object sender, RoutedEventArgs e)
        {
            var report = PendingReport.Current;
            if (report == null)
            {
                return;
            }

            var dialog = new SaveFileDialog
            {
                FileName = report.FileName,
                Filter = "PDF (*.pdf)|*.pdf|Все файлы (*.*)|*.*",
                DefaultExt = ".pdf"
            };
            if (dialog.ShowDialog(this) != true)
            {
                return;
            }

            try
            {
                File.WriteAllBytes(dialog.FileName, report.Data);
                _statusText.Text = $"Сохранено на диск: {dialog.FileName}";
            }
            catch (Exception ex)
            {
                MessageBox.Show(this, ex.Message, "Сохранение на диск: ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
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
