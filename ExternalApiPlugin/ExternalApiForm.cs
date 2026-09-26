using System;
using System.Net;
using System.Net.Http;
using System.Windows.Forms;

namespace ExternalApiPlugin
{
    internal class ExternalApiForm : Form
    {
        // TODO: временно — локальный тестовый сервер (tools/test_server.py), интернет с этой машины закрыт.
        private const string ApiBaseUrl = "http://127.0.0.1:8080/";

        private readonly long _objectId;
        private readonly Button _requestButton;
        private readonly TextBox _resultBox;

        public ExternalApiForm(long objectId)
        {
            _objectId = objectId;

            Text = "Запрос к внешнему API";
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
                // .NET Framework может не поднять TLS 1.2 сам по себе в хостовом процессе клиента.
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                var url = $"{ApiBaseUrl}?objectId={_objectId}";
                using (var client = new HttpClient())
                {
                    var response = await client.GetStringAsync(url);
                    _resultBox.Text = $"Id объекта: {_objectId}\r\n\r\nОтвет сервера:\r\n{response}";
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
