using System;
using System.Net;
using System.Net.Http;
using System.Windows.Forms;

namespace ExternalApiPlugin
{
    internal class ExternalApiForm : Form
    {
        private readonly long _objectId;
        private readonly ReportType _reportType;
        private readonly Button _requestButton;
        private readonly TextBox _resultBox;

        public ExternalApiForm(long objectId, ReportType reportType)
        {
            _objectId = objectId;
            _reportType = reportType;

            Text = $"Генерация отчёта: {ReportTypeNames.GetName(reportType)}";
            Width = 480;
            Height = 340;
            StartPosition = FormStartPosition.CenterScreen;

            var idLabel = new Label
            {
                Text = $"Id выделенного объекта: {objectId}",
                Left = 12,
                Top = 12,
                Width = 440,
                AutoSize = false
            };

            _requestButton = new Button { Text = "Отправить на сервер", Left = 12, Top = 36, Width = 160 };
            _requestButton.Click += RequestButton_Click;

            _resultBox = new TextBox
            {
                Left = 12,
                Top = 72,
                Width = 440,
                Height = 220,
                Multiline = true,
                ReadOnly = true,
                ScrollBars = ScrollBars.Vertical
            };

            Controls.Add(idLabel);
            Controls.Add(_requestButton);
            Controls.Add(_resultBox);
        }

        private async void RequestButton_Click(object sender, EventArgs e)
        {
            _requestButton.Enabled = false;
            _resultBox.Text = "Запрос...";
            try
            {
                if (_reportType != ReportType.SpecificationWithoutPZ)
                {
                    _resultBox.Text = $"{ReportTypeNames.GetName(_reportType)}\r\n\r\nЭтот отчёт находится в процессе разработки.";
                    return;
                }

                // .NET Framework может не поднять TLS 1.2 сам по себе в хостовом процессе клиента.
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                var config = ServerConfig.Load();
                var url = config.BuildSpecificationUrl(_objectId);

                using (var client = new HttpClient { Timeout = TimeSpan.FromSeconds(config.TimeoutSeconds) })
                using (var response = await client.PostAsync(url, null))
                {
                    var body = await response.Content.ReadAsStringAsync();
                    _resultBox.Text = $"Id объекта: {_objectId}\r\n\r\nHTTP {(int)response.StatusCode} {response.ReasonPhrase}\r\n\r\nОтвет сервера:\r\n{body}";
                }
            }
            catch (Exception ex)
            {
                _resultBox.Text = ex.ToString();
            }
            finally
            {
                _requestButton.Enabled = true;
            }
        }
    }
}
