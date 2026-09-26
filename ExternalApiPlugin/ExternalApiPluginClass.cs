using Ascon.Plm.Loodsman.PluginSDK;
using System;
using System.Net.Http;
using System.Windows.Forms;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        // Открытый метеозапрос без ключа — координаты Москвы, только для проверки связи.
        private const string ApiUrl = "https://api.open-meteo.com/v1/forecast?latitude=55.7558&longitude=37.6176&current_weather=true";

        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Внешний API#Тестовый запрос", CallExternalApi, arg => true);
        }

        private void CallExternalApi(INetPluginCall call)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    var response = client.GetStringAsync(ApiUrl).Result;
                    MessageBox.Show(response, "Ответ внешнего API");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка запроса к внешнему API");
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
