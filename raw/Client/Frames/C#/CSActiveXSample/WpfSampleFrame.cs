using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Ascon.Plm.Loodsman.FrameSDK;
using Loodsman;
using System.Runtime.InteropServices;
using System.Windows.Forms.Integration;
using PDMObjects;

namespace CSActiveXSample
{
    [Guid("43B70341-31F5-49A9-A102-A494E8CBA171"), ComVisible(true), ClassInterface(ClassInterfaceType.None)]
    public partial class WpfSampleFrame : AsconCustomUserControl, IFrameInfo, ILoodsmanFrame
    {
        public WpfSampleFrame()
        {
            InitializeComponent();
        }

        #region registration
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

        #endregion registration

        private void FirstWpfUserControl_Load(object sender, EventArgs e)
        {
            _ctrlHost = new CommonElementHost();
            _ctrlHost.Dock = DockStyle.Fill;

            Controls.Add(_ctrlHost);
            var wpfCtrl = new UserControl1();
            wpfCtrl.InitializeComponent();
            _ctrlHost.Child = wpfCtrl;
        }

        private ElementHost _ctrlHost;

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
            return "Тестирование WPF-фрейма";
        }

        public string GetFrameDescription()
        {
            return "Тестирование WPF-фрейма";
        }

        public bool IsRootFrame()
        {
            return false;
        }

        #endregion IFrameInfo

        #region ILoodsmanFrame
        public void OnFrameCreate(IDBContext Context, CoFrameContainer Container, object OwnerApplication)
        {
            
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
