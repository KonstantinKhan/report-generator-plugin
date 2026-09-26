using System;

namespace Ascon.Plm.Loodsman.FrameSDK
{
    internal static class AddonRegister
    {
        // CLSID категории фреймов Loodsman
        private static readonly Guid CATID_Frames = new Guid("{A975F281-B99C-466E-926E-BC2F08B45365}");
        private const string FramesCatDescription = "Loodsman frames";

        // CLSID категории сервисов Loodsman
        private static readonly Guid CATID_Services = new Guid("{A00C228B-183F-434B-A99B-9FFF6F267988}");
        private const string ServicesCatDescription = "Loodsman services";

        private static readonly Guid CLSID_StdComponentCategoriesMgr = new Guid("{0002e005-0000-0000-c000-000000000046}");

        static void RegisterClass(Guid classGuid, Guid catId, string catDesc)
        {
            var register = Activator.CreateInstance(Type.GetTypeFromCLSID(CLSID_StdComponentCategoriesMgr)) as ICatRegister;

            var cat = new CATEGORYINFO { catid = catId, lcid = 0x419, szDescription = catDesc };
            register.RegisterCategories(1, new[] { cat });
            register.RegisterClassImplCategories(ref classGuid, 1, new[] { catId });
        }

        static void UnRegisterClass(Guid classGuid, Guid catId)
        {
            var register = Activator.CreateInstance(Type.GetTypeFromCLSID(CLSID_StdComponentCategoriesMgr)) as ICatRegister;
            register.UnRegisterClassImplCategories(ref classGuid, 1, new[] { catId });
        }

        public static void RegisterFrame(Guid classGuid)
        {
            RegisterClass(classGuid, CATID_Frames, FramesCatDescription);
        }

        public static void RegisterService(Guid classGuid)
        {
            RegisterClass(classGuid, CATID_Services, ServicesCatDescription);
        }

        public static void UnRegisterFrame(Guid classGuid)
        {
            UnRegisterClass(classGuid, CATID_Frames);
        }

        public static void UnRegisterService(Guid classGuid)
        {
            UnRegisterClass(classGuid, CATID_Services);
        }
    }
}
