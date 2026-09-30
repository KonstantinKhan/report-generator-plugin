using Ascon.Plm.Loodsman.PluginSDK;

namespace ExternalApiPlugin
{
    [LoodsmanPlugin]
    public class ExternalApiPluginClass : ILoodsmanNetPlugin
    {
        public void BindMenu(IMenuDefinition menu)
        {
            var enabledCondition = (arg) => arg?.PluginCall?.IdVersion > 0;

            menu.AddMenuItem("Отчеты#Спецификация с ПЗ",
                call => OpenReportForm(call, ReportType.SpecificationWithPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Спецификация без ПЗ",
                call => OpenReportForm(call, ReportType.SpecificationWithoutPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Групповая спецификация с ПЗ",
                call => OpenReportForm(call, ReportType.GroupSpecificationWithPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Групповая спецификация без ПЗ",
                call => OpenReportForm(call, ReportType.GroupSpecificationWithoutPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Ведомость покупных изделий без ПЗ",
                call => OpenReportForm(call, ReportType.PurchasedItemsWithoutPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Ведомость покупных изделий с ПЗ",
                call => OpenReportForm(call, ReportType.PurchasedItemsWithPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Ведомость спецификаций без ПЗ",
                call => OpenReportForm(call, ReportType.SpecificationsListWithoutPZ),
                enabledCondition);
            menu.AddMenuItem("Отчеты#Ведомость спецификаций с ПЗ",
                call => OpenReportForm(call, ReportType.SpecificationsListWithPZ),
                enabledCondition);
        }

        private void OpenReportForm(INetPluginCall call, ReportType reportType)
        {
            var objectId = call.PluginCall.IdVersion;
            using (var form = new ExternalApiForm(objectId, reportType))
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
