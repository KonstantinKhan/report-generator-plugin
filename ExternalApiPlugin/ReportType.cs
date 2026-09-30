namespace ExternalApiPlugin
{
    internal enum ReportType
    {
        SpecificationWithPZ,
        SpecificationWithoutPZ,
        GroupSpecificationWithPZ,
        GroupSpecificationWithoutPZ,
        PurchasedItemsWithoutPZ,
        PurchasedItemsWithPZ,
        SpecificationsListWithoutPZ,
        SpecificationsListWithPZ
    }

    internal static class ReportTypeNames
    {
        public static string GetName(ReportType type) => type switch
        {
            ReportType.SpecificationWithPZ => "Спецификация изделия с ПЗ ГОСТ Р 2.106-2019",
            ReportType.SpecificationWithoutPZ => "Спецификация изделия без ПЗ ГОСТ Р 2.106-2019",
            ReportType.GroupSpecificationWithPZ => "Групповая спецификация с ПЗ ГОСТ 2.113-75",
            ReportType.GroupSpecificationWithoutPZ => "Групповая спецификация без ПЗ ГОСТ 2.113-75",
            ReportType.PurchasedItemsWithoutPZ => "Ведомость покупных изделий без ПЗ ГОСТ Р 2.106-2019",
            ReportType.PurchasedItemsWithPZ => "Ведомость покупных изделий с ПЗ ГОСТ Р 2.106-2019",
            ReportType.SpecificationsListWithoutPZ => "Ведомость спецификаций без ПЗ ГОСТ Р 2.106-2019",
            ReportType.SpecificationsListWithPZ => "Ведомость спецификаций с ПЗ ГОСТ Р 2.106-2019",
            _ => "Неизвестный тип отчёта"
        };

        public static string GetEndpoint(ReportType type) => type switch
        {
            ReportType.SpecificationWithPZ => "specification-with-pz",
            ReportType.SpecificationWithoutPZ => "specification-without-pz",
            ReportType.GroupSpecificationWithPZ => "group-specification-with-pz",
            ReportType.GroupSpecificationWithoutPZ => "group-specification-without-pz",
            ReportType.PurchasedItemsWithoutPZ => "purchased-items-without-pz",
            ReportType.PurchasedItemsWithPZ => "purchased-items-with-pz",
            ReportType.SpecificationsListWithoutPZ => "specifications-list-without-pz",
            ReportType.SpecificationsListWithPZ => "specifications-list-with-pz",
            _ => "unknown"
        };
    }
}
