unit demo_dynamicstructurewindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Loodsman_TLB, StdCtrls, ExtCtrls, ComCtrls, PDMTree_TLB, DataProvider_TLB,
  LoodsmanObjects_TLB;

type
  TfrmDynamicStructureDemo = class(TForm)
    pnlEffMode: TPanel;
    lblEffMode: TLabel;
    lblEffModeValue: TLabel;
    grpParams: TGroupBox;
    pnlContextId: TPanel;
    lblContextId: TLabel;
    edtContextId: TEdit;
    pnlRuleId: TPanel;
    lblRuleId: TLabel;
    edtRuleId: TEdit;
    pnlEndVersionId: TPanel;
    lblEndVersionId: TLabel;
    edtEndVersionId: TEdit;
    pnlQuickParams: TPanel;
    lblQuickParams: TLabel;
    lblCurrentQuickParamsValue: TLabel;
    lvQuickParams: TListView;
    edtCurrentQuickParams: TEdit;
    chkCurrentQuickParams: TCheckBox;
    btnQuickParamsApply: TButton;
    pnlBottomParams: TPanel;
    btnSave: TButton;
    grpDynamicStructure: TGroupBox;
    lblSelectedObject: TLabel;
    lblSelectedObjectValue: TLabel;
    pnlBottom: TPanel;
    btnRefresh: TButton;
    lblFilterDynamicMode: TLabel;
    lblFilterDynamicModeValue: TLabel;
    lblParentObjectValue: TLabel;
    lblParentObject: TLabel;
    lblQuantity: TLabel;
    lblQuantityValue: TLabel;
    lblLinkType: TLabel;
    lblLinkTypeValue: TLabel;
    lblVersionSet: TLabel;
    mmoVersionSet: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lvQuickParamsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btnQuickParamsApplyClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FLoodsmanApp: ILoodsmanApplication;

    //Информация о режиме отображения структуры: Точная или Динамическая
    procedure UpdateEffModeTitle;

    //Параметры динамической структуры
    procedure UpdateEffParams;

    //Информация о селектированном объекте
    procedure UpdateSelected;

    procedure CreateParams(var Params: TCreateParams); override;

    //Обновить информацию
    procedure RefreshInfo;

    function GetQuickParamsValuesAsArray: OleVariant;
    procedure SaveChanges;
  public
    constructor CreateLoodsman(const aValue: ILoodsmanApplication);
  end;

procedure menu_DynamicStructure(const PluginCall: IPluginCall); stdcall; export;

var
  frmDynamicStructureDemo: TfrmDynamicStructureDemo;

implementation

{$R *.dfm}

procedure menu_DynamicStructure(const PluginCall: IPluginCall); stdcall; export;
var
  laLoodsmanApplication: ILoodsmanApplication;
begin
  if Assigned(PluginCall) then               
    if PluginCall.QueryInterface(IID_ILoodsmanApplication, laLoodsmanApplication) = S_OK then
    begin
      frmDynamicStructureDemo := TfrmDynamicStructureDemo.CreateLoodsman(laLoodsmanApplication);
      frmDynamicStructureDemo.Show;
    end;
end;

procedure TfrmDynamicStructureDemo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(FLoodsmanApp) then  
    FLoodsmanApp.UnRegisterPluginWindow(Self.WindowHandle);

  Action := caFree;
end;

procedure TfrmDynamicStructureDemo.FormDestroy(Sender: TObject);
begin
  FLoodsmanApp := nil;
end;

procedure TfrmDynamicStructureDemo.RefreshInfo;
begin
  if Assigned(FLoodsmanApp) and Assigned(FLoodsmanApp.ActiveWindow) then   
  begin
    UpdateEffModeTitle;
    UpdateEffParams;

    UpdateSelected;
  end
  else
    ShowMessage('Нет активного окна');
end;

function TfrmDynamicStructureDemo.GetQuickParamsValuesAsArray: OleVariant;
var
  i: Integer;
  inNextParamTypeId: Integer;
  stNextParamName: String;
  stNextParamValue: String;
  boNextParamsIsAnyValue: Boolean;
begin
  Result := null;

  if lvQuickParams.Items.Count > 0 then
  begin
    Result := VarArrayCreate([0, lvQuickParams.Items.Count - 1, 0, 3], varVariant);
    for i  := 0 to lvQuickParams.Items.Count - 1 do
    begin
      inNextParamTypeId      := StrToInt(lvQuickParams.Items[i].Caption);
      stNextParamName        := lvQuickParams.Items[i].SubItems[0];
      stNextParamValue       := lvQuickParams.Items[i].SubItems[1];
      boNextParamsIsAnyValue := StrToBool(lvQuickParams.Items[i].SubItems[2]);

      Result[i, 0] := inNextParamTypeId;
      Result[i, 1] := stNextParamName;
      Result[i, 2] := stNextParamValue;
      Result[i, 3] := boNextParamsIsAnyValue;
    end;
  end;
end;

procedure TfrmDynamicStructureDemo.SaveChanges;
var
  wepEffectivityParams: IDBWindowEffectivityParams;
begin
  if Assigned(FLoodsmanApp) and Assigned(FLoodsmanApp.ActiveWindow) then
  begin
    wepEffectivityParams := FLoodsmanApp.ActiveWindow.EffectivityParams;

    if Assigned(wepEffectivityParams) then
    begin
      wepEffectivityParams.RuleId := StrToInt(edtRuleId.Text);
      wepEffectivityParams.EndVersionId := StrToInt(edtEndVersionId.Text);
      wepEffectivityParams.FixedContextId := StrToInt(edtContextId.Text);
      wepEffectivityParams.QuickParams := GetQuickParamsValuesAsArray; 

      wepEffectivityParams.Update;

      ShowMessage('Параметры сохранены');
    end;    
  end;
end;

procedure TfrmDynamicStructureDemo.FormShow(Sender: TObject);
begin
  if Assigned(FLoodsmanApp) then
    FLoodsmanApp.RegisterPluginWindow(Self.WindowHandle);

  RefreshInfo;
end;

procedure TfrmDynamicStructureDemo.lvQuickParamsChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  if Assigned(lvQuickParams.Selected) then
  begin
    edtCurrentQuickParams.Text := lvQuickParams.Selected.SubItems[1];

    chkCurrentQuickParams.Checked := lvQuickParams.Selected.SubItems[2] = '-1';
  end
  else
    begin
      edtCurrentQuickParams.Clear;
      chkCurrentQuickParams.Checked := False;
    end;
end;

constructor TfrmDynamicStructureDemo.CreateLoodsman(const aValue: ILoodsmanApplication);
begin
  FLoodsmanApp := aValue;

  inherited Create(nil);
end;

procedure TfrmDynamicStructureDemo.btnQuickParamsApplyClick(Sender: TObject);
begin
  if Assigned(lvQuickParams.Selected) then
  begin
    lvQuickParams.Selected.SubItems[1] := edtCurrentQuickParams.Text;
    if chkCurrentQuickParams.Checked then
      lvQuickParams.Selected.SubItems[2] := '-1'
    else
      lvQuickParams.Selected.SubItems[2] := '0';
  end;
end;

procedure TfrmDynamicStructureDemo.btnRefreshClick(Sender: TObject);
begin
  RefreshInfo;
end;

procedure TfrmDynamicStructureDemo.btnSaveClick(Sender: TObject);
begin
  SaveChanges;
end;

procedure TfrmDynamicStructureDemo.UpdateEffModeTitle;
const
  SC_BASE_STRUCTURE = 'Точная структура';
  SC_DYNAMIC_STRUCTURE = 'Динамическая структура';
begin
  if FLoodsmanApp.ActiveWindow.EffMode then
    lblEffModeValue.Caption := SC_DYNAMIC_STRUCTURE
  else
    lblEffModeValue.Caption := SC_BASE_STRUCTURE;
end;

procedure TfrmDynamicStructureDemo.UpdateEffParams;
const
  SC_ERROR_WRONG_ARRAY_FORMAT = 'Не правильный формат массива';
var
  wepEffectivityParams: IDBWindowEffectivityParams;
  ovQuickParams: OleVariant;
  i: Integer;
  inNextParamTypeId: Integer;
  stNextParamName: String;
  stNextParamValue: String;
  boNextParamsIsAnyValue: Boolean;
begin
  wepEffectivityParams := FLoodsmanApp.ActiveWindow.EffectivityParams;
                           
  if Assigned(wepEffectivityParams) then
  begin
    //Альтернативный способо получения параметров динамической структуры из контекста окна IDBContext
    // FLoodsmanApp.ActiveWindow.Context.GetContextValue('eff-mode');
    // FLoodsmanApp.ActiveWindow.Context.GetContextValue('eff-fixed-context-id');
    // FLoodsmanApp.ActiveWindow.Context.GetContextValue('eff-rule-id');
    // FLoodsmanApp.ActiveWindow.Context.GetContextValue('eff-end-version-id');
    // FLoodsmanApp.ActiveWindow.Context.GetContextValue('eff-quick-params-values');

    edtContextId.Text    := IntToStr(wepEffectivityParams.FixedContextId);
    edtRuleId.Text       := IntToStr(wepEffectivityParams.RuleId);
    edtEndVersionId.Text := IntToStr(wepEffectivityParams.EndVersionId);

    lvQuickParams.Clear;
    lvQuickParams.Items.BeginUpdate;
    try
      ovQuickParams := wepEffectivityParams.QuickParams;

      if VarIsNull(ovQuickParams) then
        Exit;
      if VarIsEmpty(ovQuickParams) then
        Exit;
      if VarIsStr(ovQuickParams) and (Trim(ovQuickParams) = '') then
        Exit;

      if not VarIsArray(ovQuickParams) then
        raise Exception.Create(SC_ERROR_WRONG_ARRAY_FORMAT);
      if VarArrayDimCount(ovQuickParams) <> 2 then
        raise Exception.Create(SC_ERROR_WRONG_ARRAY_FORMAT);

      for i := VarArrayLowBound(ovQuickParams, 1) to VarArrayHighBound(ovQuickParams, 1) do
      begin
        inNextParamTypeId      := ovQuickParams[i, 0];
        stNextParamName        := VarToStr(ovQuickParams[i, 1]);
        stNextParamValue       := VarToStr(ovQuickParams[i, 2]);
        boNextParamsIsAnyValue := ovQuickParams[i, 3];

        with lvQuickParams.Items.Add do
        begin
          Caption := IntToStr(inNextParamTypeId);
          SubItems.Add(stNextParamName);
          SubItems.Add(stNextParamValue);
          SubItems.Add(BoolToStr(boNextParamsIsAnyValue));
        end;
      end;
    finally
      if lvQuickParams.Items.Count > 0 then
      begin
        lvQuickParams.Items[0].Selected := True;
        lvQuickParams.Items[0].Focused := True;
      end;
      lvQuickParams.Items.EndUpdate;
    end;
  end;
end;

procedure TfrmDynamicStructureDemo.UpdateSelected;
var
  ovSelectedObject: OleVariant;
  diSelectedObject: IDispatch;
  ltnSelectedTreeNode: ILoodsmanTreeNode;
  pdmSelectedObject: IPDMObject2;
  pdmSelectedLink: IPDMLink2;
  apiConnection: ISimpleAPI;
  pdmVersionSetCollection: IPDMObjectCollection;
  i: Integer;
begin
  if Assigned(FLoodsmanApp) and Assigned(FLoodsmanApp.ActiveWindow) then
  begin
    pdmSelectedObject := nil;
    pdmSelectedLink := nil;

    apiConnection := FLoodsmanApp.ActiveWindow.Context.Connection as ISimpleAPI;
    ovSelectedObject := FLoodsmanApp.ActiveWindow.Content.Selected;

    ltnSelectedTreeNode := FLoodsmanApp.LoodsmanClientUtils.GetPDMObjFromVariant(ovSelectedObject, IID_ILoodsmanTreeNode, apiConnection) as ILoodsmanTreeNode;

    //Альтернативный вариант как было раньше
    //diSelectedObject := ovSelectedObject;
    //diSelectedObject.QueryInterface(IID_ILoodsmanTreeNode, ltnSelectedTreeNode);

    lblSelectedObjectValue.Caption := '-';
    lblFilterDynamicModeValue.Caption := '-';
    lblParentObjectValue.Caption := '-';
    lblQuantityValue.Caption := '-';
    lblLinkTypeValue.Caption := '-';
    mmoVersionSet.Clear;

    if Assigned(ltnSelectedTreeNode) then
    begin
      pdmSelectedObject := ltnSelectedTreeNode.PDMObject;
      pdmSelectedLink := ltnSelectedTreeNode.PDMLink;

      case ltnSelectedTreeNode.DynamicVersionSetFilterMode of
        vfmSingleVersion : lblFilterDynamicModeValue.Caption := 'Единственная версия';
        vfmWithOutVersion: lblFilterDynamicModeValue.Caption := 'Ни одной версии из семейства';
        vfmManyVersion   : lblFilterDynamicModeValue.Caption := 'Больше одной версии из семейства';
      end;

      if Assigned(ltnSelectedTreeNode.ParentNode) then
        if Assigned(ltnSelectedTreeNode.ParentNode.PDMObject) then
          lblParentObjectValue.Caption := ltnSelectedTreeNode.ParentNode.PDMObject.Name;

      if Assigned(ltnSelectedTreeNode.VersionSet) then
      begin
        pdmVersionSetCollection := ltnSelectedTreeNode.VersionSet.GetAsCollection;

        if Assigned(pdmVersionSetCollection) then
        begin
          for i:=0 to pdmVersionSetCollection.Count - 1 do
            mmoVersionSet.Lines.Add(pdmVersionSetCollection.PDMObjects[i].Version);
        end;
      end;
    end;
    
    if Assigned(pdmSelectedObject) then
      lblSelectedObjectValue.Caption := pdmSelectedObject.Name + ', версия ' + pdmSelectedObject.Version;

    if Assigned(pdmSelectedLink) then
    begin
      lblLinkTypeValue.Caption := pdmSelectedLink.LinkType;

      if Assigned(pdmSelectedLink.LinkBetweenTypes) then
        if pdmSelectedLink.LinkBetweenTypes.Quantity then
        begin
          if pdmSelectedLink.MinQuantity = pdmSelectedLink.MaxQuantity then
            lblQuantityValue.Caption := FloatToStr(pdmSelectedLink.MinQuantity) + ', ' + pdmSelectedLink.UnitName
          else
            lblQuantityValue.Caption := 'от ' + FloatToStr(pdmSelectedLink.MinQuantity) +
               'до ' + FloatToStr(pdmSelectedLink.MaxQuantity) +
               ', ' + pdmSelectedLink.UnitName;
        end;
    end; 
  end;
end;

procedure TfrmDynamicStructureDemo.CreateParams(var Params: TCreateParams);
begin
  inherited;

  Params.Style := Params.Style or WS_OVERLAPPED;

  if Assigned(FLoodsmanApp) then
  begin
    Application.Handle := FLoodsmanApp.AppHandle;
    Params.WndParent   := FLoodsmanApp.MainHandle;
  end;
end;

end.
