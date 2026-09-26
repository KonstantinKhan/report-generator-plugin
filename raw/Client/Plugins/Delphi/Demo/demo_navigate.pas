unit demo_navigate;

interface
uses  Variants, SysUtils , Classes,  Loodsman_TLB, Forms;

procedure menu_Navigate_Open(const PluginCall: IPluginCall); stdcall; export;




implementation
uses
PDMObjects_TLB, SUPR_TLB, DataProvider_TLB;

procedure menu_Navigate_Open(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;
    i ,j : Integer;
    w : IDBWindow;
    pdmData : IPDMData;
    sapi : ISimpleAPI;
    newContext : IDBContext;
    id : Integer;
    ids : string;
const
  CROOTLIST = 'RootList';
begin
      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin
          w := app.ActiveWindow;
          if Assigned(w) then
            begin
               if w.Content.SelectedCount > 0  then
                  begin
                       sapi := w.Context.Connection as ISimpleAPI;
                       newContext := app.CreateContext(w.Content.ContentType, sapi.Checkout, 0);
                       for I := 0 to w.Content.SelectedCount - 1 do
                          begin
                            pdmData := idispatch(w.Content.SelectedByIndex(i)) as IpdmData;
                            case pdmData.ObjectCode of
                              C_OBJECT, C_TASK, C_ROUTE, C_WFTASK, C_PLAN :
                                begin
                                  id := pdmData.ID;
                                end;
                              C_LINK :
                                begin
                                   id := (pdmData as IPDMLink).ChildObject.ID;
                                end
                              else
                                id := -1;
                            end;

                            if id <> -1  then
                              if ids='' then
                                 ids := IntToStr(id)
                                else
                                 ids := ids + ','+ IntToStr(id)

                          end;
                       newContext.SetContextValue(CROOTLIST, ids);
                       app.CreateWindow('Demo', newContext, '', 0);
                  end;
            end;
        end;
end;
end.
