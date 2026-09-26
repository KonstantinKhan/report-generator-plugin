using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.Integration;
using System.Windows.Input;

namespace Ascon.Plm.Loodsman.FrameSDK
{
    /// <summary>
    /// Класс необходим для корректировки нажатия клавиш со стрелками в 
    /// </summary>
    public class CommonElementHost: ElementHost
    {
        protected override bool IsInputKey(Keys keyData)
        {
            switch (keyData)
            {
                case Keys.Left:
                case Keys.Right:
                case Keys.Up:
                case Keys.Down:
                    return true;
            }
            return base.IsInputKey(keyData);
        }

        protected override void OnKeyDown(System.Windows.Forms.KeyEventArgs e)
        {
            var element = Keyboard.FocusedElement;
            Key key = 0;
            var routedEvent = Keyboard.KeyDownEvent;
            switch (e.KeyCode)
            {
                case Keys.Left:
                    key = Key.Left;
                    break;
                case Keys.Right:
                    key = Key.Right;
                    break;
                case Keys.Up:
                    key = Key.Up;
                    break;
                case Keys.Down:
                    key = Key.Down;
                    break;
            }
            if (key != 0)
            {
                element.RaiseEvent(new System.Windows.Input.KeyEventArgs(Keyboard.PrimaryDevice, Keyboard.PrimaryDevice.ActiveSource, 0, key)
                {
                    RoutedEvent = routedEvent
                });
                e.Handled = true;
            }
            else
                base.OnKeyDown(e);
        }
    }
}
