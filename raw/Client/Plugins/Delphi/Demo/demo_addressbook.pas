unit demo_addressbook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Loodsman_tlb, Dialogs, StdCtrls, ExtCtrls;

type
  TfrmSelectAB = class(TForm)
    pnl1: TPanel;
    chkMulti: TCheckBox;
    rgItemType: TRadioGroup;
    btnOK: TButton;
    pnl2: TPanel;
    pnl3: TPanel;
    btnCancel: TButton;
    mmo1: TMemo;
    chkShowBoxes: TCheckBox;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    app: ILoodsmanApplication;
  end;

procedure menu_AddressBook(const PluginCall: IPluginCall); stdcall; export;

implementation

uses
  AddressBook_TLB;

{$R *.dfm}

procedure menu_AddressBook(const PluginCall: IPluginCall); stdcall; export;
var
  frmSelectAB: TfrmSelectAB;
begin
  Application.Handle := PluginCall.AppHandle;

  frmSelectAB := TfrmSelectAB.Create(nil);
  try
    frmSelectAB.app := PluginCall as ILoodsmanApplication;
    frmSelectAB.ShowModal;
  finally
    FreeAndNil(frmSelectAB);
  end;
end;

procedure TfrmSelectAB.btnOKClick(Sender: TObject);
var
 // wfUser : IUser;

  i: Integer;
  adbs: IAddressBookSelectedResult;
  adbsUserID: Integer;
  FABookSelector: IAddressBookService;
  selectMode: Integer;
  s: string;
begin

  if (app.DataBase <> nil) and (app.DataBase.Connection <> nil) then
  begin

    if FABookSelector = nil then
      FABookSelector := CoAddressBookService.Create;

    if Self.chkShowBoxes.Checked then
      FABookSelector.SetSelectMode(smCheckBox)
    else
      FABookSelector.SetSelectMode(smClickSelect);

    case rgItemType.ItemIndex of
      0:
        if chkMulti.Checked then
          selectMode := abMultiUsers
        else
          selectMode := abSingleUser;
      1:
        if chkMulti.Checked then
          selectMode := abMultiPosts
        else
          selectMode := abSinglePost;
      2:
        if chkMulti.Checked then
          selectMode := abMultiUnits
        else
          selectMode := abSingleUnit;
    end;

    adbs := FABookSelector.Execute(app.DataBase.Connection, selectMode, app.AppHandle, nil);

    if adbs.HRESULT = 1 then
    begin
      for i := 0 to adbs.Collection.Count - 1 do
      begin
        s := '';
        case adbs.Collection.Items[i].ElementType of
          abetUser:
            s := 'Пользователь';
          abetPost:
            s := 'Должность';
          abetUnit:
            s := 'Подразделение';
        end;
        mmo1.Lines.Add(Format('Тип=%s id=%d name=%s', [s, adbs.Collection.Items[i].ElementId, adbs.Collection.Items[i].ElementName]));
      end;
    end;
  end;
end;

end.

