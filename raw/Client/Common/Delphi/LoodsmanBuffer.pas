unit LoodsmanBuffer;

interface

uses Classes, Clipbrd, superobject;

type

  TClipboardHelper = class helper for Tclipboard
    procedure help_AddAsText(const Value: string);
    procedure help_AddAsUnicodeText(const Value: string);

    procedure help_AddBuffer(Format: Word; var Buffer; Size: Integer);
    procedure help_AddAsHandle(Format: Word; Value: THandle);
  end;

  TBufferOperation = (opUnknown, opCopy, opCut, opDrag);

// элемент контента
  ILoodsmanBufferContentItem = interface
    function getContentType: string;
    function getContentItemID: Integer;
    function getContentItemCaption: string;
    function getContentItemData: string;
    function getContentItemTag: Integer;
  end;

// блок  контента
  ILoodsmanBufferContentPool = interface
    function getContentType: string;
    function getItemCount: Integer;
    function getItem(index: Integer): ILoodsmanBufferContentItem;
    function AddItem(ContentItemID: Integer;
      ContentItemCaption: string;
      ContentItemData: string;
      ContentItemTag: Integer): Integer;
    procedure ClearContent;

  end;

// iбуфер
  ILoodsmanBuffer = interface
    function getSourceID: TGUID;     // id источника
    procedure setSourceID(g: TGUID); // id источника
    procedure SetBufferOperation(op: TBufferOperation);
    function GetBufferOperation: TBufferOperation;

    function getDBName: string; // имя БД
    function setDBName(DBName: string): string; // имя БД

    procedure InitData(variantArray: Olevariant);
    function HasContent(ContentType: string): Boolean; // наличие блока данных типа
    function getContent(ContentType: string): ILoodsmanBufferContentPool; // получение блока данных типа
    function getPoolCount: Integer;
    function getPoolItem(index: Integer): ILoodsmanBufferContentPool;
    procedure Push(const text: String = '');
    procedure Pop;
    function asString: string;
    function asVariantArray: Olevariant;
    function asStream: TStream;

    function AddItem(ContentType: string;
      ContentItemID: Integer;
      ContentItemCaption: string;
      ContentItemData: string;
      ContentItemTag: Integer): Integer;
    procedure Clear;
    procedure FromStream(AStream: TStream);

  end;

// писатель читатель
  iLoodsmanBufferProvider = interface
    procedure ReadLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer);
    procedure WriteLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer);

  end;

// ===========================================

  TLoodsmanBufferContentItem = class(TInterfacedObject, ILoodsmanBufferContentItem)
  private
    fContentType       : string;
    fContentItemID     : Integer;
    fContentItemCaption: string;
    fContentItemData   : string;
    fContentItemTag    : Integer;
  public
    function getContentType: string;
    function getContentItemID: Integer;
    function getContentItemCaption: string;
    function getContentItemData: string;
    function getContentItemTag: Integer;
    constructor Create(
      ContentType: string;
      ContentItemID: Integer;
      ContentItemCaption: string;
      ContentItemData: string;
      ContentItemTag: Integer
      );

  end;

// блок  контента
  TLoodsmanBufferContentPool = class(TInterfacedObject, ILoodsmanBufferContentPool)
  private
    Flist       : TInterfaceList;
    FcontentType: string;
  public
    function getContentType: string;
    function getItemCount: Integer;
    function getItem(index: Integer): ILoodsmanBufferContentItem;
    function AddItem(ContentItemID: Integer;
      ContentItemCaption: string;
      ContentItemData: string;
      ContentItemTag: Integer): Integer;

    procedure ClearContent;
    destructor Destroy; override;
    constructor create(contentType: String);

  end;

// абстрактный буфер с разделами
  TLoodsmanBuffer = class(TInterfacedObject, iLoodsmanBuffer)
  private
    fSourceID             : TGUID;
    FDBName               : string;
    FLoodsmanBufferContent: TInterfaceList;
    FBufferOperation      : TBufferOperation;
  public
    function getSourceID: TGUID;     // id источника
    procedure setSourceID(g: TGUID); // id источника
    function getDBName: string;      // имя БД
    function setDBName(DBName: string): string; // имя БД

    procedure SetBufferOperation(op: TBufferOperation); // тип операции
    function GetBufferOperation: TBufferOperation;

    function HasContent(ContentType: string): Boolean; // наличие блока данных типа
    function getContent(ContentType: string): ILoodsmanBufferContentPool; // получение блока данных типа
    function AddItem(ContentType: string;
      ContentItemID: Integer;
      ContentItemCaption: string;
      ContentItemData: string;
      ContentItemTag: Integer): Integer;
    procedure InitData(variantArray: Olevariant);
    procedure Push(const text: String = '');
    procedure Pop;             // вынуть
    function asString: string; // json
    function asVariantArray: Olevariant; // json -> поток -> вариантный массив байт
    function asStream: TStream;

    procedure FromStream(AStream: TStream);

    function getPoolCount: Integer;
    function getPoolItem(index: Integer): ILoodsmanBufferContentPool;

    procedure Clear;
    constructor create; overload;

    destructor Destroy; override;

    class function GetDataFormat(): integer;
    class function GetMyDataFormat(): integer;
  end;

// писатель читатель в JSON , буфер, трансформатор
  TJASONLoodsmanBufferProvider = class(TInterfacedObject, iLoodsmanBufferProvider)

  private
    Function asSuperObject(LoodsmanBuffer: ILoodsmanBuffer): ISuperObject;
    function StreamToVariant(stream: TStream): variant;
    procedure VariantToStream(AVariant: variant; stream: TStream);

  public

    procedure ReadLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer);
    Function asString(LoodsmanBuffer: ILoodsmanBuffer): String;
    Function asVariantArray(LoodsmanBuffer: ILoodsmanBuffer): OleVariant;
    function asStream(LoodsmanBuffer: ILoodsmanBuffer): TStream;
    procedure Stream2Buffer(S: TStream; LoodsmanBuffer: ILoodsmanBuffer);
    function Stream2Superobject(S: TStream): ISuperObject;
    procedure Superobject2Buffer(S: ISuperObject; LoodsmanBuffer: ILoodsmanBuffer);

    procedure WriteLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer); overload;
    procedure WriteLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer; text: String); overload;

  public
    destructor Destroy; override;
  end;

function Content2id(Content: String): Integer;
function id2Content(id: Integer): string;

const
  cLoodsmanClipboardFormat = 'LoodsmanBuffer';
  cLoodsmanMyDataClipboardFormat = 'LoodsmanBufferMyData';

  Content_id_NONE               = 0;
  Content_id_PDMOBJECT          = 1;
  Content_id_PDMLINK            = 2;
  Content_id_FILE               = 3;
  Content_id_ATTRIBUTE          = 4;
  Content_id_TASK               = 5;
  Content_id_WFROUTE            = 6;
  Content_id_MAIL               = 7;
  Content_id_USER               = 8;
  Content_id_WFTASK             = 9;
  Content_id_NOTE               = $0000000A;
  Content_id_PLANVERSION        = $0000000B;
  Content_id_PLAN               = $0000000C;
  Content_id_WORKLOAD           = $0000000D;
  Content_id_FAVORITE           = $0000000E;
  Content_id_EFFECTIVITYMANAGER = $0000000F;
  Content_id_REQUIREMENT        = $00000014;
  Content_id_EFFECTIVITY        = $00000015;
  Content_id_SEARCH_VAR         = 999;
  Content_id_MY_DATA            = 998;

  Content_NONE        = 'NONE';
  Content_PDMOBJECT   = 'PDMOBJECT';
  Content_PDMLINK     = 'PDMLINK';
  Content_FILE        = 'FILE';
  Content_ATTRIBUTE   = 'ATTRIBUTE';
  Content_WFTASK      = 'WFTASK';
  Content_WFROUTE     = 'WFROUTE';
  Content_MAIL        = 'MAIL';
  Content_USER        = 'USER';
  Content_TASK        = 'TASK';
  Content_PLAN        = 'PLAN';
  Content_EFFECTIVITY = 'EFFECTIVITY';
  Content_SEARCH_VAR  = 'SEARCH_VAR';
  Content_MY_DATA     = 'MY_DATA';

implementation


uses
  SysUtils, Windows, Variants;

function Content2id(Content: String): Integer;
begin
  Result := Content_id_NONE;
  if AnsiSameText(Content, Content_NONE) then
  begin
    Result := Content_id_NONE;
    Exit
  end;
  if AnsiSameText(Content, Content_PDMOBJECT) then
  begin
    Result := Content_id_PDMOBJECT;
    Exit
  end;
  if AnsiSameText(Content, Content_PDMLINK) then
  begin
    Result := Content_id_PDMLINK;
    Exit
  end;
  if AnsiSameText(Content, Content_FILE) then
  begin
    Result := Content_id_FILE;
    Exit
  end;
  if AnsiSameText(Content, Content_ATTRIBUTE) then
  begin
    Result := Content_id_ATTRIBUTE;
    Exit
  end;
  if AnsiSameText(Content, Content_WFTASK) then
  begin
    Result := Content_id_WFTASK;
    Exit
  end;
  if AnsiSameText(Content, Content_WFROUTE) then
  begin
    Result := Content_id_WFROUTE;
    Exit
  end;
  if AnsiSameText(Content, Content_MAIL) then
  begin
    Result := Content_id_MAIL;
    Exit
  end;
  if AnsiSameText(Content, Content_USER) then
  begin
    Result := Content_id_USER;
    Exit
  end;
  if AnsiSameText(Content, Content_TASK) then
  begin
    Result := Content_id_TASK;
    Exit
  end;
  if AnsiSameText(Content, Content_EFFECTIVITY) then
  begin
    Result := Content_id_EFFECTIVITY;
    Exit
  end;
  if AnsiSameText(Content, Content_SEARCH_VAR) then
  begin
    Result := Content_id_SEARCH_VAR;
    Exit
  end;
end;

function id2Content(id: Integer): string;
begin

  Result := Content_NONE;
  case id of
    Content_id_NONE: Result        := Content_NONE;
    Content_id_PDMOBJECT: Result   := Content_PDMOBJECT;
    Content_id_PDMLINK: Result     := Content_PDMLINK;
    Content_id_FILE: Result        := Content_FILE;
    Content_id_ATTRIBUTE: Result   := Content_ATTRIBUTE;
    Content_id_WFTASK: Result      := Content_WFTASK;
    Content_id_WFROUTE: Result     := Content_WFROUTE;
    Content_id_MAIL: Result        := Content_MAIL;
    Content_id_USER: Result        := Content_USER;
    Content_id_TASK: Result        := Content_TASK;
    Content_id_EFFECTIVITY: Result := Content_EFFECTIVITY;
    Content_id_SEARCH_VAR: Result  := Content_SEARCH_VAR;
  end;
end;

(*

procedure APPENDSetAsText(const Value: string);
    var  Buffer: Pointer;
          Size: Integer  ;

      Data: THandle;
      DataPtr: Pointer;
begin
  // SetBuffer(CF_TEXT, PChar(Value)^,);
    Buffer :=   PChar(Value)^;
    Size :=   Length(Value) + 1;
  //  SetBuffer(CF_TEXT, PChar(Value)^, Length(Value) + 1);
   // procedure appendText;     1

    begin
      try
          try
            Move(Buffer, DataPtr^, Size);
            //Adding;
            SetClipboardData(Format, Data);
          finally
          end;
        except
          raise;
        end;

    end;


end;    *)

// записать поток в буфер
procedure PushLoodsmanBuffer(S: Tstream; text: String);
var
  hbuf  : THandle;
  bufptr: Pointer;
 // mstream: TMemoryStream;
  cf: Cardinal;

begin
  cf := TLoodsmanBuffer.GetDataFormat();
 //RegisterClipboardFormat(cLoodsmanClipboardFormat);
 // mstream := TMemoryStream.Create;
  try
    {-- Записываем данные в mstream. --}
    hbuf := GlobalAlloc(GMEM_MOVEABLE, s.size);
    try
      bufptr := GlobalLock(hbuf);
      try
        S.Position := 0;
        S.ReadBuffer(bufptr^, s.size);

       // Clipboard.SetAsHandle(cf, hbuf);    //

        Clipboard.Clear;
        Clipboard.Open;
        try
          Clipboard.help_AddAsHandle(cf, hbuf); // custom data
          if text <> '' then
            Clipboard.help_AddAsUnicodeText(text); // text data

        finally
          Clipboard.Close;
        end;


       // Clipboard.SetTextBuf(pchar('test'));

      finally
        GlobalUnlock(hbuf);
      end;
    except
      GlobalFree(hbuf);
      raise;
    end;
  finally
    //mstream.Free;
  end;
end;

// прочитать из буфера
Function PopLoodsmanBuffer: TStream;
var
  hbuf  : THandle;
  bufptr: Pointer;
 // mstream: TMemoryStream;
  cf: Cardinal;
begin
  result := nil;
  cf     := TLoodsmanBuffer.GetDataFormat(); //RegisterClipboardFormat(cLoodsmanClipboardFormat);
  hbuf   := Clipboard.GetAsHandle(Cf);
  if hbuf <> 0 then
  begin
    bufptr := GlobalLock(hbuf);
    if bufptr <> nil then
    begin
      try
        result := TMemoryStream.Create;
        try
          result.WriteBuffer(bufptr^, GlobalSize(hbuf));
          result.Position := 0;
          {-- Читаем данные из mstream. --}
        finally
         // result.Free;
        end;
      finally
        GlobalUnlock(hbuf);
      end;
    end;
  end;
end;

{ TLoodsmanBufferProvider }

Function TJASONLoodsmanBufferProvider.AsString(LoodsmanBuffer: ILoodsmanBuffer): String;
begin
  Result := asSuperObject(LoodsmanBuffer).AsJSon(True, false);
end;

function TJASONLoodsmanBufferProvider.asSuperObject(LoodsmanBuffer: ILoodsmanBuffer): ISuperObject;

var
  i, j: Integer;

  soDataItem,
    //soDataItems,
  soPoolItem {,
    soPools }: ISuperObject;

   //  Contentitem : iSuperObject;
  ContentPool: ILoodsmanBufferContentPool;
  ContentItem: ILoodsmanBufferContentItem;
   //M : TMemoryStream;
begin
  // буфер
  result                      := TSuperObject.Create(stObject);
  result.AsObject.S['dbName'] := LoodsmanBuffer.getDBName;

  result.AsObject.S['BufferOperation'] := IntToStr(Ord(LoodsmanBuffer.GetBufferOperation));

  result.AsObject.S['SourceID'] := GUIDToString(LoodsmanBuffer.getSourceID);

  result['Content'] := TSuperObject.Create(stArray);
  for I             := 0 to LoodsmanBuffer.getPoolCount - 1 do
  begin
    ContentPool                 := LoodsmanBuffer.getPoolItem(i);
    soPoolItem                  := TSuperObject.Create(stObject);
    soPoolItem.S['ContentType'] := ContentPool.getContentType;

    soPoolItem['Items'] := TSuperObject.Create(stArray);
    for j               := 0 to ContentPool.getItemCount - 1 do
    begin
      ContentItem := ContentPool.getItem(j);
      soDataItem  := TSuperObject.Create(stObject);

      soDataItem.S['Type']    := ContentItem.getContentType;
      soDataItem.I['ID']      := ContentItem.getContentItemID;
      soDataItem.S['Caption'] := ContentItem.getContentItemCaption;
      soDataItem.S['Data']    := ContentItem.getContentItemData;
      soDataItem.I['Tag']     := ContentItem.getContentItemTag;

      soPoolItem['Items'].AsArray.Add(soDataItem);
    end;
    result['Content'].AsArray.Add(soPoolItem);
    soPoolItem := nil;
  end;
end;

function TJASONLoodsmanBufferProvider.asStream(LoodsmanBuffer: ILoodsmanBuffer): TStream;
begin
   //Result := Nil;
  Result := TMemoryStream.Create;
  asSuperObject(LoodsmanBuffer).SaveTo(Result, True, True);

end;

function TJASONLoodsmanBufferProvider.asVariantArray(LoodsmanBuffer: ILoodsmanBuffer): OleVariant;
begin
  Result := Null;
  Result := StreamToVariant(asStream(LoodsmanBuffer));
end;

destructor TJASONLoodsmanBufferProvider.Destroy;
begin

  inherited;
end;

procedure TJASONLoodsmanBufferProvider.ReadLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer);
var MS: TStream;
begin
  MS := PopLoodsmanBuffer;
  if MS <> nil then
  begin
    try
      if Assigned(LoodsmanBuffer) then
      begin
        LoodsmanBuffer.Clear();
        Superobject2Buffer(Stream2Superobject(MS), LoodsmanBuffer);
      end;
    finally
      FreeAndNil(MS);
    end;
  end;
end;

procedure TJASONLoodsmanBufferProvider.Superobject2Buffer(S: ISuperObject; LoodsmanBuffer: ILoodsmanBuffer);
var //FSO,
   //soPool : TSuperObject;
  iItem, iPools, iPool, iPoolItems: iSuperObject;
  stContentType                   : string;
  itemType                        : string;
  itemID                          : Integer;
  itemCaption                     : string;
  itemData                        : string;
  itemTag                         : Integer;
  j, i                            : Integer;
  strop                           : string;
begin
  if Assigned(LoodsmanBuffer) then
  begin
    LoodsmanBuffer.setDBName(s.AsObject.S['dbName']);
    LoodsmanBuffer.setSourceID(StringToGUID(s.AsObject.S['SourceID']));

    strop := s.AsObject.S['BufferOperation'];
    if strop = '' then
      LoodsmanBuffer.SetBufferOperation(opUnknown)
    else
      LoodsmanBuffer.SetBufferOperation(TBufferOperation(StrToInt(strop)));



//

    iPools := s['Content'];
    for i  := 0 to iPools.AsArray.Length - 1 do
    begin
      iPool         := iPools.AsArray.O[i];
      stContentType := iPool.AsObject.S['ContentType'];
      iPoolItems    := iPool.AsObject.O['Items'];
      for j         := 0 to iPoolItems.asarray.length - 1 do
      begin
        iItem       := iPoolItems.asarray.O[j];
        itemType    := iItem.S['Type'];
        itemID      := iItem.I['ID'];
        itemCaption := iItem.S['Caption'];
        itemData    := iItem.S['Data'];
        itemTag     := iItem.I['Tag'];
        LoodsmanBuffer.AddItem(stContentType, itemID, itemCaption, itemData, itemTag);
      end;
    end;
  end;
end;

procedure TJASONLoodsmanBufferProvider.Stream2Buffer(S: TStream; LoodsmanBuffer: ILoodsmanBuffer);
var FSO: ISuperObject;
begin
  FSO := Stream2Superobject(S);
  Superobject2Buffer(FSO, LoodsmanBuffer);
end;

function TJASONLoodsmanBufferProvider.Stream2Superobject(S: TStream): ISuperObject;
begin
  s.Position := 0;
  Result     := TSuperObject.ParseStream(s, true, true, nil, [], nil, stNull);
end;

function TJASONLoodsmanBufferProvider.StreamToVariant(stream: TStream): variant;
var
  p: PChar;
begin
  stream.Seek(0, 0);
  Result := VarArrayCreate([0, stream.Size - 1], VarByte);
  try
    p := VarArrayLock(Result);
    try
      stream.ReadBuffer(p^, stream.Size);
    finally
      VarArrayUnlock(Result);
    end;
  except
    Result := Unassigned;
  end;
end;

// Get contents of a variant and put it in a stream.
procedure TJASONLoodsmanBufferProvider.VariantToStream(AVariant: variant; stream: TStream);
var
  p : PChar;
  sz: integer;
begin
     // Check if variant contains data and is an array.
  if VarIsEmpty(AVariant) or VarIsNull(AVariant) or (not VarIsArray(AVariant)) then
    exit;

  sz := VarArrayHighBound(AVariant, 1);
  p  := VarArrayLock(AVariant);
  try
    stream.WriteBuffer(p^, sz + 1);
  finally
    VarArrayUnlock(AVariant);
  end;
end;

procedure TJASONLoodsmanBufferProvider.WriteLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer; text: String);
var FSO: iSuperObject;
  M    : TMemoryStream;
   // KILLME            : TStream;
begin
  M := TMemoryStream.Create;
  try
    FSO := asSuperObject(LoodsmanBuffer);
    try
      try
        FSO.SaveTo(M, true, true);
        PushLoodsmanBuffer(M, text);
      except
      end;
    finally
      FSO := nil;
    end;
  finally
    FreeAndNil(M);
  end;
end;

procedure TJASONLoodsmanBufferProvider.WriteLoodsmanBuffer(LoodsmanBuffer: ILoodsmanBuffer);
begin
  WriteLoodsmanBuffer(LoodsmanBuffer, '');
end;

{ TLoodsmanBufferContentItem }

constructor TLoodsmanBufferContentItem.Create(ContentType: string; ContentItemID: Integer; ContentItemCaption, ContentItemData: string; ContentItemTag: Integer);
begin
  fContentType        := ContentType;
  fContentItemID      := ContentItemID;
  fContentItemCaption := ContentItemCaption;
  fContentItemData    := ContentItemData;
  fContentItemTag     := ContentItemTag;
end;

function TLoodsmanBufferContentItem.getContentItemCaption: string;
begin
  Result := Self.fContentItemCaption;
end;

function TLoodsmanBufferContentItem.getContentItemData: string;
begin
  Result := Self.fContentItemData;
end;

function TLoodsmanBufferContentItem.getContentItemID: Integer;
begin
  Result := Self.fContentItemID;
end;

function TLoodsmanBufferContentItem.getContentItemTag: Integer;
begin
  Result := Self.fContentItemTag;
end;

function TLoodsmanBufferContentItem.getContentType: string;
begin
  Result := Self.fContentType;
end;

{ TLoodsmanBufferContent }

function TLoodsmanBufferContentPool.AddItem(ContentItemID: Integer; ContentItemCaption, ContentItemData: string; ContentItemTag: Integer): Integer;
begin
  Result := Flist.Add(iLoodsmanBufferContentItem(TLoodsmanBufferContentItem.Create(
    Self.FcontentType,
    ContentItemID,
    ContentItemCaption,
    ContentItemData,
    ContentItemTag
    )));
end;

procedure TLoodsmanBufferContentPool.ClearContent;
begin

end;

constructor TLoodsmanBufferContentPool.create(contentType: String);
begin
  inherited create;
  Flist        := TInterfaceList.Create;
  FcontentType := UpperCase(contentType);
end;

destructor TLoodsmanBufferContentPool.Destroy;
begin
  Flist.Clear;
  FreeAndNil(Flist);
  inherited;
end;

function TLoodsmanBufferContentPool.getContentType: string;
begin
  Result := Self.FcontentType;
end;

function TLoodsmanBufferContentPool.getItem(index: Integer): ILoodsmanBufferContentItem;
begin

  Result := nil;
  if index < Flist.Count then
    Result := iLoodsmanBufferContentItem(Flist.Items[index]);
end;

function TLoodsmanBufferContentPool.getItemCount: Integer;
begin
  Result := Flist.Count;
end;

{ TLoodsmanBuffer }

function TLoodsmanBuffer.AddItem(ContentType: string; ContentItemID: Integer; ContentItemCaption,
  ContentItemData: string; ContentItemTag: Integer): Integer;
var Content: iLoodsmanBufferContentPool;

begin

  Result  := -1;
  Content := Self.getContent(UpperCase(ContentType));
  if Content = nil then
  begin
    FLoodsmanBufferContent.Add(iLoodsmanBufferContentPool(TLoodsmanBufferContentPool.Create(UpperCase(ContentType))));
    Content := Self.getContent(UpperCase(ContentType));
  end;

  if Content <> nil then
  begin
    Result := Content.AddItem(ContentItemID, ContentItemCaption, ContentItemData, ContentItemTag);
  end;

end;

function TLoodsmanBuffer.asString: string;
begin
  with TJASONLoodsmanBufferProvider.Create do
  begin
    Result := asString(Self);
    Free;
  end;
end;

function TLoodsmanBuffer.asStream: TStream;
begin
  with TJASONLoodsmanBufferProvider.Create do
  begin
    Result := asStream(Self);
    Free;
  end;
end;

function TLoodsmanBuffer.asVariantArray: Olevariant;
begin
  with TJASONLoodsmanBufferProvider.Create do
  begin
    Result := asVariantArray(Self);
    Free;
  end;

end;

procedure TLoodsmanBuffer.Clear;
begin
  FLoodsmanBufferContent.Clear;
end;

constructor TLoodsmanBuffer.create;
begin
  inherited;
  FBufferOperation       := opUnknown;
  FLoodsmanBufferContent := TInterfaceList.Create;

end;

destructor TLoodsmanBuffer.Destroy;
begin

  FLoodsmanBufferContent.Clear;
  FreeAndNil(FLoodsmanBufferContent);
  inherited;
end;

procedure TLoodsmanBuffer.FromStream(AStream: TStream);
begin
  if Assigned(AStream) then
  begin
    Clear();
    with TJASONLoodsmanBufferProvider.Create do
    begin
      Stream2Buffer(AStream, self);
      Free;
    end;
  end;
end;

function TLoodsmanBuffer.GetBufferOperation: TBufferOperation;
begin
  Result := FBufferOperation;
end;

function TLoodsmanBuffer.getContent(ContentType: string): ILoodsmanBufferContentpool;
var x: Integer;
  z  : ILoodsmanBufferContentPool;
begin
  Result := nil;
  for x  := 0 to FLoodsmanBufferContent.Count - 1 do
  begin
    z := ILoodsmanBufferContentPool(FLoodsmanBufferContent[X]);
    if AnsiSameText(z.getContentType, ContentType) then
    begin
      Result := Z;
      Break;
    end;
  end;
end;

class function TLoodsmanBuffer.GetDataFormat: integer;
begin
  result := RegisterClipboardFormat(cLoodsmanClipboardFormat);
end;

function TLoodsmanBuffer.getDBName: string;
begin
  Result := FDBName;
end;

class function TLoodsmanBuffer.GetMyDataFormat: integer;
begin
  result := RegisterClipboardFormat(cLoodsmanMyDataClipboardFormat);
end;

function TLoodsmanBuffer.getPoolCount: Integer;
begin
  Result := 0;
  if FLoodsmanBufferContent <> nil then
    Result := FLoodsmanBufferContent.Count;
end;

function TLoodsmanBuffer.getPoolItem(index: Integer): ILoodsmanBufferContentPool;
begin
  Result := ILoodsmanBufferContentPool(FLoodsmanBufferContent[index])
end;

function TLoodsmanBuffer.getSourceID: TGUID;
begin
  Result := fSourceID;
end;

function TLoodsmanBuffer.HasContent(ContentType: string): Boolean;
begin
  Result := getContent(ContentType) <> nil;
end;

procedure TLoodsmanBuffer.InitData(variantArray: Olevariant);
var M: TMemoryStream;
  x  : ILoodsmanBuffer;
begin
  with TJASONLoodsmanBufferProvider.Create do
  begin
    M := TMemoryStream.Create;
    VariantToStream(variantArray, M);
    x := self;
    Stream2Buffer(M, x);
    FreeAndNil(M);
         //Free;
  end;
end;

procedure TLoodsmanBuffer.Pop;
begin
  with TJASONLoodsmanBufferProvider.Create do
  begin
    ReadLoodsmanBuffer(Self);
    Free;
  end;
end;

procedure TLoodsmanBuffer.Push(const text: String = '');
begin
  with TJASONLoodsmanBufferProvider.Create do
  begin
    WriteLoodsmanBuffer(Self, text);
    Free;
  end;
end;

procedure TLoodsmanBuffer.SetBufferOperation(op: TBufferOperation);
begin
  FBufferOperation := op;
end;

function TLoodsmanBuffer.setDBName(DBName: string): string;
begin
  FDBName := DBName;
  Result  := FDBName;
end;

procedure TLoodsmanBuffer.setSourceID(g: TGUID);
begin
  fSourceID := g;
end;

{ TClipboardHelper }

procedure TClipboardHelper.help_AddAsHandle(Format: Word; Value: THandle);
begin
  //Open;
  try
    //self.Adding;
    SetClipboardData(Format, Value);
  finally
   // Close;
  end;
end;

procedure TClipboardHelper.help_AddAsText(const Value: string);
begin
  help_AddBuffer(CF_TEXT, PChar(Value)^, Length(Value) + 1);
end;

procedure TClipboardHelper.help_AddAsUnicodeText(const Value: string);
var
  wtext: Widestring;
begin
  wText := Value;
  help_AddBuffer(CF_UNICODETEXT, wText[1], (Length(wText) + 1) * 2);
end;

procedure TClipboardHelper.help_AddBuffer(Format: Word; var Buffer; Size: Integer);
var
  Data   : THandle;
  DataPtr: Pointer;
begin
  Open;
  try
    Data := GlobalAlloc(GMEM_MOVEABLE + GMEM_DDESHARE, Size);
    try
      DataPtr := GlobalLock(Data);
      try
        Move(Buffer, DataPtr^, Size);
        //Adding;
        SetClipboardData(Format, Data);
      finally
        GlobalUnlock(Data);
      end;
    except
      GlobalFree(Data);
      raise;
    end;
  finally
    Close;
  end;
end;

end.
