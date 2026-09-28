using Ascon.Plm.Loodsman.PluginSDK;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Отчёты#Выбрать отчёт", OpenExternalApiForm, arg => arg?.PluginCall?.IdVersion > 0);
        }

        private void OpenExternalApiForm(INetPluginCall call)
        {
            var objectId = call.PluginCall.IdVersion;
            var form = new ExternalApiForm(objectId);
            form.ShowDialog();
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
