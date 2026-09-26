using Ascon.Plm.Loodsman.PluginSDK;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

namespace SampleNetPlugin
{
    [LoodsmanPlugin]
    public class FirstSampleClass : ILoodsmanNetPlugin
    {
        public FirstSampleClass()
        {
            _isAdmin = false;
        }

        private static bool _isAdmin;

        public void BindMenu(IMenuDefinition menu)
        {
            menu.AddMenuItem("Пример для SDK#Command", Command1, CheckCommand1);
        }

        private bool CheckCommand1(INetPluginCall arg)
        {
            if (arg != null)
            {
                if (arg.PluginCall.IdVersion != 0)
                    return true;
            }

            return false;
        }

        private void Command1(INetPluginCall obj)
        {
            System.Windows.Forms.MessageBox.Show($"IsAdmin={_isAdmin}");
        }

        public void OnCloseDb()
        {
            _isAdmin = false;
        }

        public void OnConnectToDb(INetPluginCall call)
        {
            if (call != null)
                _isAdmin = (int)call.RunMethod("IsAdmin") == 1;
        }

        public void PluginLoad()
        {
            System.Windows.Forms.MessageBox.Show("PluginLoad");
            _isAdmin = false;
        }

        public void PluginUnload()
        {
            System.Windows.Forms.MessageBox.Show("PluginUnload");
        }
    }
}
