{-------------------------------------------------------------------------------
 Unit Name: ShellObjHelper
 Author   : hans gulo (HG)
 Purpose  : Shell Object helper routines
-------------------------------------------------------------------------------}

unit ShellObjHelper;

interface

uses Windows, ShlObj, ActiveX, ShellAPI, Graphics;

type
  { from ShlObjIdl.h }
  IExtractImage = interface
    ['{BB2E617C-0920-11D1-9A0B-00C04FC2D6C1}']
    function GetLocation(Buffer: PWideChar;
                         BufferSize: DWORD;
                         var Priority: DWORD;
                         var Size: TSize;
                         ColorDepth: DWORD;
                         var Flags: DWORD): HResult; stdcall;
    function Extract(var BitmapHandle: HBITMAP): HResult; stdcall;
  end;

  IRunnableTask = interface
    ['{85788D00-6807-11D0-B810-00C04FD706EC}']
    function Run: HResult; stdcall;
    function Kill(fWait: BOOL): HResult; stdcall;
    function Suspend: HResult; stdcall;
    function Resume: HResult; stdcall;
    function IsRunning: Longint; stdcall;
  end;

// IShellFolder methods helper
function GetExtractImageItfPtr(const FileName: string;
  out XtractImage: IExtractImage): Boolean;
function GetFileLargeIcon(const FileName: string;
  out LargeIcon: TIcon): Boolean;
function ExtractImageGetFileThumbnail(const XtractImage: IExtractImage;
  ImgWidth, ImgHeight, ImgColorDepth: Integer; var Flags: DWORD;
  out RunnableTask: IRunnableTask; out Bmp: TBitmap): Boolean;

const
  { from ShlObjIdl.h }
  ITSAT_MAX_PRIORITY      = 2;
  ITSAT_MIN_PRIORITY      = 1;
  ITSAT_DEFAULT_PRIORITY  = 0;

  IEI_PRIORITY_MAX        = ITSAT_MAX_PRIORITY;
  IEI_PRIORITY_MIN        = ITSAT_MIN_PRIORITY;
  IEIT_PRIORITY_NORMAL    = ITSAT_DEFAULT_PRIORITY;

  IEIFLAG_ASYNC     = $001; // ask the extractor if it supports ASYNC extract
                            // (free threaded)
  IEIFLAG_CACHE     = $002; // returned from the extractor if it does NOT cache
                            // the thumbnail
  IEIFLAG_ASPECT    = $004; // passed to the extractor to beg it to render to
                            // the aspect ratio of the supplied rect
  IEIFLAG_OFFLINE   = $008; // if the extractor shouldn't hit the net to get
                            // any content needs for the rendering
  IEIFLAG_GLEAM     = $010; // does the image have a gleam? this will be
                            // returned if it does
  IEIFLAG_SCREEN    = $020; // render as if for the screen  (this is exlusive
                            // with IEIFLAG_ASPECT )
  IEIFLAG_ORIGSIZE  = $040; // render to the approx size passed, but crop if
                            // neccessary
  IEIFLAG_NOSTAMP   = $080; // returned from the extractor if it does NOT want
                            // an icon stamp on the thumbnail
  IEIFLAG_NOBORDER  = $100; // returned from the extractor if it does NOT want
                            // an a border around the thumbnail
  IEIFLAG_QUALITY   = $200; // passed to the Extract method to indicate that
                            // a slower, higher quality image is desired,
                            // re-compute the thumbnail

implementation

uses SysUtils, ComObj;

procedure GetShellFolderItfPtr(const FolderName: string; Malloc: IMalloc;
  out TargetFolder: IShellFolder); forward;

//qqq
function ShellFolderGetUIObjectOf(const ShellFolder: IShellFolder;
  cidl: DWORD; var PIDL: PItemIDList; riid: TGUID; out pv): Boolean;
begin
  Result := NOERROR = ShellFolder.GetUIObjectOf(0, cidl, PIDL, riid, nil, pv);
end;

procedure ShellFolderParseDisplayName(const ShellFolder: IShellFolder;
  const DisplayName: string; out PIDL: PItemIDList);
var Attributes, Eaten: DWORD;
begin
  OleCheck(ShellFolder.ParseDisplayName(0, nil,
    PWideChar(WideString(DisplayName)), Eaten, PIDL, Attributes));
end;

//qqq
function ShellFolderGetExtractImage(const ShellFolder: IShellFolder;
  const RelativeFileName: string; Malloc: IMalloc;
  out XtractImage: IExtractImage): Boolean;
var PIDL: PItemIDList;
begin
  ShellFolderParseDisplayName(ShellFolder, RelativeFileName, PIDL);
  Result := ShellFolderGetUIObjectOf(ShellFolder, 1, PIDL,
    IExtractImage, XtractImage);
  Malloc.Free(PIDL);
end;

function GetExtractImageItfPtr(const FileName: string;
  out XtractImage: IExtractImage): Boolean;
var
  TargetFolder: IShellFolder;
  FilePath: string;
  ItemIDList: PItemIDList;
  Malloc: IMalloc;
begin
  FilePath := IncludeTrailingPathDelimiter(ExtractFilePath(FileName));

  OleCheck(SHGetMalloc(Malloc));
  GetShellFolderItfPtr(FilePath, Malloc, TargetFolder);
  ShellFolderParseDisplayName(TargetFolder, ExtractFileName(FileName), ItemIDList);
  try
    Result := ShellFolderGetUIObjectOf(TargetFolder, 1, ItemIDList,
      IExtractImage, XtractImage);
  finally
    Malloc.Free(ItemIDList);
  end;
end;

function GetFileLargeIcon(const FileName: string; out LargeIcon: TIcon): Boolean;
var SFI: TSHFileInfo;
begin
  if SHGetFileInfo(PChar(FileName), FILE_ATTRIBUTE_ARCHIVE, SFI, SizeOf(SFI),
    SHGFI_ICON or SHGFI_LARGEICON) <> 0 then
    begin
      LargeIcon := TIcon.Create;
      LargeIcon.Handle := SFI.hIcon;
      Result := True;
    end
  else
    Result := False;
end;

function ExtractImageGetFileThumbnail(const XtractImage: IExtractImage;
  ImgWidth, ImgHeight, ImgColorDepth: Integer; var Flags: DWORD;
  out RunnableTask: IRunnableTask; out Bmp: TBitmap): Boolean;
var
  Size: TSize;
  //Buf: array[0..MAX_PATH] of WideChar;
  Buf: PWideChar;
  BmpHandle: HBITMAP;
  Priority: DWORD;
  GetLocationRes: HRESULT;
begin
  Result := False;
  RunnableTask := nil;
  Size.cx := ImgWidth;
  Size.cy := ImgHeight;
  Priority := IEIT_PRIORITY_NORMAL;
  Flags := Flags or IEIFLAG_ASYNC;

  buf := AllocMem(514);
  GetLocationRes := XtractImage.GetLocation(Buf, 512{Õsizeof(Buf)}, Priority, Size, ImgColorDepth, Flags);
  FreeMem(buf);

  if (GetLocationRes = NOERROR) or (GetLocationRes = E_PENDING) then
  begin
    if GetLocationRes = E_PENDING then
      begin
        { if QI for IRunnableTask succeed, we can use RunnableTask
          interface pointer later to kill running extraction process.
          We could spawn a new thread here to extract image. }
        if S_OK <> XtractImage.QueryInterface(IRunnableTask, RunnableTask) then
          RunnableTask := nil;
      end;
    Bmp := TBitmap.Create;
    try
      OleCheck(XtractImage.Extract(BmpHandle)); // This could consume a long time.
                                                // If RunnableTask is available
                                                // then calling Kill() method
                                                // will immediately abort the process.
      Bmp.Handle := BmpHandle;
      Result := True;
    except
      on E: EOleSysError do
        begin
          //-------------
          //OutputDebugString(PChar(string(E.ClassName) + ': ' + E.Message));
          //-------------
          FreeAndNil(Bmp);
          Result := False;
        end;
    else
      FreeAndNil(Bmp);
      raise;
    end; { try/except }
  end;
end;

function GetSysImgListIndex(const FileName: string): Integer;
var SFI: TSHFileInfo;
begin
  SHGetFileInfo(PChar(FileName), 0, SFI, SizeOf(TSHFileInfo), SHGFI_SYSICONINDEX);
  Result := SFI.iIcon;
end;

procedure GetShellFolderItfPtr(const FolderName: string; Malloc: IMalloc;
  out TargetFolder: IShellFolder);
var DesktopFolder: IShellFolder;
    ItemIDList: PItemIDList;
begin
  OleCheck(SHGetDesktopFolder(DesktopFolder));
  ShellFolderParseDisplayName(DesktopFolder, FolderName, ItemIDList);
  try
    OleCheck(DesktopFolder.BindToObject(ItemIDList, nil, IShellFolder, TargetFolder));
  finally
    Malloc.Free(ItemIDList);
  end;
end;

end.
