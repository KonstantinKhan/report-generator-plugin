using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LoodsmanAttributesFrame
{
    /// <summary>
    /// Interaction logic for UserControl1.xaml
    /// </summary>
    public partial class WpfUserControl : Grid
    {
        public WpfUserControl()
        {
            InitializeComponent();
            DataContextChanged += OnDataContextChanged;
        }

        private AttrValueVM _attrView;

        private void OnDataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (DataContext is AttrValueVM attrValueVM)
            {
                _attrView = attrValueVM;
                _attrView.AttrValues.CollectionChanged += AttrValues_CollectionChanged;
                CollectionViewSource.GetDefaultView(_attrView.AttrValues).Filter += new Predicate<object>(CustomFilter);
            }
        }

        private bool CustomFilter(object o)
        {
            if (o is AttrValue item)
            {
                //var res = true;
                if (miShowService.IsChecked == false && item.IsSystem)
                    return false;
                if (miShowStateAndQuantity.IsChecked == false && (item.IsState || item.IsQuantity))
                    return false;
            }
            return true;
        }

        private void AttrValues_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            Sorted(CollectionViewSource.GetDefaultView(_attrView.AttrValues));
        }

        private void Sorted(ICollectionView view, bool needClear = false)
        {
            if (needClear)
                view.SortDescriptions.Clear();

            if (view.SortDescriptions.Count == 0)
            { 
                
                view.SortDescriptions.Add(new SortDescription("IsState", ListSortDirection.Ascending));
                view.SortDescriptions.Add(new SortDescription("IsQuantity", ListSortDirection.Ascending));
                if (_attrView.IsShowRequiredFirst)
                    view.SortDescriptions.Add(new SortDescription("IsObligatory", ListSortDirection.Descending));

                view.SortDescriptions.Add(new SortDescription("Name", ListSortDirection.Ascending));
            }
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (sender is FrameworkElement btn)
            {
                btn.ContextMenu.IsOpen = true;
                btn.ContextMenu.Placement = System.Windows.Controls.Primitives.PlacementMode.Bottom;
                var parent = (UIElement)btn.Parent;
                btn.ContextMenu.PlacementTarget = parent;
                e.Handled = true;
            }
        }

        private void ShowRequiredFirstClick(object sender, RoutedEventArgs e)
        {
            Sorted(CollectionViewSource.GetDefaultView(_attrView.AttrValues), true);
        }

        private void ShowServiceClick(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(_attrView.AttrValues).Refresh();
        }

        private void ShowStateAndQuantityClick(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(_attrView.AttrValues).Refresh();
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            var dlg = new TestWindow();

            var interop = new WindowInteropHelper(dlg);
            interop.EnsureHandle();
            interop.Owner = (IntPtr)_attrView.LoodsmanApp.AppHandle;

            dlg.ShowInTaskbar = false;
            dlg.WindowStartupLocation = WindowStartupLocation.CenterOwner;
            dlg.ShowDialog();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Button Click");
        }
    }
}
