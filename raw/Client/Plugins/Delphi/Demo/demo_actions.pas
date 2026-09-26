unit demo_actions;



interface

uses  Variants, SysUtils , Classes,  Loodsman_TLB, Forms;

procedure menu_CallAction(const PluginCall: IPluginCall); stdcall; export;

implementation

uses
  demo_ActionSelectorForm   ;
  


procedure Call(app : ILoodsmanApplication; ActionID : Integer ); stdcall; export;
begin

end;

procedure menu_CallAction(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;

    actionID  : Integer;
    vData : OleVariant;
    vActionResultData : OleVariant;
    res : ActionResults;
begin
      // для сокрытия кнопок окон плагина с панели задач
      Application.Handle := PluginCall.AppHandle;
      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin

          actionID := demo_ActionSelectorForm.SelectAction(app);
          if actionID <> 0  then
            begin
                res := app.Actions.ExecuteAction(actionID,vData, vActionResultData );
                if res = arError then
                   app.NotifyUser('Demo', 'Не удалось выполнить команду',1,0);
            end;
        end;

end;

end.
