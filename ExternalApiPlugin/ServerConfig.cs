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

        [JsonPropertyName("baseUrl")]
        public string BaseUrl { get; set; }

        [JsonPropertyName("specificationEndpoint")]
        public string SpecificationEndpoint { get; set; }

        [JsonPropertyName("reportDownloadEndpoint")]
        public string ReportDownloadEndpoint { get; set; } = "reports/{reportId}";

        [JsonPropertyName("healthEndpoint")]
        public string HealthEndpoint { get; set; }

        [JsonPropertyName("timeoutSeconds")]
        public int TimeoutSeconds { get; set; } = 30;

        public Uri BuildSpecificationUrl(long versionId, ReportType reportType = ReportType.SpecificationWithPZ)
        {
            var path = SpecificationEndpoint.Replace("{versionId}", versionId.ToString());
            var baseUri = new Uri(new Uri(BaseUrl), path);

            var customerRepresentative = reportType == ReportType.SpecificationWithPZ ? "true" : "false";
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

            return config;
        }
    }
}
