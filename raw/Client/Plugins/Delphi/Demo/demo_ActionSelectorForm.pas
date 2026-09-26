unit demo_ActionSelectorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, StdCtrls, ExtCtrls, Loodsman_TLB;

type
  TfrmActionSelector = class(TForm)
    btnCancel: TButton;
    ActionList1: TActionList;
    acCut: TAction;
    mmActions: TMainMenu;
    actCopy: TAction;
    actPaste: TAction;
    miN1: TMenuItem;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    miacCut: TMenuItem;
    actProperties: TAction;
    actRefresh: TAction;
    actAddToFavorites: TAction;
    actOpen: TAction;
    actGoto: TAction;
    actUnlock: TAction;
    actCheckout: TAction;
    actDelete: TAction;
    actCreateObject: TAction;
    actCreateProject: TAction;
    actCreateVersion: TAction;
    actCreateCopy: TAction;
    actCreateRoute: TAction;
    actCopyLink: TAction;
    actCopyHyperlink: TAction;
    actSelectAll: TAction;
    actSign: TAction;
    actVerifySign: TAction;
    actCreateTask: TAction;
    actObjAccess: TAction;
    actCreateMail: TAction;
    actGotoChildNode: TAction;
    actRefreshParent: TAction;
    actReports: TAction;
    actDSSign: TAction;
    actDSVerify: TAction;
    actDSVerifyGroup: TAction;
    actDSExportSign: TAction;
    actFavoriteSettings: TAction;
    miN2: TMenuItem;
    miProperties: TMenuItem;
    miRefresh: TMenuItem;
    miRefreshParent: TMenuItem;
    miAddToFavorites: TMenuItem;
    miOpen: TMenuItem;
    miGoto: TMenuItem;
    miGotoChildNode: TMenuItem;
    miN3: TMenuItem;
    miUnlock: TMenuItem;
    miCheckout: TMenuItem;
    miDelete: TMenuItem;
    miSelectAll: TMenuItem;
    miObjAccess: TMenuItem;
    miN4: TMenuItem;
    miReports: TMenuItem;
    miFavoriteSettings: TMenuItem;
    miN5: TMenuItem;
    miCreateObject: TMenuItem;
    miCreateProject: TMenuItem;
    miCreateRoute: TMenuItem;
    miCreateMail: TMenuItem;
    miCreateCopy: TMenuItem;
    miCreateVersion: TMenuItem;
    miN6: TMenuItem;
    miN7: TMenuItem;
    miN8: TMenuItem;
    miCreateCopy1: TMenuItem;
    miN9: TMenuItem;
    miCopyLink: TMenuItem;
    miCopyHyperlink: TMenuItem;
    pnl1: TPanel;
    miN10: TMenuItem;
    miDSSign: TMenuItem;
    miDSVerify: TMenuItem;
    miDSVerifyGroup: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure RUNCOMMAND(Sender: TObject);
  private
    { Private declarations }
  public
    tempapp : ILoodsmanApplication;
    { Public declarations }

  end;




function SelectAction(app : ILoodsmanApplication  ) : Integer;


implementation

{$R *.dfm}

const


  acNone = 0;
  acProperties = 1;
  acRefresh = 2;
  acAddToFavorites = 3;
  acOpen = 4;
  acGoto = 5;
  acCut = 6;
  acCopy = 7;
  acPaste = 8;
  acUnlock = 9;
  acCheckout = 10;
  acDelete = 11;
  acCreateObject = 12;
  acCreateProject = 13;
  acCreateVersion = 14;
  acCreateCopy = 15;
  acCreateRoute = 16;

  acCopyLink = 17;
  acCopyHyperlink = 18;
  acCreateLink = 19;
  acSendLink = 20;
  
  acChangeType = 21;
  acChangeState = 22;
  acChangeQuantity = 23;
  acSelectAll = 24;
  acPasteProject = 25;
  
  acLinkedObjects = 26;
  acNotifySign = 27;
  acOpenFileList = 29;

  acSign = 30;
  acVerifySign = 31;

  acCommonCreate = 32;
  acRename = 33;
  acAdd = 34;
  acSaveAs = 35;
  acGetInfo = 36;
  acOpenWith = 37;
  acObjectConfig = 38;

  acBOSelect = 39;
  acCreateTask = 40;
  acCancel = 41;

  acOpenPlan = 42;
  acObjAccess = 43; 

  acCreateMail = 44;


  // plugin window messages actions
  acGotoChildNode = 100;
  acGotoNode = 101;
  acRefreshParent = 102;
  acLocate = 103;

  acSignObjectEx = 200;
  acVerifySignObject = 201;
  acSignFileEx = 202;
  acVerifySignFile = 203;
  acSignObjectExNoGui = 204;
  acVerifySignObjectNoGui = 205;
  acSignFileExNoGui = 206;
  acVerifySignFileNoGui = 207;
  acExportSign          = 208;

  acFavoriteSettings = 515;

  acRefreshNavigatorIndicators = 553;

  acReports = 2000;
  acDSSign = 2001;
  acDSVerify = 2002;
  acDSVerifyGroup = 2003;
  acDSExportSign = 2004;
  acEffectivity = 2005;
  acCreateCopyByPrototype = 2006;
  acCreateVerssionByPrototype = 2007;
  acCheckOutFiles = 2008;
  acReplaceVersion = 2009;

  // notification type
  noUnknown = 0;
  noRefresh = 1;
  noLayoutChanged = 2;
  noReloadLayout = 3;
  noUseConfig = 4;
  noLayoutEditing = 5;
  noApplicationClose = 6;
//  noRouteStateChanged = 7;
  noRouteCreated = 8;
  //noMailSent = 9;
  noMenuBarReset = 10;
  noObjectChanged = 11;
  noObjectsDeleted = 12;
  noTaskTransformed = 13;
  noRefreshCheckout = 14;
  noParamChanged = 15;
  noLayoutResizing = 16;
  noNoteAttachmentsChanged = 17;
  noNoteTextChanged = 18;
  noNoteCreated = 19;
  noNoteDeleted = 20;
  noSelectionChanged = 21;
  noBeforeSaveOrCheckin = 22;
  noAddonNotification = 23;
  noRefreshProps = 24;
  noRefreshNavigatorNotices = 25;
  noNavigatorNoticesUpdated = 26;
  noEntitySigned = 27;
  noBeforeCloseConnection = 28;

  // уведомления для переписки
  noMessageSent       = 30;
  noMessageArchived   = 31;
  noMessageUnArchived = 32;
  noMessageTrashed    = 33;
  noMessageRestored   = 34;
  noMessageNewDraft   = 35;
  noMessageRead       = 36;
  noMessageHasChanged = 37;




function SelectAction(app : ILoodsmanApplication  ) : Integer;
var
  frmActionSelector: TfrmActionSelector;
begin
   Result := 0;
   frmActionSelector:= TfrmActionSelector.Create(nil);
   frmActionSelector.tempapp :=app;
   try
      if frmActionSelector.ShowModal = mrOk then
          Result := frmActionSelector.Tag;
   finally
     FreeAndNil(frmActionSelector);
   end;

end;

procedure TfrmActionSelector.FormShow(Sender: TObject);
var i : Integer;
begin
   for I := 0 to ActionList1.ActionCount- 1 do
      begin
        TAction(ActionList1.Actions[i]).OnExecute := RUNCOMMAND;
        TAction(ActionList1.Actions[i]).Enabled := tempapp.Actions.IsActionEnabled(ActionList1.Actions[i].tag);
      end;
end;

procedure TfrmActionSelector.RUNCOMMAND(Sender: TObject);
begin
   Self.tag :=  TAction(Sender).Tag;
   Self.ModalResult := mrOk;
end;

end.
