using System;
using System.Windows.Forms;

namespace ExternalApiPlugin
{
    internal class ReportSelectionForm : Form
    {
        private readonly long _objectId;

        public ReportSelectionForm(long objectId)
        {
            _objectId = objectId;

            Text = "Выбрать отчёт";
            Width = 480;
            Height = 400;
            StartPosition = FormStartPosition.CenterScreen;
            FormBorderStyle = FormBorderStyle.FixedDialog;
            MaximizeBox = false;

            var panel = new TableLayoutPanel
            {
                Dock = DockStyle.Fill,
                Padding = new Padding(12),
                AutoScroll = true,
                ColumnCount = 1
            };

            var reportTypes = new[]
            {
                ReportType.SpecificationWithPZ,
                ReportType.SpecificationWithoutPZ,
                ReportType.GroupSpecificationWithPZ,
                ReportType.GroupSpecificationWithoutPZ,
                ReportType.PurchasedItemsWithoutPZ,
                ReportType.PurchasedItemsWithPZ,
                ReportType.SpecificationsListWithoutPZ,
                ReportType.SpecificationsListWithPZ
            };

            foreach (var reportType in reportTypes)
            {
                var button = new Button
                {
                    Text = ReportTypeNames.GetName(reportType),
                    Height = 40,
                    Dock = DockStyle.Top,
                    Margin = new Padding(0, 4, 0, 4)
                };
                button.Click += (s, e) => OpenReport(reportType);
                panel.Controls.Add(button);
            }

            Controls.Add(panel);
        }

        private void OpenReport(ReportType reportType)
        {
            using (var form = new ExternalApiForm(_objectId, reportType))
            {
                form.ShowDialog();
            }
        }
    }
}
