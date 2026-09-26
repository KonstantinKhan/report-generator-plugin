using Microsoft.Win32;
using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.Devices;

namespace Ascon.Plm.Loodsman.FrameSDK
{
    [ComVisible(false)]
    public class ActiveXCtrlHelper
    {
        public static void RegasmRegisterControl(Type t)
        {
            GuardNullType(t, "t");
            GuardTypeIsControl(t);

            // Open the CLSID key of the control
            using (var keyCLSID = Registry.ClassesRoot.OpenSubKey(@"CLSID\" + t.GUID.ToString("B"), /*writable*/true))
            {
                RegistryKey subkey = null;

                // Set "InprocServer32" to register a 32-bit in-process server.
                // InprocServer32 = <path to 32-bit inproc server>
                // Ref: http://msdn.microsoft.com/en-us/library/ms683844.aspx
                subkey = keyCLSID.OpenSubKey("InprocServer32", /*writable*/true);
                if (subkey != null)
                    // .NET runtime engine (mscoree.dll) for .NET assemblies
                    subkey.SetValue(null, Environment.SystemDirectory + @"\mscoree.dll");

                // Create "Control" to identify it as an ActiveX Control.
                // Ref: http://msdn.microsoft.com/en-us/library/ms680056.aspx
                using (subkey = keyCLSID.CreateSubKey("Control")) { };

                // Create "TypeLib" to specify the typelib GUID associated with the class. 
                using (subkey = keyCLSID.CreateSubKey("TypeLib"))
                {
                    Guid libId = Marshal.GetTypeLibGuidForAssembly(t.Assembly);
                    subkey.SetValue("", libId.ToString("B"), RegistryValueKind.String);
                }


                // Create "Version" to specify the version of the control. 
                // Ref: http://msdn.microsoft.com/en-us/library/ms686568.aspx
                using (subkey = keyCLSID.CreateSubKey("Version"))
                {
                    int nMajor, nMinor;
                    Marshal.GetTypeLibVersionForAssembly(t.Assembly, out nMajor, out nMinor);
                    subkey.SetValue("", String.Format("{0}.{1}", nMajor, nMinor));
                }
            }

            // After base registration - need call Loodsman registration
            AddonRegister.RegisterFrame(t.GUID); // Loodsman registration
        }

        public static void RegasmUnregisterControl(Type t)
        {
            // Check the argument
            GuardNullType(t, "t");
            GuardTypeIsControl(t);

            // Delete Loodsman registration
            AddonRegister.UnRegisterFrame(t.GUID);

            // Delete the CLSID key of the control
            Registry.ClassesRoot.DeleteSubKeyTree(@"CLSID\" + t.GUID.ToString("B"));
        }

        private static void GuardTypeIsControl(Type t)
        {
            if (!typeof(Control).IsAssignableFrom(t))
            {
                throw new ArgumentException(
                    "Type argument must be a Windows Forms control.");
            }
        }

        private static void GuardNullType(Type t, String param)
        {
            if (t == null)
            {
                throw new ArgumentException("The CLR type must be specified.", param);
            }
        }

        /// <summary>
        /// Register tab handler and focus-related event handlers for the control and its 
        /// child controls.
        /// <summary>
        internal static void WireUpHandlers(Control ctrl, EventHandler ValidationHandler)
        {
            if (ctrl != null)
            {
                ctrl.KeyDown += new KeyEventHandler(TabHandler);
                ctrl.LostFocus += new EventHandler(ValidationHandler);

                if (ctrl.HasChildren)
                {
                    foreach (Control child in ctrl.Controls)
                    {
                        WireUpHandlers(child, ValidationHandler);
                    }
                }
            }
        }

        /// <summary>
        /// Handler of "Tab" and "Shift"+"Tab".
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private static void TabHandler(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Tab)
            {
                Control ctrl = sender as Control;
                var usrCtrl = GetParentUserControl(ctrl);

                var firstCtrl = usrCtrl.GetNextControl(null, true);
                while (firstCtrl != null && !firstCtrl.CanSelect)
                {
                    firstCtrl = usrCtrl.GetNextControl(firstCtrl, true);
                }

                //do
                //{
                //    firstCtrl = usrCtrl.GetNextControl(firstCtrl, true);
                //} while (firstCtrl != null && !firstCtrl.CanSelect);

                var lastCtrl = usrCtrl.GetNextControl(null, false);
                while (lastCtrl != null && !lastCtrl.CanSelect)
                {
                    lastCtrl = usrCtrl.GetNextControl(lastCtrl, false);
                }

                //do
                //{
                //    lastCtrl = usrCtrl.GetNextControl(lastCtrl, false);
                //} while (lastCtrl != null && lastCtrl.CanSelect);

                if (ctrl.Equals(lastCtrl) || ctrl.Equals(firstCtrl) ||
                    lastCtrl.Contains(ctrl) || firstCtrl.Contains(ctrl))
                {
                    var res = usrCtrl.SelectNextControl(ctrl, lastCtrl.Equals(usrCtrl.ActiveControl), true, true, true);
                    e.SuppressKeyPress = true;
                    e.Handled = res;
                }
            }
        }

        private static UserControl GetParentUserControl(Control ctrl)
        {
            if (ctrl == null)
                return null;

            do
            {
                ctrl = ctrl.Parent;
            } while (ctrl.Parent != null);

            if (ctrl != null)
                return (UserControl)ctrl;

            return null;
        }

        /// <summary>
        /// Handle the focus of the ActiveX control, including its child controls
        /// </summary>
        /// <param name="usrCtrl">the ActiveX control</param>
        internal static void HandleFocus(UserControl usrCtrl)
        {
            Keyboard keyboard = new Keyboard();
            if (keyboard.AltKeyDown)
            {
                // Handle accessor key
                HandleAccessorKey(usrCtrl.GetNextControl(null, true), usrCtrl);
            }
            else
            {
                // Move to the first control that can receive focus, taking into account 
                // the possibility that the user pressed <Shift>+<Tab>, in which case we 
                // need to start at the end and work backwards.
                for (Control ctrl =
                    usrCtrl.GetNextControl(null, !keyboard.ShiftKeyDown);
                    ctrl != null;
                    ctrl = usrCtrl.GetNextControl(ctrl, !keyboard.ShiftKeyDown))
                {
                    if (ctrl.Enabled && ctrl.CanSelect)
                    {
                        ctrl.Focus();
                        break;
                    }
                }
            }

        }

        private const int KEY_PRESSED = 0x1000;
        [DllImport("user32.dll")]
        static extern short GetKeyState(int nVirtKey);

        /// <summary>
        /// Get X in the accessor key "Alt + X"
        /// </summary>
        /// <returns></returns>
        private static int CheckForAccessorKey()
        {
            var keyboard = new Keyboard();
            if (keyboard.AltKeyDown)
            {
                for (int i = (int)Keys.A; i <= (int)Keys.Z; i++)
                {
                    if ((GetKeyState(i) != 0 && KEY_PRESSED != 0))
                    {
                        return i;
                    }
                }
            }
            return -1;
        }

        /// <summary>
        /// Check the accessor key, find the next selectable control that matches the 
        /// accessor key and give it the focus.
        /// </summary>
        private static void HandleAccessorKey(object sender, UserControl usrCtrl)
        {
            // Get X in the accessor key <Alt + X>
            int key = CheckForAccessorKey();
            if (key == -1) return;

            Control ctrl = usrCtrl.GetNextControl((Control)sender, false);

            do
            {
                ctrl = usrCtrl.GetNextControl(ctrl, true);
                if (ctrl != null &&
                    Control.IsMnemonic(Convert.ToChar(key), ctrl.Text) &&
                    !KeyConflict(Convert.ToChar(key), usrCtrl))
                {
                    // If we land on a non-selectable control then go to the next 
                    // control in the tab order.
                    if (!ctrl.CanSelect)
                    {
                        Control ctlAfterLabel = usrCtrl.GetNextControl(ctrl, true);
                        if (ctlAfterLabel != null && ctlAfterLabel.CanFocus)
                            ctlAfterLabel.Focus();
                    }
                    else
                    {
                        ctrl.Focus();
                    }
                    break;
                }
                // Loop until we hit the end of the tab order. If we have hit the end  
                // of the tab order we do not want to loop back because the parent 
                // form's controls come next in the tab order.
            } while (ctrl != null);
        }

        private static bool KeyConflict(char key, UserControl u)
        {
            bool flag = false;
            foreach (Control ctl in u.Controls)
            {
                if (Control.IsMnemonic(key, ctl.Text))
                {
                    if (flag)
                    {
                        return true;
                    }
                    flag = true;
                }
            }
            return false;
        }

    }
}
