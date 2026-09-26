//******************************************************************************
// Форма для вывода залогированных уведомлений и команд
//******************************************************************************
unit DemoService_LogViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, loodsman_tlb, StdCtrls;

type
  TfrmLogViewer = class(TForm)
    mmoLog: TMemo;
   procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
    appHandle,
    MainWindowHandle: Cardinal;
  public
    { Public declarations }

    Procedure LogNotification(const Notification: INotification);
     Procedure LogAction(ActionCommand: Integer; ActionData: OleVariant; var ActionResultData: OleVariant  );
    constructor CreateNonModal(appHandle , MainWindowHandle : Cardinal);
  end;

var
  frmLogViewer: TfrmLogViewer;

implementation

{$R *.dfm}

{ TfrmLogViewer }

function var2str(const v:variant):string ;
begin
   try
     Result := '';
     if VarIsNull(v) then
       Result := 'VarIsNull'
     else if VarIsArray(v) then
         Result := 'VarIsArray'
      else if VarIsByRef(v) then
         Result := 'VarIsByRef'
      else
         Result :=     v;
   except
     Result := '<не удалось преобразовать>'
   end;
end;

constructor TfrmLogViewer.CreateNonModal(appHandle, MainWindowHandle: Cardinal);
begin
  Self.appHandle := appHandle;
  Self.MainWindowHandle := MainWindowHandle;

  inherited Create(nil);
end;

procedure TfrmLogViewer.CreateParams(var Params: TCreateParams);
begin
  inherited;

  Params.Style := Params.Style or WS_OVERLAPPED;

  Application.Handle :=appHandle;
  Params.WndParent := MainWindowHandle;

end;

procedure TfrmLogViewer.LogAction(ActionCommand: Integer; ActionData: OleVariant; var ActionResultData: OleVariant);
var s : string;
begin


   mmoLog.Lines.Add('');
   mmoLog.Lines.Add('<Action>');
   mmoLog.Lines.Add(Format(
   'ActionCommand:%d'#13#10'ActionData:%s'#13#10'ActionResultData:%s' ,
   [
   ActionCommand,
   var2str(ActionData),
   var2str(ActionResultData)
   ]));


end;

procedure TfrmLogViewer.LogNotification(const Notification: INotification);

begin


   mmoLog.Lines.Add('');
   mmoLog.Lines.Add('<Notification>');
   mmoLog.Lines.Add(Format(
   'NotifyType:%d'#13#10'NotifyCategory:%s'#13#10'DataType:%d'#13#10'Data:%s'#13#10'CheckOut:%s'#13#10'Source:%s'  ,
   [
   Notification.NotifyType,
   Notification.NotifyCategory,
   Notification.DataType,
   var2str(Notification.DATA),
   Notification.CheckOut,
   Notification.Source
   ]));


end;

end.
