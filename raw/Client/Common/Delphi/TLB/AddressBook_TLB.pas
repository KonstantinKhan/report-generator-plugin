unit AddressBook_TLB;

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
// File generated on 01.11.2025 9:44:17 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Projects\Git\source\ClientSide\Client\Frames\AddressBook\AddressBook (1)
// LIBID: {0DD4DDE3-242F-4BD7-9E43-D1B19356FDF4}
// LCID: 0
// Helpfile:
// HelpString: AddressBook Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 DataProvider, (DataProvider.dll)
//   (3) v1.0 Loodsman, (C:\Program Files (x86)\ASCON\Loodsman\Client\Loodsman.exe)
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
  AddressBookMajorVersion = 1;
  AddressBookMinorVersion = 0;

  LIBID_AddressBook: TGUID = '{0DD4DDE3-242F-4BD7-9E43-D1B19356FDF4}';

  IID_IAddressBookService: TGUID = '{5923052A-DDB4-405C-8811-AFA443243E30}';
  CLASS_AddressBookService: TGUID = '{26E7826B-C39D-4163-A4D3-34A730B7CC88}';
  IID_IAddressBookElement: TGUID = '{1B6A0E92-AAD9-4C05-9F1A-D30A9334CA34}';
  IID_IAddressBookElementCollection: TGUID = '{4F653E6B-61D4-40A5-BFEA-3EB9BBAF458E}';
  IID_IAddressBookSelectedResult: TGUID = '{3BEEE0F2-1A47-4322-9DA8-0A09DEE82D21}';
  CLASS_AddressBookElement: TGUID = '{CA52711E-6360-4489-AD16-CF53072C6373}';
  CLASS_AddressBookElementCollection: TGUID = '{5C3AE4D1-3144-4B5C-AEF6-BE8A72F8B37E}';
  IID_IAddressBookRestrictedFilter: TGUID = '{843EC5C5-21DB-426E-868D-640CB66903B2}';
  CLASS_AddressBookSelectedResult: TGUID = '{A2E6EE95-65F5-4777-9D36-857B63D94D93}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum AddressBookElementType
type
  AddressBookElementType = TOleEnum;
const
  abetUser = $00000000;
  abetPost = $00000001;
  abetUnit = $00000002;
  abetRole = $00000003;

// Constants for enum AddressBookMode
type
  AddressBookMode = TOleEnum;
const
  abSingleUser = $00000000;
  abMultiUsers = $00000001;
  abSinglePost = $00000002;
  abMultiPosts = $00000003;
  abSingleUnitStruct = $00000004;
  abMultiUnitStruct = $00000005;
  abSingleUserPost = $00000006;
  abMultiUsersPosts = $00000007;
  abSingleUnit = $00000008;
  abMultiUnits = $00000009;
  abSingleRole = $0000000A;
  abMultiRole = $0000000B;
  abSinglePostRole = $0000000C;
  abMultiPostRole = $0000000D;
  abSingleRoleUser = $0000000E;
  abMultiRoleUsers = $0000000F;
  abSingleUserPostRole = $00000010;
  abMultiUserPostRole = $00000011;

// Constants for enum AddressBookSelectMode
type
  AddressBookSelectMode = TOleEnum;
const
  smCheckBox = $00000000;
  smClickSelect = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IAddressBookService = interface;
  IAddressBookServiceDisp = dispinterface;
  IAddressBookElement = interface;
  IAddressBookElementDisp = dispinterface;
  IAddressBookElementCollection = interface;
  IAddressBookElementCollectionDisp = dispinterface;
  IAddressBookSelectedResult = interface;
  IAddressBookSelectedResultDisp = dispinterface;
  IAddressBookRestrictedFilter = interface;
  IAddressBookRestrictedFilterDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  AddressBookService = IAddressBookService;
  AddressBookElement = IAddressBookElement;
  AddressBookElementCollection = IAddressBookElementCollection;
  AddressBookSelectedResult = IAddressBookSelectedResult;


// *********************************************************************//
// Interface: IAddressBookService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5923052A-DDB4-405C-8811-AFA443243E30}
// *********************************************************************//
  IAddressBookService = interface(IDispatch)
    ['{5923052A-DDB4-405C-8811-AFA443243E30}']
    function Execute(const Connection: ISimpleAPI; Mode: AddressBookMode;
                     ParentApplicationHandle: Integer;
                     const RestrictedFilter: IAddressBookRestrictedFilter): IAddressBookSelectedResult; safecall;
    procedure SetSelectMode(smValue: AddressBookSelectMode); safecall;
    procedure SetFilterSignRole(inSignRoleId: Integer); safecall;
    procedure ShowUserProperties(const saConnection: ISimpleAPI; inUserId: Integer;
                                 boReadOnly: WordBool; inParentApplicationHandle: Integer); safecall;
    function Get_HeaderText: WideString; safecall;
    procedure Set_HeaderText(const Value: WideString); safecall;
    procedure SetFilterRole(inRoleId: Integer); safecall;
    procedure SetFilterPost(inPostId: Integer); safecall;
    property HeaderText: WideString read Get_HeaderText write Set_HeaderText;
  end;

// *********************************************************************//
// DispIntf:  IAddressBookServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5923052A-DDB4-405C-8811-AFA443243E30}
// *********************************************************************//
  IAddressBookServiceDisp = dispinterface
    ['{5923052A-DDB4-405C-8811-AFA443243E30}']
    function Execute(const Connection: ISimpleAPI; Mode: AddressBookMode;
                     ParentApplicationHandle: Integer;
                     const RestrictedFilter: IAddressBookRestrictedFilter): IAddressBookSelectedResult; dispid 201;
    procedure SetSelectMode(smValue: AddressBookSelectMode); dispid 202;
    procedure SetFilterSignRole(inSignRoleId: Integer); dispid 203;
    procedure ShowUserProperties(const saConnection: ISimpleAPI; inUserId: Integer;
                                 boReadOnly: WordBool; inParentApplicationHandle: Integer); dispid 204;
    property HeaderText: WideString dispid 205;
    procedure SetFilterRole(inRoleId: Integer); dispid 206;
    procedure SetFilterPost(inPostId: Integer); dispid 207;
  end;

// *********************************************************************//
// Interface: IAddressBookElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B6A0E92-AAD9-4C05-9F1A-D30A9334CA34}
// *********************************************************************//
  IAddressBookElement = interface(IDispatch)
    ['{1B6A0E92-AAD9-4C05-9F1A-D30A9334CA34}']
    function Get_ElementType: AddressBookElementType; safecall;
    function Get_ElementId: Integer; safecall;
    function Get_ElementName: WideString; safecall;
    function Get_UserName: WideString; safecall;
    function Get_FullUserName: WideString; safecall;
    function Get_UserStatus: Integer; safecall;
    function Get_ElementParentId: Integer; safecall;
    function Get_ElementParentName: WideString; safecall;
    function Get_ElementParentType: AddressBookElementType; safecall;
    function Get_IsLeaderPost: WordBool; safecall;
    function Get_ElementParent: IAddressBookElement; safecall;
    property ElementType: AddressBookElementType read Get_ElementType;
    property ElementId: Integer read Get_ElementId;
    property ElementName: WideString read Get_ElementName;
    property UserName: WideString read Get_UserName;
    property FullUserName: WideString read Get_FullUserName;
    property UserStatus: Integer read Get_UserStatus;
    property ElementParentId: Integer read Get_ElementParentId;
    property ElementParentName: WideString read Get_ElementParentName;
    property ElementParentType: AddressBookElementType read Get_ElementParentType;
    property IsLeaderPost: WordBool read Get_IsLeaderPost;
    property ElementParent: IAddressBookElement read Get_ElementParent;
  end;

// *********************************************************************//
// DispIntf:  IAddressBookElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B6A0E92-AAD9-4C05-9F1A-D30A9334CA34}
// *********************************************************************//
  IAddressBookElementDisp = dispinterface
    ['{1B6A0E92-AAD9-4C05-9F1A-D30A9334CA34}']
    property ElementType: AddressBookElementType readonly dispid 201;
    property ElementId: Integer readonly dispid 202;
    property ElementName: WideString readonly dispid 203;
    property UserName: WideString readonly dispid 101;
    property FullUserName: WideString readonly dispid 102;
    property UserStatus: Integer readonly dispid 103;
    property ElementParentId: Integer readonly dispid 204;
    property ElementParentName: WideString readonly dispid 205;
    property ElementParentType: AddressBookElementType readonly dispid 206;
    property IsLeaderPost: WordBool readonly dispid 207;
    property ElementParent: IAddressBookElement readonly dispid 208;
  end;

// *********************************************************************//
// Interface: IAddressBookElementCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F653E6B-61D4-40A5-BFEA-3EB9BBAF458E}
// *********************************************************************//
  IAddressBookElementCollection = interface(IDispatch)
    ['{4F653E6B-61D4-40A5-BFEA-3EB9BBAF458E}']
    function Get_Items(Index: Integer): IAddressBookElement; safecall;
    function Get_Count: Integer; safecall;
    property Items[Index: Integer]: IAddressBookElement read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IAddressBookElementCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F653E6B-61D4-40A5-BFEA-3EB9BBAF458E}
// *********************************************************************//
  IAddressBookElementCollectionDisp = dispinterface
    ['{4F653E6B-61D4-40A5-BFEA-3EB9BBAF458E}']
    property Items[Index: Integer]: IAddressBookElement readonly dispid 202;
    property Count: Integer readonly dispid 201;
  end;

// *********************************************************************//
// Interface: IAddressBookSelectedResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3BEEE0F2-1A47-4322-9DA8-0A09DEE82D21}
// *********************************************************************//
  IAddressBookSelectedResult = interface(IDispatch)
    ['{3BEEE0F2-1A47-4322-9DA8-0A09DEE82D21}']
    function Get_hResult: SYSINT; safecall;
    function Get_Collection: IAddressBookElementCollection; safecall;
    procedure Clear; safecall;
    property hResult: SYSINT read Get_hResult;
    property Collection: IAddressBookElementCollection read Get_Collection;
  end;

// *********************************************************************//
// DispIntf:  IAddressBookSelectedResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3BEEE0F2-1A47-4322-9DA8-0A09DEE82D21}
// *********************************************************************//
  IAddressBookSelectedResultDisp = dispinterface
    ['{3BEEE0F2-1A47-4322-9DA8-0A09DEE82D21}']
    property hResult: SYSINT readonly dispid 201;
    property Collection: IAddressBookElementCollection readonly dispid 202;
    procedure Clear; dispid 101;
  end;

// *********************************************************************//
// Interface: IAddressBookRestrictedFilter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {843EC5C5-21DB-426E-868D-640CB66903B2}
// *********************************************************************//
  IAddressBookRestrictedFilter = interface(IDispatch)
    ['{843EC5C5-21DB-426E-868D-640CB66903B2}']
    function RestrictedFilter(const AddressBookCollection: AddressBookElementCollection): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAddressBookRestrictedFilterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {843EC5C5-21DB-426E-868D-640CB66903B2}
// *********************************************************************//
  IAddressBookRestrictedFilterDisp = dispinterface
    ['{843EC5C5-21DB-426E-868D-640CB66903B2}']
    function RestrictedFilter(const AddressBookCollection: AddressBookElementCollection): WordBool; dispid 201;
  end;

// *********************************************************************//
// The Class CoAddressBookService provides a Create and CreateRemote method to
// create instances of the default interface IAddressBookService exposed by
// the CoClass AddressBookService. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAddressBookService = class
    class function Create: IAddressBookService;
    class function CreateRemote(const MachineName: string): IAddressBookService;
  end;

// *********************************************************************//
// The Class CoAddressBookElement provides a Create and CreateRemote method to
// create instances of the default interface IAddressBookElement exposed by
// the CoClass AddressBookElement. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAddressBookElement = class
    class function Create: IAddressBookElement;
    class function CreateRemote(const MachineName: string): IAddressBookElement;
  end;

// *********************************************************************//
// The Class CoAddressBookElementCollection provides a Create and CreateRemote method to
// create instances of the default interface IAddressBookElementCollection exposed by
// the CoClass AddressBookElementCollection. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAddressBookElementCollection = class
    class function Create: IAddressBookElementCollection;
    class function CreateRemote(const MachineName: string): IAddressBookElementCollection;
  end;

// *********************************************************************//
// The Class CoAddressBookSelectedResult provides a Create and CreateRemote method to
// create instances of the default interface IAddressBookSelectedResult exposed by
// the CoClass AddressBookSelectedResult. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAddressBookSelectedResult = class
    class function Create: IAddressBookSelectedResult;
    class function CreateRemote(const MachineName: string): IAddressBookSelectedResult;
  end;

implementation

uses System.Win.ComObj;

class function CoAddressBookService.Create: IAddressBookService;
begin
  Result := CreateComObject(CLASS_AddressBookService) as IAddressBookService;
end;

class function CoAddressBookService.CreateRemote(const MachineName: string): IAddressBookService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AddressBookService) as IAddressBookService;
end;

class function CoAddressBookElement.Create: IAddressBookElement;
begin
  Result := CreateComObject(CLASS_AddressBookElement) as IAddressBookElement;
end;

class function CoAddressBookElement.CreateRemote(const MachineName: string): IAddressBookElement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AddressBookElement) as IAddressBookElement;
end;

class function CoAddressBookElementCollection.Create: IAddressBookElementCollection;
begin
  Result := CreateComObject(CLASS_AddressBookElementCollection) as IAddressBookElementCollection;
end;

class function CoAddressBookElementCollection.CreateRemote(const MachineName: string): IAddressBookElementCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AddressBookElementCollection) as IAddressBookElementCollection;
end;

class function CoAddressBookSelectedResult.Create: IAddressBookSelectedResult;
begin
  Result := CreateComObject(CLASS_AddressBookSelectedResult) as IAddressBookSelectedResult;
end;

class function CoAddressBookSelectedResult.CreateRemote(const MachineName: string): IAddressBookSelectedResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AddressBookSelectedResult) as IAddressBookSelectedResult;
end;

end.

