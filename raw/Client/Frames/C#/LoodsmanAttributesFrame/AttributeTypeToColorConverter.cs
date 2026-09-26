using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Markup;

namespace LoodsmanAttributesFrame
{
    public class AttributeTypeToColorConverter : MarkupExtension, IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is AttrValue attrValue && targetType == typeof(System.Windows.Media.Brush))
            {
                if (attrValue.IsSystem)
                    return SystemColors.GrayTextBrush;
                if (attrValue.IsObligatory)
                    return System.Windows.Media.Brushes.Maroon;

                return System.Windows.Media.Brushes.Black;
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return this;
        }
    }
}
