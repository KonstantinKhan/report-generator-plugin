unit AddonsRegister;

interface

uses Windows, ActiveX, ComObj, ComServ;

const
  // CLSID категории фреймов Loodsman
  CATID_FRAMES: TGUID = '{A975F281-B99C-466E-926E-BC2F08B45365}';
  // CLSID категории фреймов диалога создания/свойств объектов Loodsman
  CATID_DIALOG_FRAMES: TGUID = '{A95A9F8A-23F9-4375-ABCB-EDA3353927B0}';
  // CLSID категории сервисов Loodsman
  CATID_SERVICES: TGUID = '{A00C228B-183F-434B-A99B-9FFF6F267988}';

  FramesCatDescription: WideString = 'Loodsman frames';
  DialogFramesCatDescription: WideString = 'Loodsman object dialog frames';
  ServicesCatDescription: WideString = 'Loodsman services';

function RegisterFrames(AFrames: array of TGUID; ALocale: Cardinal = $419): HRESULT;
function UnRegisterFrames(AFrames: array of TGUID): HRESULT;

function RegisterDialogFrames(AFrames: array of TGUID; ALocale: Cardinal = $419): HRESULT;
function UnRegisterDialogFrames(AFrames: array of TGUID): HRESULT;

function RegisterServices(AServices: array of TGUID; ALocale: Cardinal = $419): HRESULT;
function UnRegisterServices(AServices: array of TGUID): HRESULT;

function RegisterAddons(AAddons: array of TGUID; ACatID: TGUID; ACatName: string;
  ALocale: Cardinal = $419): HRESULT;
function UnRegisterAddons(AAddons: array of TGUID; ACatID: TGUID): HRESULT;

implementation

function RegisterAddons(AAddons: array of TGUID; ACatID: TGUID; ACatName: string;
  ALocale: Cardinal = $419): HRESULT;
var
  Cat           : ICatRegister;
  ResultInstance: HResult;
  CatPluginsINFO: TCATEGORYINFO;
  i             : integer;
  p             : WideString;
begin
  Result := S_OK;
  try
    CoInitialize(nil);
    try
      ComServer.UpdateRegistry(True);
      ResultInstance := CoCreateInstance(CLSID_StdComponentCategoryMgr, nil,
        CLSCTX_INPROC_SERVER, ICatRegister, Cat);
      if Succeeded(ResultInstance) then
      begin
        CatPluginsINFO.catid := ACatID;
        CatPluginsINFO.lcid  := ALocale;

        p := ACatName + #0;
        move(p[1], CatPluginsINFO.szDescription, 2 * length(p));

        OleCheck(Cat.RegisterCategories(1, @CatPluginsINFO));

        for i := low(AAddons) to high(AAddons) do
        begin
          try
            OleCheck(Cat.RegisterClassImplCategories(AAddons[i], 1, @ACatID));
          except
            Continue;
          end;
        end;

      end;
    finally
      CoUninitialize;
    end;
  except
    Result := E_FAIL;
  end;
end;

function UnRegisterAddons(AAddons: array of TGUID; ACatID: TGUID): HRESULT;
var
  CatPlugins    : ICatRegister;
  ResultInstance: HResult;
  i             : integer;
begin
  Result := S_OK;
  try
    //Registration
    ResultInstance := CoCreateInstance(CLSID_StdComponentCategoryMgr, nil,
      CLSCTX_INPROC_SERVER, ICatRegister, CatPlugins);
    if Succeeded(ResultInstance) then
    begin

      //Class
      for i := low(AAddons) to high(AAddons) do
      begin
        try
          OleCheck(CatPlugins.UnRegisterClassImplCategories(AAddons[i], 1, @ACatID));
        except
          Continue;
        end;
      end;
    end;

    //UnRegistration of server
    ComServer.UpdateRegistry(False);
  except
    Result := E_FAIL;
  end;
end;

function RegisterFrames(AFrames: array of TGUID; ALocale: Cardinal = $419): HRESULT;
begin
  result := RegisterAddons(AFrames, CATID_FRAMES, FramesCatDescription, ALocale);
end;

function UnRegisterFrames(AFrames: array of TGUID): HRESULT;
begin
  result := UnRegisterAddons(AFrames, CATID_FRAMES);
end;

function RegisterDialogFrames(AFrames: array of TGUID; ALocale: Cardinal = $419): HRESULT;
begin
  result := RegisterAddons(AFrames, CATID_DIALOG_FRAMES, DialogFramesCatDescription, ALocale);
end;

function UnRegisterDialogFrames(AFrames: array of TGUID): HRESULT;
begin
  result := UnRegisterAddons(AFrames, CATID_DIALOG_FRAMES);
end;

function RegisterServices(AServices: array of TGUID; ALocale: Cardinal = $419): HRESULT;
begin
  result := RegisterAddons(AServices, CATID_SERVICES, ServicesCatDescription, ALocale);
end;

function UnRegisterServices(AServices: array of TGUID): HRESULT;
begin
  result := UnRegisterAddons(AServices, CATID_SERVICES);
end;

end.
