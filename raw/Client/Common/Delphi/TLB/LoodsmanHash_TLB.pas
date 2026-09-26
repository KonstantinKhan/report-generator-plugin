unit LoodsmanHash_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 31.08.2022 11:55:52 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Projects\22.2\source\ClientSide\Client\Hash\LodsmanHashedData (1)
// LIBID: {D879B675-3C38-4AF1-B2A6-D4CAEB6917CA}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 DataProvider, (DataProvider.dll)
//   (3) v1.0 Loodsman, (C:\Program Files (x86)\ASCON\Loodsman\Client\Loodsman.exe)
//   (4) v4.0 StdVCL, (stdvcl40.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, DataProvider_TLB, Loodsman_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer,
Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  LoodsmanHashMajorVersion = 1;
  LoodsmanHashMinorVersion = 0;

  LIBID_LoodsmanHash: TGUID = '{D879B675-3C38-4AF1-B2A6-D4CAEB6917CA}';

  IID_ILodsmanHashedData: TGUID = '{184C5AC0-1F27-4AAC-BA5D-E1858833341A}';
  CLASS_LodsmanHashedData: TGUID = '{4D65C660-AA5E-4E9A-996E-3F8690EBF94F}';
  IID_IAlgorithmInfo: TGUID = '{70EA78CF-93F5-4B74-8702-974F8243A852}';
  CLASS_AlgorithmInfo: TGUID = '{CDACB099-6302-46E4-868E-9C38C9B12C58}';
  IID_IAlgorithmInfoCollection: TGUID = '{226732CA-F2C3-4A9F-9B67-50FF9EC09D28}';
  CLASS_AlgorithmInfoCollection: TGUID = '{4953DF9C-8B16-4C45-BEAC-9C1E261C8953}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ILodsmanHashedData = interface;
  ILodsmanHashedDataDisp = dispinterface;
  IAlgorithmInfo = interface;
  IAlgorithmInfoDisp = dispinterface;
  IAlgorithmInfoCollection = interface;
  IAlgorithmInfoCollectionDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  LodsmanHashedData = ILodsmanHashedData;
  AlgorithmInfo = IAlgorithmInfo;
  AlgorithmInfoCollection = IAlgorithmInfoCollection;


// *********************************************************************//
// Interface: ILodsmanHashedData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {184C5AC0-1F27-4AAC-BA5D-E1858833341A}
// *********************************************************************//
  ILodsmanHashedData = interface(IDispatch)
    ['{184C5AC0-1F27-4AAC-BA5D-E1858833341A}']
    function GetHashedData(const AlgId: WideString; const FilePath: WideString): WideString; safecall;
    function GetAlgList: IAlgorithmInfoCollection; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILodsmanHashedDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {184C5AC0-1F27-4AAC-BA5D-E1858833341A}
// *********************************************************************//
  ILodsmanHashedDataDisp = dispinterface
    ['{184C5AC0-1F27-4AAC-BA5D-E1858833341A}']
    function GetHashedData(const AlgId: WideString; const FilePath: WideString): WideString; dispid 202;
    function GetAlgList: IAlgorithmInfoCollection; dispid 203;
  end;

// *********************************************************************//
// Interface: IAlgorithmInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70EA78CF-93F5-4B74-8702-974F8243A852}
// *********************************************************************//
  IAlgorithmInfo = interface(IDispatch)
    ['{70EA78CF-93F5-4B74-8702-974F8243A852}']
    function Get_AlgID: WideString; safecall;
    function Get_AlgorithmDisplayName: WideString; safecall;
    function Get_PluginModule: WideString; safecall;
    function Get_PluginInfo: WideString; safecall;
    function GetHash(const fileName: WideString): WideString; safecall;
    property AlgID: WideString read Get_AlgID;
    property AlgorithmDisplayName: WideString read Get_AlgorithmDisplayName;
    property PluginModule: WideString read Get_PluginModule;
    property PluginInfo: WideString read Get_PluginInfo;
  end;

// *********************************************************************//
// DispIntf:  IAlgorithmInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70EA78CF-93F5-4B74-8702-974F8243A852}
// *********************************************************************//
  IAlgorithmInfoDisp = dispinterface
    ['{70EA78CF-93F5-4B74-8702-974F8243A852}']
    property AlgID: WideString readonly dispid 201;
    property AlgorithmDisplayName: WideString readonly dispid 202;
    property PluginModule: WideString readonly dispid 203;
    property PluginInfo: WideString readonly dispid 204;
    function GetHash(const fileName: WideString): WideString; dispid 205;
  end;

// *********************************************************************//
// Interface: IAlgorithmInfoCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {226732CA-F2C3-4A9F-9B67-50FF9EC09D28}
// *********************************************************************//
  IAlgorithmInfoCollection = interface(IDispatch)
    ['{226732CA-F2C3-4A9F-9B67-50FF9EC09D28}']
    function Get_Get(index: Integer): IAlgorithmInfo; safecall;
    function Get_Count: Integer; safecall;
    function FindById(const Id: WideString): IAlgorithmInfo; safecall;
    property Get[index: Integer]: IAlgorithmInfo read Get_Get;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IAlgorithmInfoCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {226732CA-F2C3-4A9F-9B67-50FF9EC09D28}
// *********************************************************************//
  IAlgorithmInfoCollectionDisp = dispinterface
    ['{226732CA-F2C3-4A9F-9B67-50FF9EC09D28}']
    property Get[index: Integer]: IAlgorithmInfo readonly dispid 201;
    property Count: Integer readonly dispid 202;
    function FindById(const Id: WideString): IAlgorithmInfo; dispid 203;
  end;

// *********************************************************************//
// The Class CoLodsmanHashedData provides a Create and CreateRemote method to
// create instances of the default interface ILodsmanHashedData exposed by
// the CoClass LodsmanHashedData. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoLodsmanHashedData = class
    class function Create: ILodsmanHashedData;
    class function CreateRemote(const MachineName: string): ILodsmanHashedData;
  end;

// *********************************************************************//
// The Class CoAlgorithmInfo provides a Create and CreateRemote method to
// create instances of the default interface IAlgorithmInfo exposed by
// the CoClass AlgorithmInfo. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAlgorithmInfo = class
    class function Create: IAlgorithmInfo;
    class function CreateRemote(const MachineName: string): IAlgorithmInfo;
  end;

// *********************************************************************//
// The Class CoAlgorithmInfoCollection provides a Create and CreateRemote method to
// create instances of the default interface IAlgorithmInfoCollection exposed by
// the CoClass AlgorithmInfoCollection. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAlgorithmInfoCollection = class
    class function Create: IAlgorithmInfoCollection;
    class function CreateRemote(const MachineName: string): IAlgorithmInfoCollection;
  end;

implementation

uses System.Win.ComObj;

class function CoLodsmanHashedData.Create: ILodsmanHashedData;
begin
  Result := CreateComObject(CLASS_LodsmanHashedData) as ILodsmanHashedData;
end;

class function CoLodsmanHashedData.CreateRemote(const MachineName: string): ILodsmanHashedData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LodsmanHashedData) as ILodsmanHashedData;
end;

class function CoAlgorithmInfo.Create: IAlgorithmInfo;
begin
  Result := CreateComObject(CLASS_AlgorithmInfo) as IAlgorithmInfo;
end;

class function CoAlgorithmInfo.CreateRemote(const MachineName: string): IAlgorithmInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AlgorithmInfo) as IAlgorithmInfo;
end;

class function CoAlgorithmInfoCollection.Create: IAlgorithmInfoCollection;
begin
  Result := CreateComObject(CLASS_AlgorithmInfoCollection) as IAlgorithmInfoCollection;
end;

class function CoAlgorithmInfoCollection.CreateRemote(const MachineName: string): IAlgorithmInfoCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AlgorithmInfoCollection) as IAlgorithmInfoCollection;
end;

end.

