unit demo_messages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Loodsman_TLB, ComObj, ActiveX, StdCtrls, ExtCtrls, PDMObjects_TLB;

type
  TfrmMessages = class(TForm)
    cbb1: TComboBox;
    lbl1: TLabel;
    btnSend: TButton;
    btnClose: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMessages: TfrmMessages;

procedure menu_ShowMessages(const PluginCall: IPluginCall); stdcall; export;

implementation

uses
  DataProvider_TLB;

{$R *.dfm}

const
  //Сообщения
  WM_REFRESHVERSION = WM_USER + 1;
  WM_REFRESHPARENT = WM_USER + 4;
  WM_GOTOCHILD = WM_USER + 5;
  WM_REFRESHCHECKOUTLIST = WM_USER + 6;
  WM_REFRESHPROJECTLIST = WM_USER + 7;
  WM_GOTONODE = WM_USER + 8;
  WM_GOTOOBJECT = WM_USER + 9;
  WM_OPENOBJECTINNEWWINDOW = WM_USER + 100;
  WM_OPENOBJECTSINNEWWINDOW = WM_USER + 101;
  WM_OPENOBJECTSINNEWCHECKOUTWINDOW = WM_USER + 103;

procedure menu_ShowMessages(const PluginCall: IPluginCall); stdcall; export;
var
  frmMessages: TfrmMessages;
  app: ILoodsmanApplication;
  childID: Integer;

  function GetFirstChildID(): Integer;
  var parentLink :  IPDMLink;
      parentObject :  IPDMObject;
      PDMData : iPDMData;
      ds :Idataset   ;
  begin
      Result := 0;
      if idispatch(app.ActiveWindow.Content.Focused) <> nil then
        begin
          PDMData := idispatch(app.ActiveWindow.Content.Focused) as IPDMData;
          if PDMData.QueryInterface(IID_IPDMObject, parentObject) <> S_OK then
             if PDMData.QueryInterface(IID_IPDMLink, parentLink) = S_OK then
                parentObject := parentLink.ChildObject;
          if parentObject <> nil then
            begin
             ds :=  app.DataBase.Connection.GetDataSet('GetLinkedFast', VarArrayOf([parentObject.ID, 'Состоит из ...', false  ])) as IDataSet;
             while not ds.eof do
               begin
                 Result := ds.FieldValue['_ID_VERSION'] ;
                 break;
               end;

            end;
               
        end;
  end;

begin
  childID := 0;

  Application.Handle := PluginCall.AppHandle;
  app := PluginCall as ILoodsmanApplication;

  if (app.ActiveWindow <> nil) and (app.ActiveWindow.Content <> nil) and (app.ActiveWindow.Content.ContentType = C_OBJECT) then
  begin

    frmMessages := TfrmMessages.Create(nil);
    try

      childID := GetFirstChildID;
      frmMessages.ShowModal;
      if frmMessages.ModalResult = mrOk then
      begin
        case frmMessages.cbb1.ItemIndex of
          0:
            PostMessage(app.ActiveWindow.WindowHandle, WM_REFRESHVERSION, 0, 0);
          1:
            PostMessage(app.ActiveWindow.WindowHandle, WM_REFRESHPARENT, 0, 0);
          2:
            PostMessage(app.ActiveWindow.WindowHandle, WM_GOTOCHILD, childID, 0);      // не работает в новом дереве

          3:
            PostMessage(app.MainHandle, WM_REFRESHCHECKOUTLIST, 0, 0);
          4:
            PostMessage(app.MainHandle, WM_REFRESHPROJECTLIST, 0, 0);

          5:
            PostMessage(app.ActiveWindow.WindowHandle, WM_GOTONODE, childID, 0);    // ?
          6:
            PostMessage(app.ActiveWindow.WindowHandle, WM_GOTOOBJECT, childID, 0);
          7:
            PostMessage(app.ActiveWindow.WindowHandle, WM_OPENOBJECTINNEWWINDOW, 0, 0);
          8:
            PostMessage(app.ActiveWindow.WindowHandle, WM_OPENOBJECTSINNEWWINDOW, 0, 0);
          9:
            PostMessage(app.ActiveWindow.WindowHandle, WM_OPENOBJECTSINNEWCHECKOUTWINDOW, 0, 0);
        end;

      end;

    finally
      FreeAndNil(frmMessages);
    end;

  end
  else
    ShowMessage('Укажите объект');

end;

end.

