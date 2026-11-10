using System;
using System.IO;
using System.Reflection;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace ExternalApiPlugin
{
    internal class ServerConfig
    {
        private const string FileName = "server-config.json";
        private const string DefaultGroupSpecificationEndpoint = "group-specifications/{versionId}";

        [JsonPropertyName("baseUrl")]
        public string BaseUrl { get; set; }

        [JsonPropertyName("specificationEndpoint")]
        public string SpecificationEndpoint { get; set; }

        // Ключа может не быть в конфигах, установленных до появления групповых отчётов: тогда остаётся значение по умолчанию.
        [JsonPropertyName("groupSpecificationEndpoint")]
        public string GroupSpecificationEndpoint { get; set; } = DefaultGroupSpecificationEndpoint;

        [JsonPropertyName("reportDownloadEndpoint")]
        public string ReportDownloadEndpoint { get; set; } = "reports/{reportId}";

        [JsonPropertyName("healthEndpoint")]
        public string HealthEndpoint { get; set; }

        [JsonPropertyName("timeoutSeconds")]
        public int TimeoutSeconds { get; set; } = 30;

        public Uri BuildReportUrl(long versionId, ReportType reportType)
        {
            string endpoint;
            switch (reportType)
            {
                case ReportType.SpecificationWithPZ:
                case ReportType.SpecificationWithoutPZ:
                    endpoint = SpecificationEndpoint;
                    break;
                case ReportType.GroupSpecificationWithPZ:
                case ReportType.GroupSpecificationWithoutPZ:
                    endpoint = GroupSpecificationEndpoint;
                    break;
                default:
                    throw new ArgumentOutOfRangeException(nameof(reportType), reportType, "Для этого типа отчёта нет эндпоинта на сервере");
            }

            var path = endpoint.Replace("{versionId}", versionId.ToString());
            var baseUri = new Uri(new Uri(BaseUrl), path);

            var withCustomerRepresentative = reportType == ReportType.SpecificationWithPZ
                || reportType == ReportType.GroupSpecificationWithPZ;
            var customerRepresentative = withCustomerRepresentative ? "true" : "false";
            var uriBuilder = new UriBuilder(baseUri)
            {
                Query = $"customerRepresentative={customerRepresentative}"
            };

            return uriBuilder.Uri;
        }

        public Uri BuildReportDownloadUrl(string reportId)
        {
            var path = ReportDownloadEndpoint.Replace("{reportId}", Uri.EscapeDataString(reportId));
            return new Uri(new Uri(BaseUrl), path);
        }

        public static ServerConfig Load()
        {
            var assemblyDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            var path = Path.Combine(assemblyDir ?? string.Empty, FileName);

            if (!File.Exists(path))
            {
                throw new FileNotFoundException($"Не найден конфиг сервера: {path}", path);
            }

            var json = File.ReadAllText(path);
            var config = JsonSerializer.Deserialize<ServerConfig>(json);

            if (config == null || string.IsNullOrWhiteSpace(config.BaseUrl) || string.IsNullOrWhiteSpace(config.SpecificationEndpoint))
            {
                throw new InvalidDataException($"Некорректный конфиг сервера: {path}");
            }

            // Явный null или пустая строка вместо ключа — откат к значению по умолчанию, загрузка не ломается.
            if (string.IsNullOrWhiteSpace(config.GroupSpecificationEndpoint))
            {
                config.GroupSpecificationEndpoint = DefaultGroupSpecificationEndpoint;
            }

            return config;
        }
    }
}
