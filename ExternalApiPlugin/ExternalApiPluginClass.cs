using Ascon.Plm.Loodsman.PluginSDK;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Внешний API#Тестовый запрос", OpenExternalApiForm, arg => true);
        }

        private void OpenExternalApiForm(INetPluginCall call)
        {
            using (var form = new ExternalApiForm())
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
