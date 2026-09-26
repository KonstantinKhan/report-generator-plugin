using System.Windows;
using System.Windows.Controls;

namespace CSActiveXSample
{
    /// <summary>
    /// Interaction logic for UserControl1.xaml
    /// </summary>
    public partial class UserControl1 : Grid
    {
        public UserControl1()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Hello from WPF!");
        }
    }
}
