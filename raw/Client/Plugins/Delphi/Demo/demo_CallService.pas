unit demo_CallService;

interface
uses
  Variants, SysUtils, Classes, Loodsman_TLB, demo_tlb  , Dialogs ;

  procedure menu_Call_Logger(const PluginCall: IPluginCall); stdcall; export;
  procedure menu_Call_CachedMeta(const PluginCall: IPluginCall); stdcall; export;
  procedure menu_Call_InterceptActions(const PluginCall: IPluginCall); stdcall; export;

implementation

uses
  DataProvider_TLB;

  function getDemoService(const app : ILoodsmanApplication) :  IDemoService;
  var
      Service :  ILoodsmanService;
  begin
     Result :=  nil;
     service := app.FindService(IID_IDemoService, true) as ILoodsmanService;
     if service <> nil then
         Result :=  Service as IDemoService;
  end;

  procedure menu_Call_CachedMeta(const PluginCall: IPluginCall); stdcall; export;
  var
      DemoService : IDemoService;
      ds : Idataset  ;
  begin

     DemoService :=  getDemoService( PluginCall as ILoodsmanApplication);
     if DemoService <> nil then
       begin
          ds := DemoService.GetDataFromCashe;
          if ds <> nil then
            begin
              ShowMessage('От сервиса получен набор данных. Количество записей = '+Inttostr(ds.RecordCount));
            end;
       end
      else
       showmessage('На найден Demo Service. Зарегистрируйте библиотеку сервиса.');



  end;

  procedure menu_Call_Logger(const PluginCall: IPluginCall); stdcall; export;
  var
      DemoService : IDemoService;

  begin
     DemoService :=  getDemoService( PluginCall as ILoodsmanApplication);
     if DemoService <> nil then
          DemoService.ShowNotificationsLogger
      else
       showmessage('На найден Demo Service. Зарегистрируйте библиотеку сервиса.');








  end;

 procedure menu_Call_InterceptActions(const PluginCall: IPluginCall); stdcall; export;
  var
      DemoService : IDemoService;

  begin
     DemoService :=  getDemoService( PluginCall as ILoodsmanApplication);
     if DemoService <> nil then
          DemoService.StartIntercept
      else
       showmessage('На найден Demo Service. Зарегистрируйте библиотеку сервиса.');








  end;

end.
