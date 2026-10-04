using Ascon.Plm.Loodsman.PluginSDK;
using System;
using System.Windows;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Отчеты#Выбрать отчёт", OpenReportSelectionForm, arg =>
            {
                ReportSaveBar.NotifySelection(arg);
                return arg?.PluginCall?.IdVersion > 0;
            });
            menu.AddMenuItem("Отчеты#Сохранить отчёт в выбранный документ", SavePendingReport, CanSavePendingReport);
        }

        private void OpenReportSelectionForm(INetPluginCall call)
        {
            var objectId = call.PluginCall.IdVersion;
            var form = new ReportSelectionForm(objectId, call);
            form.ShowDialog();

            // Пользователь выбрал «сохранить в другой документ»: окна закрыты, остаётся плавающая панель.
            if (form.SaveRequested)
            {
                ReportSaveBar.ShowFor(call);
            }
        }

        // Пункт активен, только если есть отчёт, ожидающий сохранения, и выбранный объект принимает файл.
        // Сбой самой проверки (нет колонки, ошибка вызова) не блокирует пункт: причину покажет команда.
        private static bool CanSavePendingReport(INetPluginCall call)
        {
            ReportSaveBar.NotifySelection(call);

            if (PendingReport.Current == null || call?.PluginCall == null || call.PluginCall.IdVersion <= 0)
            {
                return false;
            }

            try
            {
                var target = LoodsmanFileUploader.GetTargetInfo(call, call.PluginCall.IdVersion);
                return target == null || target.RefusalReason(call.PluginCall.CheckOut) == null;
            }
            catch (Exception)
            {
                return true;
            }
        }

        private void SavePendingReport(INetPluginCall call)
        {
            var report = PendingReport.Current;
            if (report == null)
            {
                MessageBox.Show("Нет сформированного отчёта. Сначала сформируйте отчёт.", "Сохранить отчёт");
                return;
            }

            try
            {
                var idVersion = call.PluginCall.IdVersion;
                var target = LoodsmanFileUploader.GetTargetInfo(call, idVersion);
                var reason = target?.RefusalReason(call.PluginCall.CheckOut);
                if (reason != null)
                {
                    MessageBox.Show($"Сохранить нельзя: {reason}.", "Сохранить отчёт", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                var title = target?.Title ?? $"id {idVersion}";
                var question = $"Прикрепить файл «{report.FileName}» ({report.Data.Length} байт, сформирован {report.CreatedAt:HH:mm:ss}) к документу:\n{title}?";
                if (MessageBox.Show(question, "Сохранить отчёт", MessageBoxButton.OKCancel, MessageBoxImage.Question) != MessageBoxResult.OK)
                {
                    return;
                }

                LoodsmanFileUploader.UpFileById(call, idVersion, report.FileName, string.Empty, report.Data);
                MessageBox.Show($"Файл «{report.FileName}» добавлен к документу {title}.\nИзменения станут видны после сохранения рабочего проекта.", "Сохранить отчёт");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Сохранить отчёт: ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        public void OnConnectToDb(INetPluginCall call)
        {
        }

        public void OnCloseDb()
        {
        }

        public void PluginLoad()
        {
        }

        public void PluginUnload()
        {
        }
    }
}
