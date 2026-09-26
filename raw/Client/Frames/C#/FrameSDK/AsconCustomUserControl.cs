using System;
using System.ComponentModel;
using System.Windows.Forms;
using System.Runtime.InteropServices;

namespace Ascon.Plm.Loodsman.FrameSDK
{
    public partial class AsconCustomUserControl: UserControl
    {
        public AsconCustomUserControl()
        {
            InitializeComponent();

            this.LostFocus += new EventHandler(CustomUserControl_LostFocus);
            // These functions are used to handle Tab-stops for the ActiveX 
            // control (including its child controls) when the control is 
            // hosted in a container.
            ControlAdded += new ControlEventHandler(CustomUserControl_ControlAdded);
        }

        private void CustomUserControl_LostFocus(object sender, EventArgs e)
        {
            ActiveXCtrlHelper.HandleFocus(this);
        }

        protected void CustomUserControl_ControlAdded(object sender, ControlEventArgs e)
        {
            // Register tab handler and focus-related event handlers for 
            // the control and its child controls.
            ActiveXCtrlHelper.WireUpHandlers(e.Control, ValidationHandler);
        }

        // Ensures that the Validating and Validated events fire properly
        internal void ValidationHandler(object sender, System.EventArgs e)
        {
            if (ContainsFocus)
                return;

            OnLeave(e); // Raise Leave event

            if (CausesValidation)
            {
                CancelEventArgs validationArgs = new CancelEventArgs();
                OnValidating(validationArgs);

                if (validationArgs.Cancel && ActiveControl != null)
                    ActiveControl.Focus();
                else
                    OnValidated(e); // Raise Validated event
            }
        }

        [DllImport("User32.dll")]
        protected static extern int SendMessage(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

        protected override void WndProc(ref Message m)
        {
            const int WM_GETDLGCODE = 0x0087;
            const int WM_NEXTDLGCTL = 0x0028;
            const int WM_KEYDOWN = 0x0100;
            const int WM_KEYUP = 0x0101;

            const int DLGC_WANTARROWS = 0x0001;

            const int WM_SETFOCUS = 0x7;
            const int WM_PARENTNOTIFY = 0x210;
            const int WM_DESTROY = 0x2;
            const int WM_LBUTTONDOWN = 0x201;
            const int WM_RBUTTONDOWN = 0x204;

            base.WndProc(ref m);

            if (m.Msg == WM_SETFOCUS)
            {
                // Raise Enter event
                this.OnEnter(System.EventArgs.Empty);
            }
            else if (m.Msg == WM_PARENTNOTIFY && (
                m.WParam.ToInt32() == WM_LBUTTONDOWN ||
                m.WParam.ToInt32() == WM_RBUTTONDOWN))
            {
                if (!this.ContainsFocus)
                {
                    // Raise Enter event
                    this.OnEnter(System.EventArgs.Empty);
                }
            }

            // PLM - 10629
            // this.Dispose(); отключено
            // WM_DESTROY вызывается для разрушения Handle контрола, при перетаскивании фрейма
            // позже вызывается WM_CREATE для создания нового Handle контрола
            //
            //else if (m.Msg == WM_DESTROY &&
            //    !IsDisposed && !Disposing)
            //{
            //    // Used to ensure the cleanup of the control
            //    this.Dispose();
            //}

            else if (m.Msg == WM_GETDLGCODE)
            {
                m.Result = (IntPtr)((int)DLGC_WANTARROWS | m.Result.ToInt32());
                //return;
            }
            else if (m.Msg == WM_NEXTDLGCTL)
            {
                Control ac = FormUtils.GetActiveControl(this);
                SendMessage(ac.Handle, m.Msg, m.WParam, m.LParam);
                return;
            }
            else if (m.Msg == WM_KEYDOWN || m.Msg == WM_KEYUP)
            {
                int keyCode = (int)m.WParam;
                if (keyCode == (int)Keys.Left || keyCode == (int)Keys.Right ||
                    keyCode == (int)Keys.Up || keyCode == (int)Keys.Down)
                {
                    Control activeControl = FormUtils.GetActiveControl(this);
                    SendMessage(activeControl.Handle, m.Msg, m.WParam, m.LParam);
                    return;
                }
            }
        }

        public static class FormUtils
        {
            public static Control GetActiveControl(Control ac)
            {
                while (ac != null && ac is IContainerControl)
                    ac = ((IContainerControl)ac).ActiveControl;
                return ac;
            }
        }
    }
}
