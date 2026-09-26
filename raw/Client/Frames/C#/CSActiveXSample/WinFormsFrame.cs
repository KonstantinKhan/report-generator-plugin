using System;
using Loodsman;
using Ascon.Plm.Loodsman.FrameSDK;
using PDMObjects;
using System.Runtime.InteropServices;

namespace CSActiveXSample
{
    [Guid("8243E743-F4D2-40FB-8496-F815806B05EC")]
    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    public partial class WinFormsFrame: AsconCustomUserControl, IFrameInfo, ILoodsmanFrame
    {
        public WinFormsFrame()
        {
            InitializeComponent();

            // For the Click event that is re-defined.
            //base.Click += new EventHandler(UserControl_Click);
        }

        [ComRegisterFunction()]
        public static void RegisterClass(Type t)
        {
            ActiveXCtrlHelper.RegasmRegisterControl(t);
        }

        [ComUnregisterFunction()]
        public static void Unregister(Type t)
        {
            ActiveXCtrlHelper.RegasmUnregisterControl(t);
        }

        //[ComVisible(false)]
        //public delegate void ClickEventHandler();
        //public new event ClickEventHandler Click = null;
        //private void UserControl_Click(object sender, EventArgs e)
        //{
        //    Click?.Invoke(); // Raise the new Click event.
        //}

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
            return "Первый фрейм";
        }

        public string GetFrameDescription()
        {
            return "Test";
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
