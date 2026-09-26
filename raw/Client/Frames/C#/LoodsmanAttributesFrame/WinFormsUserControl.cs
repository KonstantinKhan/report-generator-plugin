using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Windows.Input;
using System.Windows.Forms.Integration;
using Loodsman;
using PDMObjects;
using System.Windows;
using DataProvider;
using Ascon.Plm.Loodsman.FrameSDK;

namespace LoodsmanAttributesFrame
{
    [Guid("D79CD3AC-75B5-4F86-AE58-5A4F72B92743")]
    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    public partial class WinFormsUserControl : AsconCustomUserControl, IFrameInfo, ILoodsmanFrame
    {
        public WinFormsUserControl()
        {
            InitializeComponent();

            // For the Click event that is re-defined.
            //base.Click += new EventHandler(UserControl2_Click);
        }

        [ComVisible(false)]
        public delegate void ClickEventHandler();
        public new event ClickEventHandler Click = null;
        private void UserControl2_Click(object sender, EventArgs e)
        {
            Click?.Invoke(); // Raise the new Click event.
        }

        #region Registration

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
        #endregion

        private ElementHost _ctrlHost;        
        private AttrValueVM _attrValueVM;

        private void UserControl2_Load(object sender, EventArgs e)
        {
            // ViewModel
            _attrValueVM = new AttrValueVM(_context, _loodsman, _container);

            _ctrlHost = new CommonElementHost();
            _ctrlHost.Dock = DockStyle.Fill;

            Controls.Add(_ctrlHost);

            // View
            var view = new WpfUserControl();
            view.InitializeComponent();
            view.DataContext = _attrValueVM;

            _ctrlHost.Child = view;
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
            return "Портирование фейма Атрибуты (WPF)";
        }

        public string GetFrameDescription()
        {
            return "Фрейм Атрибуты на WPF";
        }

        public bool IsRootFrame()
        {
            return false;
        }
        #endregion IFrameInfo

        private IDBContext _context;
        private IFrameContainer _container;
        private ILoodsmanApplication _loodsman;

        #region ILoodsmanFrame
        public void OnFrameCreate(IDBContext Context, CoFrameContainer Container, object OwnerApplication)
        {
            _context = Context;
            _container = Container as IFrameContainer;
            _loodsman = OwnerApplication as ILoodsmanApplication;
        }

        public void OnFrameDestroy()
        {
        }

        public void OnFrameActivate()
        {
        }

        public void OnFrameDeactivate()
        {

        }

        public void OnStartRefresh()
        {
            _attrValueVM.RefreshData();
        }

        public void OnFrameClear()
        {
        }

        public dynamic OnCustomEvent(int EventCode, object EventData)
        {
            return null;
        }

        public void OnLoadOptions(CoOptions AFrameOptions)
        {
        }

        public void OnSaveOptions(CoOptions AFrameOptions)
        {
        }
        #endregion ILoodsmanFrame

    }

}
