using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Loodsman;
using PDMObjects;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using DataProvider;
using Ascon.Plm.Loodsman.FrameSDK;

namespace CSActiveX
{
    [ComVisible(true)]
    [Guid("15D1BDD9-F166-4A55-BD4B-95A1C87D2266")]
    [InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
    public interface IdgCSActiveXCtrl
    {
        void OnMessage(string msg);
    }

    [ComVisible(true)]
    [Guid("EF741D24-8BFC-4727-8160-4C7CC29ED487")]
    [InterfaceType(ComInterfaceType.InterfaceIsDual)]
    public interface IdgCSActiveXCtrlDisp
    {
        [DispId(1)]
        void OnMessage(string msg);
    }

    [ProgId("CSActiveX.FirstUserControl")]
    [Guid("1296C855-488F-44D5-9E15-96AD5341FE48")]
    [ComDefaultInterface(typeof(IdgCSActiveXCtrl))]
    //[ComSourceInterfaces(typeof(IdgCSActiveXCtrl))]
    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    public partial class UserControl1 : UserControl, IFrameInfo, ILoodsmanFrame, IdgCSActiveXCtrl
    {
        // CLSID категории фреймов Loodsman
        private static readonly Guid CATID_Frames = new Guid("{A975F281-B99C-466E-926E-BC2F08B45365}");
        private const string FramesCatDescription = "Loodsman frames";

        public UserControl1()
        {
            InitializeComponent();

            _modeButtons = new ToolStripButton[] { btnLargeIconMode, btnSmallIconMode, btnListMode, btnDetailsMode };
            toolStrip1.Renderer = new ButtonRenderer();
        }

        private class ButtonRenderer : ToolStripProfessionalRenderer
        {
            protected override void OnRenderButtonBackground(ToolStripItemRenderEventArgs e)
            {
                var btn = e.Item as ToolStripButton;
                if (btn != null && btn.CheckOnClick && btn.Checked)
                {
                    var bounds = new Rectangle(Point.Empty, e.Item.Size);
                    e.Graphics.FillRectangle(new SolidBrush(SystemColors.Highlight), bounds);
                }
                base.OnRenderButtonBackground(e);
            }
        }

        [ComRegisterFunction()]
        public static void RegisterClass(Type t)
        {
            ActiveXCtrlHelper.RegasmRegisterControl(t); // ActiveX registration
        }

        [ComUnregisterFunction()]
        public static void Unregister(Type t)
        {
            ActiveXCtrlHelper.RegasmUnregisterControl(t);
        }

        private IDBContext _context;
        private ILoodsmanApplication _loodsman;
        private SimpleAPI simpleApi;
        private IFrameContainer _container;


        #region ILoodsmanFrame
        public void OnFrameCreate(IDBContext Context, CoFrameContainer Container, object OwnerApplication)
        {
            _context = Context;
            _container = Container as IFrameContainer;
            _loodsman = OwnerApplication as ILoodsmanApplication;
            simpleApi = _loodsman.DataBase.Connection as SimpleAPI;
        }

        public void OnFrameDestroy()
        {
            if (!this.IsDisposed && !this.Disposing)
            {
                this.Dispose();
            }
        }

        public void OnFrameActivate()
        {
        }

        public void OnFrameDeactivate()
        {
            ;
        }

        private Guid IID_IPDMObject = Guid.Parse("E32BF2D4-529A-4566-88BF-6413B5642718");

        private string Foo(int p)
        {
            switch (p)
            {
                case 1:
                    return "Кб";
                case 2:
                    return "Мб";
                case 3:
                    return "Гб";
                default:
                    return "байт";
            }
        }
        private string FileSizeToString(int value)
        {
            var i = 0;
            if (value > 0)
            {
                while (value > 1024)
                {
                    i++;
                    if (i > 3)
                        break;
                    value = value / 1024;
                }

                if (i < 3)
                    return $"{value} {Foo(i)}";
                else
                    return "более 2 Гб";
            }
            return "более 2 Гб";
        }

        public void OnStartRefresh()
        {
            RefreshData();
        }

        public void OnFrameClear()
        {
            ;
        }

        public dynamic OnCustomEvent(int EventCode, object EventData)
        {
            return null;
        }

        public void OnLoadOptions(CoOptions AFrameOptions)
        {
            ;
        }

        public void OnSaveOptions(CoOptions AFrameOptions)
        {
            ;
        }
        #endregion

        [ComVisible(false)]
        public delegate void ClickEventHandler();
        public new event ClickEventHandler Click = null;
        void CSActiveXCtrl_Click(object sender, EventArgs e)
        {
            Click?.Invoke(); // Raise the new Click event.
        }

        public string HelloWorld()
        {
            return "Hello World";
        }

        #region IFrameInfo
        public string GetInTypes()
        {
            return $"{(int)ObjectCodes.C_OBJECT}";
        }

        public int GetOutType()
        {
            return (int)ObjectCodes.C_OBJECT;
        }

        public string GetFrameName()
        {
            return "Портирование фрейма Файлы";
        }

        public string GetFrameDescription()
        {
            return "Портирование фрейма";
        }

        public bool IsRootFrame()
        {
            return false;
        }
        #endregion

        public void OnMessage(string msg)
        {
            ;
        }

        protected override bool ProcessTabKey(bool forward)
        {
            return this.SelectNextControl(ActiveControl, forward, true, true, true);
        }

        [DllImport("User32.dll")]
        private static extern int SendMessage(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

        [SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.UnmanagedCode)]
        protected override void WndProc(ref Message m)
        {
            base.WndProc(ref m);

            const int WM_GETDLGCODE = 0x0087;
            const int WM_NEXTDLGCTL = 0x0028;
            const int WM_KEYDOWN = 0x0100;
            const int WM_KEYUP = 0x0101;

            const int DLGC_WANTARROWS = 0x0001;

            const int WM_SETFOCUS = 0x7;
            const int WM_PARENTNOTIFY = 0x210;
            //const int WM_DESTROY = 0x2;
            const int WM_LBUTTONDOWN = 0x201;
            const int WM_RBUTTONDOWN = 0x204;

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
            //else if (m.Msg == WM_DESTROY &&
            //    !this.IsDisposed && !this.Disposing)
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

            //base.WndProc(ref m);
        }

        private void RefreshData()
        {
            IPDMObject obj = null;
            var data = _container.ParentFrame.Content.Selected as IPDMData;

            var isPdmObject = data.ObjectCode == (int)ObjectCodes.C_OBJECT;
            if (isPdmObject)
            {
                obj = data as IPDMObject;

            }
            else if (data.ObjectCode == (int)ObjectCodes.C_LINK)
            {
                obj = (data as IPDMLink).ChildObject;
            }

            if (obj == null)
                return;

            var ds = simpleApi.GetDataSet("GetInfoAboutVersion", new object[] { "", "", "", obj.ID, 7 }) as IDataSet;

            listView1.Items.Clear();

            while (!ds.Eof)
            {
                var fSize = ds.FieldValue["_SIZE"];
                var dCreate = (DateTime)ds.FieldValue["_DATEOFCREATE"];
                var dModify = (DateTime)ds.FieldValue["_MODIFIED"];
                var row = new string[] { ds.FieldValue["_NAME"], $"{FileSizeToString(fSize)}", dCreate.ToString(), dModify.ToString() };
                listView1.Items.Add(new ListViewItem(row));
                ds.Next();
            }
        }

        private void toolStripButton7_Click(object sender, EventArgs e)
        {
            RefreshData();
        }

        private ToolStripButton[] _modeButtons;

        private void btnListViewMode_Click(object sender, EventArgs e)
        {
            var selectedBtn = sender as ToolStripButton;
            foreach (var btn in _modeButtons)
            {
                btn.Checked = (btn == selectedBtn);
            }

            switch (Convert.ToInt32(selectedBtn.Tag))
            {
                case 1:
                    listView1.View = View.LargeIcon;
                    break;
                case 2:
                    listView1.View = View.SmallIcon;
                    break;
                case 3:
                    listView1.View = View.List;
                    break;
                case 4:
                    listView1.View = View.Details;
                    break;
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
