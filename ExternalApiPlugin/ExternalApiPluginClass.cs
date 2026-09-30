using Ascon.Plm.Loodsman.PluginSDK;
using System;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Отчеты#Выбрать отчёт", OpenReportSelectionForm, arg => arg?.PluginCall?.IdVersion > 0);
        }

        private void OpenReportSelectionForm(INetPluginCall call)
        {
            var objectId = call.PluginCall.IdVersion;
            using (var form = new ReportSelectionForm(objectId))
            {
                form.ShowDialog();
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
