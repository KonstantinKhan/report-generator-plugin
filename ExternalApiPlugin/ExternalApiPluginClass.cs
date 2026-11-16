using Ascon.Plm.Loodsman.PluginSDK;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Отчеты#Сформировать отчёт", OpenReportSelectionForm, arg =>
            {
                ReportSaveBar.NotifySelection(arg);
                return arg?.PluginCall?.IdVersion > 0;
            });
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
