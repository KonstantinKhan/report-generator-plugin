unit demo_NonModalWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Loodsman_TLB, ComObj, ActiveX, StdCtrls, ExtCtrls;

type
  TfrmNonModalWindow = class(TForm, IDropTarget)
    mmo1: TMemo;
    pnl1: TPanel;
    bvl1: TBevel;
    btnCancel: TButton;
    btnOK: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormDestroy(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
   { IDropTarget interface }

    function DragEnter(const dataObj: IDataObject; grfKeyState: Longint; pt: TPoint; var dwEffect: Longint): HResult; stdcall;
    function DragOver(grfKeyState: Longint; pt: TPoint; var dwEffect: Longint): HResult; stdcall;
    function DragLeave: HResult; stdcall;
    function Drop(const dataObj: IDataObject; grfKeyState: Longint; pt: TPoint; var dwEffect: Longint): HResult; stdcall;
  public
    { Public declarations }
    tempApp: ILoodsmanApplication;
    constructor CreateNonModal(_app: ILoodsmanApplication);
  end;

procedure menu_ShowNonModalWindow(const PluginCall: IPluginCall); stdcall; export;
procedure UnloadNonModalWindow;

var
  frmNonModalWindow: TfrmNonModalWindow=nil;

implementation

uses
  LoodsmanBuffer, PDMObjects_TLB;
{$R *.dfm}

procedure menu_ShowNonModalWindow(const PluginCall: IPluginCall); stdcall; export;
begin
  if not Assigned(frmNonModalWindow) then
    frmNonModalWindow := TfrmNonModalWindow.CreateNonModal(PluginCall as ILoodsmanApplication);
  frmNonModalWindow.Show;
end;

procedure UnloadNonModalWindow;
begin
  if Assigned(frmNonModalWindow) then
    FreeAndNil(frmNonModalWindow);  
end;

procedure TfrmNonModalWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RevokeDragDrop(Self.Handle);
  Action := caHide;
end;

procedure TfrmNonModalWindow.FormDestroy(Sender: TObject);
begin
  Application.Handle := 0;
  tempApp := nil;
end;

procedure TfrmNonModalWindow.FormShow(Sender: TObject);
begin
  OleCheck(RegisterDragDrop(Self.Handle, Self));
end;

procedure TfrmNonModalWindow.btnCancelClick(Sender: TObject);
begin
   Self.ModalResult := mrCancel;
   Close;
end;

procedure TfrmNonModalWindow.btnOKClick(Sender: TObject);
begin
   Self.ModalResult := mrOk;
  Close;
end;

constructor TfrmNonModalWindow.CreateNonModal(_app: ILoodsmanApplication);
begin
  tempApp := _app;
  inherited Create(nil);

end;

procedure TfrmNonModalWindow.CreateParams(var Params: TCreateParams);
begin
  inherited;

  Params.Style := Params.Style or WS_OVERLAPPED;

  Application.Handle := tempApp.AppHandle;
  Params.WndParent := tempApp.MainHandle;

end;

function TfrmNonModalWindow.DragEnter(const dataObj: IDataObject; grfKeyState: Integer; pt: TPoint; var dwEffect: Integer): HResult;
var
  FormatEtc: TFormatEtc;
begin
  Result := S_FALSE;
  with FormatEtc do
  begin
    cfFormat := TLoodsmanBuffer.GetDataFormat;
    ptd := nil;
    dwAspect := DVASPECT_CONTENT;
    lindex := -1;
    tymed := TYMED_HGLOBAL;
  end;
  if dataObj.QueryGetData(FormatEtc) = S_OK then
    Result := S_OK;
end;

function TfrmNonModalWindow.DragLeave: HResult;
begin
  Result := S_OK;
end;

function TfrmNonModalWindow.DragOver(grfKeyState: Integer; pt: TPoint; var dwEffect: Integer): HResult;
begin
  dwEffect := DROPEFFECT_MOVE;
  Result := S_OK;
end;

function TfrmNonModalWindow.Drop(const dataObj: IDataObject; grfKeyState: Longint; pt: TPoint; var dwEffect: Longint): HResult;
var
  aFmtEtc: TFORMATETC;
  aStgMed: TSTGMEDIUM;
  pData: PChar;
  b: iLoodsmanBuffer;
  Stream: TMemoryStream;
  LoodsmanBufferContent: ILoodsmanBufferContentPool;
  LoodsmanBufferContentItem: ILoodsmanBufferContentItem;
  i, j: Integer;
  sClass: string;
const
  OBJECT_STRINGS: array[1..7] of string = ('PDMOBJECT', 'PDMLINK', 'FILE', 'TASK', 'WFROUTE', 'WFTASK', 'MAIL');
begin



   {Make certain the data rendering is available}
  if (dataObj = nil) then
    raise Exception.Create('IDataObject-Pointer is not valid!');
  with aFmtEtc do
  begin
    cfFormat := TLoodsmanBuffer.GetDataFormat; //CF_TEXT;
    ptd := nil;
    dwAspect := DVASPECT_CONTENT;
    lindex := -1;
    tymed := TYMED_HGLOBAL;
  end;
   {Get the data}
  OleCheck(dataObj.GetData(aFmtEtc, aStgMed));
  try
     {Lock the global memory handle to get a pointer to the data}
    pData := GlobalLock(aStgMed.hGlobal);

    b := TLoodsmanBuffer.create;
    try

      Stream := TMemoryStream.Create();
      try
        Stream.WriteBuffer(pData^, GlobalSize(aStgMed.hGlobal));
        Stream.Position := 0;
        b.FromStream(Stream);
      finally
        FreeAndNil(Stream);
      end;

      for j := LOW(OBJECT_STRINGS) to High(OBJECT_STRINGS) do
      begin
        sClass := OBJECT_STRINGS[j];
        if b.HasContent(OBJECT_STRINGS[j]) then
        begin
          LoodsmanBufferContent := b.getContent(OBJECT_STRINGS[j]);
          for i := 0 to LoodsmanBufferContent.getItemCount - 1 do
          begin
            LoodsmanBufferContentItem := LoodsmanBufferContent.getItem(i);
            Self.mmo1.Lines.Add(Format('%s %d (%s)', [LoodsmanBufferContentItem.getContentType, LoodsmanBufferContentItem.getContentItemID, LoodsmanBufferContentItem.getContentItemCaption]));
          end;
        end;
      end;

    finally
      b := nil;
    end;

  finally
     {Finished with the pointer}
    GlobalUnlock(aStgMed.hGlobal);
     {Free the memory}
    ReleaseStgMedium(aStgMed);
  end;
  Result := S_OK;
end;

end.

