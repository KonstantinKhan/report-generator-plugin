using System;
using System.Net;
using System.Net.Http;
using System.Windows.Forms;

namespace ExternalApiPlugin
{
    internal class ExternalApiForm : Form
    {
        // TODO: временно — локальный тестовый сервер (tools/test_server.py), интернет с этой машины закрыт.
        private const string ApiUrl = "http://127.0.0.1:8080/";

        private readonly Button _requestButton;
        private readonly TextBox _resultBox;

        public ExternalApiForm()
        {
            Text = "Запрос к внешнему API";
            Width = 480;
            Height = 320;
            StartPosition = FormStartPosition.CenterScreen;

            _requestButton = new Button { Text = "Запросить погоду", Left = 12, Top = 12, Width = 160 };
            _requestButton.Click += RequestButton_Click;

            _resultBox = new TextBox
            {
                Left = 12,
                Top = 48,
                Width = 440,
                Height = 220,
                Multiline = true,
                ReadOnly = true,
                ScrollBars = ScrollBars.Vertical
            };

            Controls.Add(_requestButton);
            Controls.Add(_resultBox);
        }

        private async void RequestButton_Click(object sender, EventArgs e)
        {
            _requestButton.Enabled = false;
            _resultBox.Text = "Запрос...";
            try
            {
                // .NET Framework может не поднять TLS 1.2 сам по себе в хостовом процессе клиента.
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                using (var client = new HttpClient())
                {
                    var response = await client.GetStringAsync(ApiUrl);
                    _resultBox.Text = response;
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
