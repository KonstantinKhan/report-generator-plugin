unit Attributes_TLB;

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

// PASTLWTR : 1.2
// File generated on 15.12.2025 15:23:33 from Type Library described below.

// ************************************************************************  //
// Type Lib: ..\Attributes.tlb (1)
// LIBID: {D1AFF506-5F7A-476A-B559-1689DA07F614}
// LCID: 0
// Helpfile: 
// HelpString: Attributes Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 LoodsmanObjects, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\LoodsmanObjects.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, LoodsmanObjects_TLB, OleCtrls, OleServer, StdVCL, 
Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AttributesMajorVersion = 1;
  AttributesMinorVersion = 0;

  LIBID_Attributes: TGUID = '{D1AFF506-5F7A-476A-B559-1689DA07F614}';

  IID_IAttributesWindow: TGUID = '{DBC72EBD-6F9E-4BEC-BEC2-CE1949A31CFC}';
  DIID_IAttributesWindowEvents: TGUID = '{E849577B-3E60-433B-A98A-F16902483998}';
  CLASS_AttributesWindow: TGUID = '{3F4D67A9-3542-4985-AFFC-328650CFD922}';
  IID_IAttributeServiceDialogs: TGUID = '{C190D372-8FD3-4A57-A2A2-8C10C182A601}';
  CLASS_AttributeServiceDialogs: TGUID = '{CB9782DF-ECD9-4989-9439-FCF5BC4E265E}';
  IID_IModernAttributesWindow: TGUID = '{159167AE-BFD0-4FE4-9E56-016B01EAA933}';
  DIID_IModernAttributesWindowEvents: TGUID = '{CE82747D-05C0-412C-9257-45A328C55E46}';
  CLASS_ModernAttributesWindow: TGUID = '{5242EFF8-1DF0-4BE5-AD38-CEB18B70F946}';
  IID_ILoodsmanAttrNode: TGUID = '{B7C67257-B012-458B-B51A-3044993ECD40}';
  CLASS_LoodsmanAttrNode: TGUID = '{AC5CF649-6FD6-4799-BD38-4A03B0B75C48}';
  IID_ILoodsmanAttrNodeList: TGUID = '{9CEA02FB-404B-43CF-A54F-83F12989B8DE}';
  CLASS_LoodsmanAttrNodeList: TGUID = '{F0A022FB-34B9-4F36-A063-F4B15E9B1ED5}';
  IID_IViewParameters: TGUID = '{BF708EE1-9B4F-4745-B181-284B19BFE691}';
  CLASS_ViewParameters: TGUID = '{8AB09B65-F6A5-4DEE-836F-1C553CE54E28}';
  IID_ICompareAttrInfo: TGUID = '{9DCCBA72-4C83-4ADF-B3FB-0FA6E98E76A6}';
  CLASS_CompareAttrInfo: TGUID = '{79868B25-5AC2-464A-AC3F-A1A34462057A}';
  IID_ICompareAttrInfoList: TGUID = '{D6C4F645-5C0A-4D38-8121-95281B7CFEDF}';
  CLASS_CompareAttrInfoList: TGUID = '{021C6715-5435-4409-B185-DFB34A0CDAD1}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TxActiveFormBorderStyle
type
  TxActiveFormBorderStyle = TOleEnum;
const
  afbNone = $00000000;
  afbSingle = $00000001;
  afbSunken = $00000002;
  afbRaised = $00000003;

// Constants for enum TxPrintScale
type
  TxPrintScale = TOleEnum;
const
  poNone = $00000000;
  poProportional = $00000001;
  poPrintToFit = $00000002;

// Constants for enum TxMouseButton
type
  TxMouseButton = TOleEnum;
const
  mbLeft = $00000000;
  mbRight = $00000001;
  mbMiddle = $00000002;

// Constants for enum TxPopupMode
type
  TxPopupMode = TOleEnum;
const
  pmNone = $00000000;
  pmAuto = $00000001;
  pmExplicit = $00000002;

// Constants for enum TreeAttrStateType
type
  TreeAttrStateType = TOleEnum;
const
  tastSyncCompareTree = $00000000;

// Constants for enum TAttributeSortedDirection
type
  TAttributeSortedDirection = TOleEnum;
const
  asdNone = $00000000;
  asdSortedName = $00000001;
  asdUnSortedName = $00000002;
  asdSortedValue = $00000003;
  asdUnSortedValue = $00000004;
  asdSortedCompare = $00000005;
  asdUnSortedCompare = $00000006;

// Constants for enum TAttributeItemType
type
  TAttributeItemType = TOleEnum;
const
  aitObjAttribute = $00000000;
  aitLinkAttribute = $00000001;

// Constants for enum TEntryProperiesIdx
type
  TEntryProperiesIdx = TOleEnum;
const
  epiCadPlacement = $00000000;
  epiQuantity = $00000001;
  epiCadKey = $00000002;
  epiBoRepresentationKey = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAttributesWindow = interface;
  IAttributesWindowDisp = dispinterface;
  IAttributesWindowEvents = dispinterface;
  IAttributeServiceDialogs = interface;
  IAttributeServiceDialogsDisp = dispinterface;
  IModernAttributesWindow = interface;
  IModernAttributesWindowDisp = dispinterface;
  IModernAttributesWindowEvents = dispinterface;
  ILoodsmanAttrNode = interface;
  ILoodsmanAttrNodeDisp = dispinterface;
  ILoodsmanAttrNodeList = interface;
  ILoodsmanAttrNodeListDisp = dispinterface;
  IViewParameters = interface;
  IViewParametersDisp = dispinterface;
  ICompareAttrInfo = interface;
  ICompareAttrInfoDisp = dispinterface;
  ICompareAttrInfoList = interface;
  ICompareAttrInfoListDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  AttributesWindow = IAttributesWindow;
  AttributeServiceDialogs = IAttributeServiceDialogs;
  ModernAttributesWindow = IModernAttributesWindow;
  LoodsmanAttrNode = ILoodsmanAttrNode;
  LoodsmanAttrNodeList = ILoodsmanAttrNodeList;
  ViewParameters = IViewParameters;
  CompareAttrInfo = ICompareAttrInfo;
  CompareAttrInfoList = ICompareAttrInfoList;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PPUserType1 = ^IFontDisp; {*}


// *********************************************************************//
// Interface: IAttributesWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBC72EBD-6F9E-4BEC-BEC2-CE1949A31CFC}
// *********************************************************************//
  IAttributesWindow = interface(IDispatch)
    ['{DBC72EBD-6F9E-4BEC-BEC2-CE1949A31CFC}']
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_AutoScroll: WordBool; safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Color: OLE_COLOR; safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    function Get_Font: IFontDisp; safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    function Get_KeyPreview: WordBool; safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    function Get_PixelsPerInch: Integer; safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    function Get_Scaled: WordBool; safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    function Get_HelpFile: WideString; safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    function Get_PopupMode: TxPopupMode; safecall;
    procedure Set_PopupMode(Value: TxPopupMode); safecall;
    function Get_ScreenSnap: WordBool; safecall;
    procedure Set_ScreenSnap(Value: WordBool); safecall;
    function Get_SnapBuffer: Integer; safecall;
    procedure Set_SnapBuffer(Value: Integer); safecall;
    function Get_DockSite: WordBool; safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function Get_UseDockManager: WordBool; safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    procedure ClearSelection; safecall;
    function GetRootNodesAttr: ILoodsmanAttrNodeList; safecall;
    function Get_FocusedNode: ILoodsmanAttrNode; safecall;
    function Get_TreeState: OleVariant; safecall;
    function Get_ViewParameters: IViewParameters; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AutoScroll: WordBool read Get_AutoScroll write Set_AutoScroll;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property AxBorderStyle: TxActiveFormBorderStyle read Get_AxBorderStyle write Set_AxBorderStyle;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Color: OLE_COLOR read Get_Color write Set_Color;
    property Font: IFontDisp read Get_Font write Set_Font;
    property KeyPreview: WordBool read Get_KeyPreview write Set_KeyPreview;
    property PixelsPerInch: Integer read Get_PixelsPerInch write Set_PixelsPerInch;
    property PrintScale: TxPrintScale read Get_PrintScale write Set_PrintScale;
    property Scaled: WordBool read Get_Scaled write Set_Scaled;
    property Active: WordBool read Get_Active;
    property DropTarget: WordBool read Get_DropTarget write Set_DropTarget;
    property HelpFile: WideString read Get_HelpFile write Set_HelpFile;
    property PopupMode: TxPopupMode read Get_PopupMode write Set_PopupMode;
    property ScreenSnap: WordBool read Get_ScreenSnap write Set_ScreenSnap;
    property SnapBuffer: Integer read Get_SnapBuffer write Set_SnapBuffer;
    property DockSite: WordBool read Get_DockSite write Set_DockSite;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property AlignDisabled: WordBool read Get_AlignDisabled;
    property MouseInClient: WordBool read Get_MouseInClient;
    property VisibleDockClientCount: Integer read Get_VisibleDockClientCount;
    property UseDockManager: WordBool read Get_UseDockManager write Set_UseDockManager;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property ExplicitLeft: Integer read Get_ExplicitLeft;
    property ExplicitTop: Integer read Get_ExplicitTop;
    property ExplicitWidth: Integer read Get_ExplicitWidth;
    property ExplicitHeight: Integer read Get_ExplicitHeight;
    property AlignWithMargins: WordBool read Get_AlignWithMargins write Set_AlignWithMargins;
    property FocusedNode: ILoodsmanAttrNode read Get_FocusedNode;
    property TreeState: OleVariant read Get_TreeState;
    property ViewParameters: IViewParameters read Get_ViewParameters;
  end;

// *********************************************************************//
// DispIntf:  IAttributesWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBC72EBD-6F9E-4BEC-BEC2-CE1949A31CFC}
// *********************************************************************//
  IAttributesWindowDisp = dispinterface
    ['{DBC72EBD-6F9E-4BEC-BEC2-CE1949A31CFC}']
    property Visible: WordBool dispid 201;
    property AutoScroll: WordBool dispid 202;
    property AutoSize: WordBool dispid 203;
    property AxBorderStyle: TxActiveFormBorderStyle dispid 204;
    property Caption: WideString dispid -518;
    property Color: OLE_COLOR dispid -501;
    property Font: IFontDisp dispid -512;
    property KeyPreview: WordBool dispid 205;
    property PixelsPerInch: Integer dispid 206;
    property PrintScale: TxPrintScale dispid 207;
    property Scaled: WordBool dispid 208;
    property Active: WordBool readonly dispid 209;
    property DropTarget: WordBool dispid 210;
    property HelpFile: WideString dispid 211;
    property PopupMode: TxPopupMode dispid 212;
    property ScreenSnap: WordBool dispid 213;
    property SnapBuffer: Integer dispid 214;
    property DockSite: WordBool dispid 215;
    property DoubleBuffered: WordBool dispid 216;
    property AlignDisabled: WordBool readonly dispid 217;
    property MouseInClient: WordBool readonly dispid 218;
    property VisibleDockClientCount: Integer readonly dispid 219;
    property UseDockManager: WordBool dispid 220;
    property Enabled: WordBool dispid -514;
    property ExplicitLeft: Integer readonly dispid 221;
    property ExplicitTop: Integer readonly dispid 222;
    property ExplicitWidth: Integer readonly dispid 223;
    property ExplicitHeight: Integer readonly dispid 224;
    property AlignWithMargins: WordBool dispid 225;
    procedure ClearSelection; dispid 226;
    function GetRootNodesAttr: ILoodsmanAttrNodeList; dispid 227;
    property FocusedNode: ILoodsmanAttrNode readonly dispid 228;
    property TreeState: OleVariant readonly dispid 229;
    property ViewParameters: IViewParameters readonly dispid 230;
  end;

// *********************************************************************//
// DispIntf:  IAttributesWindowEvents
// Flags:     (4096) Dispatchable
// GUID:      {E849577B-3E60-433B-A98A-F16902483998}
// *********************************************************************//
  IAttributesWindowEvents = dispinterface
    ['{E849577B-3E60-433B-A98A-F16902483998}']
    procedure OnActivate; dispid 201;
    procedure OnClick; dispid 202;
    procedure OnCreate; dispid 203;
    procedure OnDblClick; dispid 204;
    procedure OnDestroy; dispid 205;
    procedure OnDeactivate; dispid 206;
    procedure OnKeyPress(var Key: Smallint); dispid 207;
    procedure OnMouseEnter; dispid 208;
    procedure OnMouseLeave; dispid 209;
    procedure OnPaint; dispid 210;
  end;

// *********************************************************************//
// Interface: IAttributeServiceDialogs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C190D372-8FD3-4A57-A2A2-8C10C182A601}
// *********************************************************************//
  IAttributeServiceDialogs = interface(IDispatch)
    ['{C190D372-8FD3-4A57-A2A2-8C10C182A601}']
    function ShowQuantityEditor(const aQuantityEntity: IQuantitativePDMItem): HResult; safecall;
    function ShowObjectAttributeEditor(const aCurrentLink: ILinkTypedPDMItem; 
                                       const aCurrentObject: IPDMObject2; 
                                       const aAttributeValue: IPDMAttributeValue; 
                                       aReadOnly: WordBool): HResult; safecall;
    function ShowLinkAttributeEditor(const aCurrentLink: ILinkTypedPDMItem; 
                                     const aCurrentObject: IPDMObject2; 
                                     const aAttributeValue: IPDMAttributeValue; aReadOnly: WordBool): HResult; safecall;
    function ShowLinkEntryProperiesEditor(const aLinkEntry: IPDMLinkEntry; 
                                          aPropertyIndex: TEntryProperiesIdx; aReadOnly: WordBool): HResult; safecall;
    function ShowEntryAttributeEditor(const aLinkEntry: IPDMLinkEntry; 
                                      const aCurrentLink: ILinkTypedPDMItem; 
                                      const aCurrentObject: IPDMObject2; 
                                      const aAttributeValue: IPDMAttributeValue; aReadOnly: WordBool): HResult; safecall;
    function ShowBOAttributeEditor(aAttributeItemType: TAttributeItemType; 
                                   const aCurrentLink: ILinkTypedPDMItem; 
                                   const aCurrentObject: IPDMObject2; 
                                   const aAttributeValue: IPDMAttributeValue; aReadOnly: WordBool): HResult; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAttributeServiceDialogsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C190D372-8FD3-4A57-A2A2-8C10C182A601}
// *********************************************************************//
  IAttributeServiceDialogsDisp = dispinterface
    ['{C190D372-8FD3-4A57-A2A2-8C10C182A601}']
    function ShowQuantityEditor(const aQuantityEntity: IQuantitativePDMItem): HResult; dispid 202;
    function ShowObjectAttributeEditor(const aCurrentLink: ILinkTypedPDMItem; 
                                       const aCurrentObject: IPDMObject2; 
                                       const aAttributeValue: IPDMAttributeValue; 
                                       aReadOnly: WordBool): HResult; dispid 201;
    function ShowLinkAttributeEditor(const aCurrentLink: ILinkTypedPDMItem; 
                                     const aCurrentObject: IPDMObject2; 
                                     const aAttributeValue: IPDMAttributeValue; aReadOnly: WordBool): HResult; dispid 203;
    function ShowLinkEntryProperiesEditor(const aLinkEntry: IPDMLinkEntry; 
                                          aPropertyIndex: TEntryProperiesIdx; aReadOnly: WordBool): HResult; dispid 204;
    function ShowEntryAttributeEditor(const aLinkEntry: IPDMLinkEntry; 
                                      const aCurrentLink: ILinkTypedPDMItem; 
                                      const aCurrentObject: IPDMObject2; 
                                      const aAttributeValue: IPDMAttributeValue; aReadOnly: WordBool): HResult; dispid -518;
    function ShowBOAttributeEditor(aAttributeItemType: TAttributeItemType; 
                                   const aCurrentLink: ILinkTypedPDMItem; 
                                   const aCurrentObject: IPDMObject2; 
                                   const aAttributeValue: IPDMAttributeValue; aReadOnly: WordBool): HResult; dispid -517;
  end;

// *********************************************************************//
// Interface: IModernAttributesWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {159167AE-BFD0-4FE4-9E56-016B01EAA933}
// *********************************************************************//
  IModernAttributesWindow = interface(IDispatch)
    ['{159167AE-BFD0-4FE4-9E56-016B01EAA933}']
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_AutoScroll: WordBool; safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Color: OLE_COLOR; safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    function Get_Font: IFontDisp; safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    function Get_KeyPreview: WordBool; safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    function Get_PixelsPerInch: Integer; safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    function Get_Scaled: WordBool; safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    function Get_HelpFile: WideString; safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    function Get_PopupMode: TxPopupMode; safecall;
    procedure Set_PopupMode(Value: TxPopupMode); safecall;
    function Get_ScreenSnap: WordBool; safecall;
    procedure Set_ScreenSnap(Value: WordBool); safecall;
    function Get_SnapBuffer: Integer; safecall;
    procedure Set_SnapBuffer(Value: Integer); safecall;
    function Get_DockSite: WordBool; safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function Get_UseDockManager: WordBool; safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AutoScroll: WordBool read Get_AutoScroll write Set_AutoScroll;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property AxBorderStyle: TxActiveFormBorderStyle read Get_AxBorderStyle write Set_AxBorderStyle;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Color: OLE_COLOR read Get_Color write Set_Color;
    property Font: IFontDisp read Get_Font write Set_Font;
    property KeyPreview: WordBool read Get_KeyPreview write Set_KeyPreview;
    property PixelsPerInch: Integer read Get_PixelsPerInch write Set_PixelsPerInch;
    property PrintScale: TxPrintScale read Get_PrintScale write Set_PrintScale;
    property Scaled: WordBool read Get_Scaled write Set_Scaled;
    property Active: WordBool read Get_Active;
    property DropTarget: WordBool read Get_DropTarget write Set_DropTarget;
    property HelpFile: WideString read Get_HelpFile write Set_HelpFile;
    property PopupMode: TxPopupMode read Get_PopupMode write Set_PopupMode;
    property ScreenSnap: WordBool read Get_ScreenSnap write Set_ScreenSnap;
    property SnapBuffer: Integer read Get_SnapBuffer write Set_SnapBuffer;
    property DockSite: WordBool read Get_DockSite write Set_DockSite;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property AlignDisabled: WordBool read Get_AlignDisabled;
    property MouseInClient: WordBool read Get_MouseInClient;
    property VisibleDockClientCount: Integer read Get_VisibleDockClientCount;
    property UseDockManager: WordBool read Get_UseDockManager write Set_UseDockManager;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property ExplicitLeft: Integer read Get_ExplicitLeft;
    property ExplicitTop: Integer read Get_ExplicitTop;
    property ExplicitWidth: Integer read Get_ExplicitWidth;
    property ExplicitHeight: Integer read Get_ExplicitHeight;
    property AlignWithMargins: WordBool read Get_AlignWithMargins write Set_AlignWithMargins;
  end;

// *********************************************************************//
// DispIntf:  IModernAttributesWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {159167AE-BFD0-4FE4-9E56-016B01EAA933}
// *********************************************************************//
  IModernAttributesWindowDisp = dispinterface
    ['{159167AE-BFD0-4FE4-9E56-016B01EAA933}']
    property Visible: WordBool dispid 201;
    property AutoScroll: WordBool dispid 202;
    property AutoSize: WordBool dispid 203;
    property AxBorderStyle: TxActiveFormBorderStyle dispid 204;
    property Caption: WideString dispid -518;
    property Color: OLE_COLOR dispid -501;
    property Font: IFontDisp dispid -512;
    property KeyPreview: WordBool dispid 205;
    property PixelsPerInch: Integer dispid 206;
    property PrintScale: TxPrintScale dispid 207;
    property Scaled: WordBool dispid 208;
    property Active: WordBool readonly dispid 209;
    property DropTarget: WordBool dispid 210;
    property HelpFile: WideString dispid 211;
    property PopupMode: TxPopupMode dispid 212;
    property ScreenSnap: WordBool dispid 213;
    property SnapBuffer: Integer dispid 214;
    property DockSite: WordBool dispid 215;
    property DoubleBuffered: WordBool dispid 216;
    property AlignDisabled: WordBool readonly dispid 217;
    property MouseInClient: WordBool readonly dispid 218;
    property VisibleDockClientCount: Integer readonly dispid 219;
    property UseDockManager: WordBool dispid 220;
    property Enabled: WordBool dispid -514;
    property ExplicitLeft: Integer readonly dispid 221;
    property ExplicitTop: Integer readonly dispid 222;
    property ExplicitWidth: Integer readonly dispid 223;
    property ExplicitHeight: Integer readonly dispid 224;
    property AlignWithMargins: WordBool dispid 225;
  end;

// *********************************************************************//
// DispIntf:  IModernAttributesWindowEvents
// Flags:     (4096) Dispatchable
// GUID:      {CE82747D-05C0-412C-9257-45A328C55E46}
// *********************************************************************//
  IModernAttributesWindowEvents = dispinterface
    ['{CE82747D-05C0-412C-9257-45A328C55E46}']
    procedure OnActivate; dispid 201;
    procedure OnClick; dispid 202;
    procedure OnCreate; dispid 203;
    procedure OnDblClick; dispid 204;
    procedure OnDestroy; dispid 205;
    procedure OnDeactivate; dispid 206;
    procedure OnKeyPress(var Key: Smallint); dispid 207;
    procedure OnMouseEnter; dispid 208;
    procedure OnMouseLeave; dispid 209;
    procedure OnPaint; dispid 210;
  end;

// *********************************************************************//
// Interface: ILoodsmanAttrNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7C67257-B012-458B-B51A-3044993ECD40}
// *********************************************************************//
  ILoodsmanAttrNode = interface(IDispatch)
    ['{B7C67257-B012-458B-B51A-3044993ECD40}']
    function Get_Focused: WordBool; safecall;
    procedure Set_Focused(Value: WordBool); safecall;
    function Get_ViewName: WideString; safecall;
    function Get_ViewType: Integer; safecall;
    function Get_AttributeValue: IPDMAttributeValue; safecall;
    function Get_CompareAttrInfoList: ICompareAttrInfoList; safecall;
    property Focused: WordBool read Get_Focused write Set_Focused;
    property ViewName: WideString read Get_ViewName;
    property ViewType: Integer read Get_ViewType;
    property AttributeValue: IPDMAttributeValue read Get_AttributeValue;
    property CompareAttrInfoList: ICompareAttrInfoList read Get_CompareAttrInfoList;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanAttrNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7C67257-B012-458B-B51A-3044993ECD40}
// *********************************************************************//
  ILoodsmanAttrNodeDisp = dispinterface
    ['{B7C67257-B012-458B-B51A-3044993ECD40}']
    property Focused: WordBool dispid 201;
    property ViewName: WideString readonly dispid 202;
    property ViewType: Integer readonly dispid 203;
    property AttributeValue: IPDMAttributeValue readonly dispid 204;
    property CompareAttrInfoList: ICompareAttrInfoList readonly dispid 205;
  end;

// *********************************************************************//
// Interface: ILoodsmanAttrNodeList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CEA02FB-404B-43CF-A54F-83F12989B8DE}
// *********************************************************************//
  ILoodsmanAttrNodeList = interface(IDispatch)
    ['{9CEA02FB-404B-43CF-A54F-83F12989B8DE}']
    function Get_Count: Integer; safecall;
    function Get_Item(aIdx: Integer): ILoodsmanAttrNode; safecall;
    property Count: Integer read Get_Count;
    property Item[aIdx: Integer]: ILoodsmanAttrNode read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanAttrNodeListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CEA02FB-404B-43CF-A54F-83F12989B8DE}
// *********************************************************************//
  ILoodsmanAttrNodeListDisp = dispinterface
    ['{9CEA02FB-404B-43CF-A54F-83F12989B8DE}']
    property Count: Integer readonly dispid 201;
    property Item[aIdx: Integer]: ILoodsmanAttrNode readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IViewParameters
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF708EE1-9B4F-4745-B181-284B19BFE691}
// *********************************************************************//
  IViewParameters = interface(IDispatch)
    ['{BF708EE1-9B4F-4745-B181-284B19BFE691}']
    function Get_ControlPanelVisible: WordBool; safecall;
    procedure Set_ControlPanelVisible(Value: WordBool); safecall;
    function Get_ShowIcons: WordBool; safecall;
    procedure Set_ShowIcons(Value: WordBool); safecall;
    function Get_PreviewImage: WordBool; safecall;
    procedure Set_PreviewImage(Value: WordBool); safecall;
    function Get_PreviewText: WordBool; safecall;
    procedure Set_PreviewText(Value: WordBool); safecall;
    function Get_WrapText: WordBool; safecall;
    procedure Set_WrapText(Value: WordBool); safecall;
    function Get_RequiredFirst: WordBool; safecall;
    procedure Set_RequiredFirst(Value: WordBool); safecall;
    function Get_ShowAll: WordBool; safecall;
    procedure Set_ShowAll(Value: WordBool); safecall;
    function Get_ShowServices: WordBool; safecall;
    procedure Set_ShowServices(Value: WordBool); safecall;
    function Get_ShowState: WordBool; safecall;
    procedure Set_ShowState(Value: WordBool); safecall;
    function Get_CompressionColumnVisible: WordBool; safecall;
    procedure Set_CompressionColumnVisible(Value: WordBool); safecall;
    function Get_ActiveViewParamName: WideString; safecall;
    procedure Set_ActiveViewParamName(const Value: WideString); safecall;
    function Get_SortedColumn: TAttributeSortedDirection; safecall;
    procedure Set_SortedColumn(Value: TAttributeSortedDirection); safecall;
    property ControlPanelVisible: WordBool read Get_ControlPanelVisible write Set_ControlPanelVisible;
    property ShowIcons: WordBool read Get_ShowIcons write Set_ShowIcons;
    property PreviewImage: WordBool read Get_PreviewImage write Set_PreviewImage;
    property PreviewText: WordBool read Get_PreviewText write Set_PreviewText;
    property WrapText: WordBool read Get_WrapText write Set_WrapText;
    property RequiredFirst: WordBool read Get_RequiredFirst write Set_RequiredFirst;
    property ShowAll: WordBool read Get_ShowAll write Set_ShowAll;
    property ShowServices: WordBool read Get_ShowServices write Set_ShowServices;
    property ShowState: WordBool read Get_ShowState write Set_ShowState;
    property CompressionColumnVisible: WordBool read Get_CompressionColumnVisible write Set_CompressionColumnVisible;
    property ActiveViewParamName: WideString read Get_ActiveViewParamName write Set_ActiveViewParamName;
    property SortedColumn: TAttributeSortedDirection read Get_SortedColumn write Set_SortedColumn;
  end;

// *********************************************************************//
// DispIntf:  IViewParametersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF708EE1-9B4F-4745-B181-284B19BFE691}
// *********************************************************************//
  IViewParametersDisp = dispinterface
    ['{BF708EE1-9B4F-4745-B181-284B19BFE691}']
    property ControlPanelVisible: WordBool dispid 201;
    property ShowIcons: WordBool dispid 202;
    property PreviewImage: WordBool dispid 203;
    property PreviewText: WordBool dispid 204;
    property WrapText: WordBool dispid 205;
    property RequiredFirst: WordBool dispid 206;
    property ShowAll: WordBool dispid 207;
    property ShowServices: WordBool dispid 208;
    property ShowState: WordBool dispid 209;
    property CompressionColumnVisible: WordBool dispid 213;
    property ActiveViewParamName: WideString dispid 214;
    property SortedColumn: TAttributeSortedDirection dispid 210;
  end;

// *********************************************************************//
// Interface: ICompareAttrInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DCCBA72-4C83-4ADF-B3FB-0FA6E98E76A6}
// *********************************************************************//
  ICompareAttrInfo = interface(IDispatch)
    ['{9DCCBA72-4C83-4ADF-B3FB-0FA6E98E76A6}']
    function Get_Entity: IDispatch; safecall;
    function Get_Status: Integer; safecall;
    property Entity: IDispatch read Get_Entity;
    property Status: Integer read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  ICompareAttrInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DCCBA72-4C83-4ADF-B3FB-0FA6E98E76A6}
// *********************************************************************//
  ICompareAttrInfoDisp = dispinterface
    ['{9DCCBA72-4C83-4ADF-B3FB-0FA6E98E76A6}']
    property Entity: IDispatch readonly dispid 201;
    property Status: Integer readonly dispid 202;
  end;

// *********************************************************************//
// Interface: ICompareAttrInfoList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6C4F645-5C0A-4D38-8121-95281B7CFEDF}
// *********************************************************************//
  ICompareAttrInfoList = interface(IDispatch)
    ['{D6C4F645-5C0A-4D38-8121-95281B7CFEDF}']
    function Get_Count: Integer; safecall;
    function Get_Item(aIdx: Integer): ICompareAttrInfo; safecall;
    property Count: Integer read Get_Count;
    property Item[aIdx: Integer]: ICompareAttrInfo read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  ICompareAttrInfoListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6C4F645-5C0A-4D38-8121-95281B7CFEDF}
// *********************************************************************//
  ICompareAttrInfoListDisp = dispinterface
    ['{D6C4F645-5C0A-4D38-8121-95281B7CFEDF}']
    property Count: Integer readonly dispid 201;
    property Item[aIdx: Integer]: ICompareAttrInfo readonly dispid 202;
  end;

// *********************************************************************//
// The Class CoAttributeServiceDialogs provides a Create and CreateRemote method to          
// create instances of the default interface IAttributeServiceDialogs exposed by              
// the CoClass AttributeServiceDialogs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributeServiceDialogs = class
    class function Create: IAttributeServiceDialogs;
    class function CreateRemote(const MachineName: string): IAttributeServiceDialogs;
  end;

// *********************************************************************//
// The Class CoLoodsmanAttrNode provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanAttrNode exposed by              
// the CoClass LoodsmanAttrNode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanAttrNode = class
    class function Create: ILoodsmanAttrNode;
    class function CreateRemote(const MachineName: string): ILoodsmanAttrNode;
  end;

// *********************************************************************//
// The Class CoLoodsmanAttrNodeList provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanAttrNodeList exposed by              
// the CoClass LoodsmanAttrNodeList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanAttrNodeList = class
    class function Create: ILoodsmanAttrNodeList;
    class function CreateRemote(const MachineName: string): ILoodsmanAttrNodeList;
  end;

// *********************************************************************//
// The Class CoViewParameters provides a Create and CreateRemote method to          
// create instances of the default interface IViewParameters exposed by              
// the CoClass ViewParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoViewParameters = class
    class function Create: IViewParameters;
    class function CreateRemote(const MachineName: string): IViewParameters;
  end;

// *********************************************************************//
// The Class CoCompareAttrInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICompareAttrInfo exposed by              
// the CoClass CompareAttrInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareAttrInfo = class
    class function Create: ICompareAttrInfo;
    class function CreateRemote(const MachineName: string): ICompareAttrInfo;
  end;

// *********************************************************************//
// The Class CoCompareAttrInfoList provides a Create and CreateRemote method to          
// create instances of the default interface ICompareAttrInfoList exposed by              
// the CoClass CompareAttrInfoList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareAttrInfoList = class
    class function Create: ICompareAttrInfoList;
    class function CreateRemote(const MachineName: string): ICompareAttrInfoList;
  end;

implementation

uses ComObj;

class function CoAttributeServiceDialogs.Create: IAttributeServiceDialogs;
begin
  Result := CreateComObject(CLASS_AttributeServiceDialogs) as IAttributeServiceDialogs;
end;

class function CoAttributeServiceDialogs.CreateRemote(const MachineName: string): IAttributeServiceDialogs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttributeServiceDialogs) as IAttributeServiceDialogs;
end;

class function CoLoodsmanAttrNode.Create: ILoodsmanAttrNode;
begin
  Result := CreateComObject(CLASS_LoodsmanAttrNode) as ILoodsmanAttrNode;
end;

class function CoLoodsmanAttrNode.CreateRemote(const MachineName: string): ILoodsmanAttrNode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanAttrNode) as ILoodsmanAttrNode;
end;

class function CoLoodsmanAttrNodeList.Create: ILoodsmanAttrNodeList;
begin
  Result := CreateComObject(CLASS_LoodsmanAttrNodeList) as ILoodsmanAttrNodeList;
end;

class function CoLoodsmanAttrNodeList.CreateRemote(const MachineName: string): ILoodsmanAttrNodeList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanAttrNodeList) as ILoodsmanAttrNodeList;
end;

class function CoViewParameters.Create: IViewParameters;
begin
  Result := CreateComObject(CLASS_ViewParameters) as IViewParameters;
end;

class function CoViewParameters.CreateRemote(const MachineName: string): IViewParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ViewParameters) as IViewParameters;
end;

class function CoCompareAttrInfo.Create: ICompareAttrInfo;
begin
  Result := CreateComObject(CLASS_CompareAttrInfo) as ICompareAttrInfo;
end;

class function CoCompareAttrInfo.CreateRemote(const MachineName: string): ICompareAttrInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareAttrInfo) as ICompareAttrInfo;
end;

class function CoCompareAttrInfoList.Create: ICompareAttrInfoList;
begin
  Result := CreateComObject(CLASS_CompareAttrInfoList) as ICompareAttrInfoList;
end;

class function CoCompareAttrInfoList.CreateRemote(const MachineName: string): ICompareAttrInfoList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareAttrInfoList) as ICompareAttrInfoList;
end;

end.
