using System;
using Ascon.Plm.Loodsman.PluginSDK;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace ExternalApiPlugin
{
    internal class ReportSelectionForm : Window
    {
        private readonly long _objectId;
        private readonly INetPluginCall _call;

        public bool SaveRequested { get; private set; }

        public ReportSelectionForm(long objectId, INetPluginCall call)
        {
            _objectId = objectId;
            _call = call;

            Title = "Выбрать отчёт";
            Width = 560;
            Height = 500;
            WindowStartupLocation = WindowStartupLocation.CenterScreen;
            FontFamily = new FontFamily("Segoe UI");
            FontSize = 13;

            var scrollViewer = new ScrollViewer
            {
                VerticalScrollBarVisibility = ScrollBarVisibility.Auto,
                Padding = new Thickness(16)
            };

            var stackPanel = new StackPanel
            {
                Orientation = Orientation.Vertical
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
                    Content = ReportTypeNames.GetName(reportType),
                    Padding = new Thickness(12, 8, 12, 8),
                    Height = 40,
                    Margin = new Thickness(0, 0, 0, 8)
                };
                button.Click += (s, e) => OpenReport(reportType);
                stackPanel.Children.Add(button);
            }

            scrollViewer.Content = stackPanel;
            Content = scrollViewer;
        }

        private void OpenReport(ReportType reportType)
        {
            var form = new ExternalApiForm(_objectId, reportType, _call);
            form.ShowDialog();

            if (form.SaveRequested)
            {
                SaveRequested = true;
                Close();
            }
        }
    }
}
