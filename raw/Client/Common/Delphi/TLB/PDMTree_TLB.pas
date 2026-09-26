unit PDMTree_TLB;

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
// File generated on 17.02.2026 17:42:13 from Type Library described below.

// ************************************************************************  //
// Type Lib: ..\PDMTree.tlb (1)
// LIBID: {5FDF70FC-62D3-43AB-BA77-F2BFBF46CB61}
// LCID: 0
// Helpfile: 
// HelpString: PDMTree Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Loodsman, (C:\Program Files (x86)\ASCON\Loodsman\Client\Loodsman.exe)
//   (3) v1.0 LoodsmanObjects, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\LoodsmanObjects.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Loodsman_TLB, LoodsmanObjects_TLB, OleCtrls, OleServer, 
StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PDMTreeMajorVersion = 1;
  PDMTreeMinorVersion = 0;

  LIBID_PDMTree: TGUID = '{5FDF70FC-62D3-43AB-BA77-F2BFBF46CB61}';

  IID_INotificationTransferService: TGUID = '{4EA77AC7-E29C-485E-A07A-525E85E18EF6}';
  CLASS_NotificationTransferService: TGUID = '{598851F8-7B98-4DC2-B47F-20DDE4C8D8CA}';
  IID_IObjectTree: TGUID = '{65786D48-AEA4-420A-A5DA-B1B2E6FBC5F2}';
  DIID_IObjectTreeEvents: TGUID = '{545902BB-DA5C-4254-91FA-25B865F3B222}';
  CLASS_ObjectTree: TGUID = '{5A17E52E-B718-4276-ABE5-74D4295A3E6A}';
  IID_ILoodsmanTreeNode: TGUID = '{937D9DD2-E8CB-4458-A05B-A4192F0998C1}';
  IID_ICellInfo: TGUID = '{CEBEFF29-9905-4163-BE8E-8F8EEF3F2D47}';
  IID_ICellIconInfo: TGUID = '{D06B66B3-00CB-4B26-949B-6FABC99CB95D}';
  IID_ILoodsmanTreeNodeCollection: TGUID = '{917D4DD2-E5CB-4458-A15B-A4122F1998C4}';
  IID_ILoodsmanTreeNodeCheckBoxHandler: TGUID = '{126D9DD3-E8DB-5558-A05B-A4192F0998A9}';
  IID_ILoodsmanTreeNodeExpandedHandler: TGUID = '{48AD9DD3-EFAB-1111-A05B-A4192F000813}';
  IID_ILoodsmanTreeShowCheckBoxHandler: TGUID = '{C146F8CE-3B2A-45A4-977A-22A28AC419DC}';
  IID_ILoodsmanTreeEventHandler: TGUID = '{13A50DCC-FDA9-4B8A-B3DC-B54F66B79534}';
  IID_ICellValidateInfo: TGUID = '{DA1E562D-4990-4CA1-B212-4F920FD1BC98}';
  IID_IPreLoadInfo: TGUID = '{10D94740-C7AA-4D86-8946-0D7BFBEF2DD3}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TEditableAttribute
type
  TEditableAttribute = TOleEnum;
const
  eaFalse = $00000000;
  eaLoodsman = $00000001;
  eaPolynom = $00000002;
  eaAll = $00000003;

// Constants for enum CheckBoxState
type
  CheckBoxState = TOleEnum;
const
  cbsNone = $00000000;
  cbsUnchecked = $00000001;
  cbsChecked = $00000002;
  cbsMixed = $00000003;
  cbsDisabled = $00000004;

// Constants for enum TreeFontStyle
type
  TreeFontStyle = TOleEnum;
const
  tfsNormal = $00000000;
  tfsBold = $00000001;
  tfsItalic = $00000002;
  tfsUnderline = $00000004;
  tfsStrikeOut = $00000008;

// Constants for enum TreeTextAlignment
type
  TreeTextAlignment = TOleEnum;
const
  ttaLeft = $00000000;
  ttaCenter = $00000001;
  ttaRight = $00000002;

// Constants for enum TreeTextVAlignment
type
  TreeTextVAlignment = TOleEnum;
const
  ttvTop = $00000000;
  ttvCenter = $00000001;
  ttvBottom = $00000002;

// Constants for enum TreeImageListIndexes
type
  TreeImageListIndexes = TOleEnum;
const
  timlCommon = $00000000;
  timlMain = $00000001;
  timlLocked = $00000002;
  timlTypes = $00000003;
  timlStates = $00000004;
  timlLinks = $00000005;
  timlFilesIcons = $00000006;
  timlCompareIcons = $00000007;

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

// Constants for enum TDynamicVersionSetFilterMode
type
  TDynamicVersionSetFilterMode = TOleEnum;
const
  vfmNone = $00000000;
  vfmSingleVersion = $00000001;
  vfmWithOutVersion = $00000002;
  vfmManyVersion = $00000003;

// Constants for enum TTreeEvent
type
  TTreeEvent = TOleEnum;
const
  teRemoveFromSelection = $00000000;
  teAddToSelection = $00000001;

// Constants for enum TreeStateType
type
  TreeStateType = TOleEnum;
const
  tstSyncCompareTree = $00000000;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  INotificationTransferService = interface;
  INotificationTransferServiceDisp = dispinterface;
  IObjectTree = interface;
  IObjectTreeDisp = dispinterface;
  IObjectTreeEvents = dispinterface;
  ILoodsmanTreeNode = interface;
  ILoodsmanTreeNodeDisp = dispinterface;
  ICellInfo = interface;
  ICellInfoDisp = dispinterface;
  ICellIconInfo = interface;
  ICellIconInfoDisp = dispinterface;
  ILoodsmanTreeNodeCollection = interface;
  ILoodsmanTreeNodeCollectionDisp = dispinterface;
  ILoodsmanTreeNodeCheckBoxHandler = interface;
  ILoodsmanTreeNodeCheckBoxHandlerDisp = dispinterface;
  ILoodsmanTreeNodeExpandedHandler = interface;
  ILoodsmanTreeNodeExpandedHandlerDisp = dispinterface;
  ILoodsmanTreeShowCheckBoxHandler = interface;
  ILoodsmanTreeShowCheckBoxHandlerDisp = dispinterface;
  ILoodsmanTreeEventHandler = interface;
  ILoodsmanTreeEventHandlerDisp = dispinterface;
  ICellValidateInfo = interface;
  ICellValidateInfoDisp = dispinterface;
  IPreLoadInfo = interface;
  IPreLoadInfoDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  NotificationTransferService = INotificationTransferService;
  ObjectTree = IObjectTree;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PPUserType1 = ^IFontDisp; {*}


// *********************************************************************//
// Interface: INotificationTransferService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4EA77AC7-E29C-485E-A07A-525E85E18EF6}
// *********************************************************************//
  INotificationTransferService = interface(IDispatch)
    ['{4EA77AC7-E29C-485E-A07A-525E85E18EF6}']
  end;

// *********************************************************************//
// DispIntf:  INotificationTransferServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4EA77AC7-E29C-485E-A07A-525E85E18EF6}
// *********************************************************************//
  INotificationTransferServiceDisp = dispinterface
    ['{4EA77AC7-E29C-485E-A07A-525E85E18EF6}']
  end;

// *********************************************************************//
// Interface: IObjectTree
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {65786D48-AEA4-420A-A5DA-B1B2E6FBC5F2}
// *********************************************************************//
  IObjectTree = interface(IDispatch)
    ['{65786D48-AEA4-420A-A5DA-B1B2E6FBC5F2}']
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
    procedure SetCheckBoxParams(const aParentNode: ILoodsmanTreeNode; 
                                const aEnabledTypes: WideString; aMode: Integer); safecall;
    function Get_ShowCheckBox: WordBool; safecall;
    procedure Set_ShowCheckBox(Value: WordBool); safecall;
    procedure SetCheckBoxHandler(const aCheckBoxHandler: ILoodsmanTreeNodeCheckBoxHandler); safecall;
    procedure SetExpandedHandler(const aExpandedHandler: ILoodsmanTreeNodeExpandedHandler); safecall;
    function Get_TreeRule: WideString; safecall;
    procedure Set_TreeRule(const Value: WideString); safecall;
    function GetStateNodesTree: WideString; safecall;
    procedure SetStateNodesTree(const aValue: WideString; aSyncExpand: WordBool; 
                                aSyncSelect: WordBool; aSyncFocus: WordBool; aSyncCheck: WordBool; 
                                aSyncLinkEntries: WordBool); safecall;
    procedure ClearSelection; safecall;
    function GetRootNodesTree: ILoodsmanTreeNodeCollection; safecall;
    function Get_TreeState: OleVariant; safecall;
    function GetNodeHyperLink(const aNode: ILoodsmanTreeNode; aToClipboard: WordBool): WideString; safecall;
    procedure UpdateFrameContext(const aValue: IDBContext); safecall;
    procedure OnChangeSelectedLinkedStructuresSecondaryTree(const aSelectedNodeSecondaryWindow: ILoodsmanTreeNode); safecall;
    function GetLinkAbsEntriesVisibleEquivalenceNodes: ILoodsmanTreeNodeCollection; safecall;
    procedure UpdateNodeCellInfo(const aNode: ILoodsmanTreeNode; aOnlyMainColumn: WordBool); safecall;
    procedure EnabledLinkedStructures(aEnabled: WordBool); safecall;
    function Get_VisibleConfigurationPanel: WordBool; safecall;
    procedure Set_VisibleConfigurationPanel(aValue: WordBool); safecall;
    function PasteObjectsByIDs(const aTargetObject: IPDMObject2; 
                               const aInsertObjectsIDs: WideString; aMode: Integer): Integer; safecall;
    procedure SetShowCheckBoxHandler(const aShowCheckBoxHandler: ILoodsmanTreeShowCheckBoxHandler); safecall;
    function Get_ConfigurationObject: IPDMObject2; safecall;
    procedure Set_ConfigurationObject(const aValue: IPDMObject2); safecall;
    procedure DisabledEquivalenceLinkedStructuresCheckBox; safecall;
    procedure SubscribeEventHandler(const aEventHandler: ILoodsmanTreeEventHandler; 
                                    aEvent: TTreeEvent); safecall;
    procedure UnSubscribeEventHandler(const aEventHandler: ILoodsmanTreeEventHandler; 
                                      aEvent: TTreeEvent); safecall;
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
    property ShowCheckBox: WordBool read Get_ShowCheckBox write Set_ShowCheckBox;
    property TreeRule: WideString read Get_TreeRule write Set_TreeRule;
    property TreeState: OleVariant read Get_TreeState;
    property VisibleConfigurationPanel: WordBool read Get_VisibleConfigurationPanel write Set_VisibleConfigurationPanel;
    property ConfigurationObject: IPDMObject2 read Get_ConfigurationObject write Set_ConfigurationObject;
  end;

// *********************************************************************//
// DispIntf:  IObjectTreeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {65786D48-AEA4-420A-A5DA-B1B2E6FBC5F2}
// *********************************************************************//
  IObjectTreeDisp = dispinterface
    ['{65786D48-AEA4-420A-A5DA-B1B2E6FBC5F2}']
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
    procedure SetCheckBoxParams(const aParentNode: ILoodsmanTreeNode; 
                                const aEnabledTypes: WideString; aMode: Integer); dispid 226;
    property ShowCheckBox: WordBool dispid 227;
    procedure SetCheckBoxHandler(const aCheckBoxHandler: ILoodsmanTreeNodeCheckBoxHandler); dispid 228;
    procedure SetExpandedHandler(const aExpandedHandler: ILoodsmanTreeNodeExpandedHandler); dispid 229;
    property TreeRule: WideString dispid 230;
    function GetStateNodesTree: WideString; dispid 231;
    procedure SetStateNodesTree(const aValue: WideString; aSyncExpand: WordBool; 
                                aSyncSelect: WordBool; aSyncFocus: WordBool; aSyncCheck: WordBool; 
                                aSyncLinkEntries: WordBool); dispid 232;
    procedure ClearSelection; dispid 233;
    function GetRootNodesTree: ILoodsmanTreeNodeCollection; dispid 234;
    property TreeState: OleVariant readonly dispid 235;
    function GetNodeHyperLink(const aNode: ILoodsmanTreeNode; aToClipboard: WordBool): WideString; dispid 236;
    procedure UpdateFrameContext(const aValue: IDBContext); dispid 237;
    procedure OnChangeSelectedLinkedStructuresSecondaryTree(const aSelectedNodeSecondaryWindow: ILoodsmanTreeNode); dispid 238;
    function GetLinkAbsEntriesVisibleEquivalenceNodes: ILoodsmanTreeNodeCollection; dispid 239;
    procedure UpdateNodeCellInfo(const aNode: ILoodsmanTreeNode; aOnlyMainColumn: WordBool); dispid 240;
    procedure EnabledLinkedStructures(aEnabled: WordBool); dispid 241;
    property VisibleConfigurationPanel: WordBool dispid 242;
    function PasteObjectsByIDs(const aTargetObject: IPDMObject2; 
                               const aInsertObjectsIDs: WideString; aMode: Integer): Integer; dispid 243;
    procedure SetShowCheckBoxHandler(const aShowCheckBoxHandler: ILoodsmanTreeShowCheckBoxHandler); dispid 244;
    property ConfigurationObject: IPDMObject2 dispid 245;
    procedure DisabledEquivalenceLinkedStructuresCheckBox; dispid 246;
    procedure SubscribeEventHandler(const aEventHandler: ILoodsmanTreeEventHandler; 
                                    aEvent: TTreeEvent); dispid 247;
    procedure UnSubscribeEventHandler(const aEventHandler: ILoodsmanTreeEventHandler; 
                                      aEvent: TTreeEvent); dispid 248;
  end;

// *********************************************************************//
// DispIntf:  IObjectTreeEvents
// Flags:     (4096) Dispatchable
// GUID:      {545902BB-DA5C-4254-91FA-25B865F3B222}
// *********************************************************************//
  IObjectTreeEvents = dispinterface
    ['{545902BB-DA5C-4254-91FA-25B865F3B222}']
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
// Interface: ILoodsmanTreeNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {937D9DD2-E8CB-4458-A05B-A4192F0998C1}
// *********************************************************************//
  ILoodsmanTreeNode = interface(IDispatch)
    ['{937D9DD2-E8CB-4458-A05B-A4192F0998C1}']
    function Get_PDMObject: IPDMObject2; safecall;
    function Get_PDMLink: IPDMLink2; safecall;
    function Get_ParentNode: ILoodsmanTreeNode; safecall;
    procedure Refresh; safecall;
    function Get_VersionSet: IPDMVersionSet; safecall;
    function Get_DynamicVersionSetFilterMode: TDynamicVersionSetFilterMode; safecall;
    function Get_DynamicMode: WordBool; safecall;
    function Get_IsCheckBoxSupport: WordBool; safecall;
    procedure Set_CheckedState(Value: CheckBoxState); safecall;
    function Get_CheckedState: CheckBoxState; safecall;
    function Get_ChildNodes: ILoodsmanTreeNodeCollection; safecall;
    function Get_Focused: WordBool; safecall;
    procedure Set_Focused(Value: WordBool); safecall;
    function Get_Selected: WordBool; safecall;
    procedure Set_Selected(Value: WordBool); safecall;
    function Get_CompareObjectInfo: IDispatch; safecall;
    function Get_PDMLinkEntry: IPDMLinkEntry; safecall;
    function Get_ShowLinkEntries: WordBool; safecall;
    procedure Set_ShowLinkEntries(aValue: WordBool); safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(aValue: WordBool); safecall;
    property PDMObject: IPDMObject2 read Get_PDMObject;
    property PDMLink: IPDMLink2 read Get_PDMLink;
    property ParentNode: ILoodsmanTreeNode read Get_ParentNode;
    property VersionSet: IPDMVersionSet read Get_VersionSet;
    property DynamicVersionSetFilterMode: TDynamicVersionSetFilterMode read Get_DynamicVersionSetFilterMode;
    property DynamicMode: WordBool read Get_DynamicMode;
    property IsCheckBoxSupport: WordBool read Get_IsCheckBoxSupport;
    property CheckedState: CheckBoxState read Get_CheckedState write Set_CheckedState;
    property ChildNodes: ILoodsmanTreeNodeCollection read Get_ChildNodes;
    property Focused: WordBool read Get_Focused write Set_Focused;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property CompareObjectInfo: IDispatch read Get_CompareObjectInfo;
    property PDMLinkEntry: IPDMLinkEntry read Get_PDMLinkEntry;
    property ShowLinkEntries: WordBool read Get_ShowLinkEntries write Set_ShowLinkEntries;
    property Expanded: WordBool read Get_Expanded write Set_Expanded;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanTreeNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {937D9DD2-E8CB-4458-A05B-A4192F0998C1}
// *********************************************************************//
  ILoodsmanTreeNodeDisp = dispinterface
    ['{937D9DD2-E8CB-4458-A05B-A4192F0998C1}']
    property PDMObject: IPDMObject2 readonly dispid 201;
    property PDMLink: IPDMLink2 readonly dispid 202;
    property ParentNode: ILoodsmanTreeNode readonly dispid 203;
    procedure Refresh; dispid 204;
    property VersionSet: IPDMVersionSet readonly dispid 209;
    property DynamicVersionSetFilterMode: TDynamicVersionSetFilterMode readonly dispid 210;
    property DynamicMode: WordBool readonly dispid 211;
    property IsCheckBoxSupport: WordBool readonly dispid 212;
    property CheckedState: CheckBoxState dispid 213;
    property ChildNodes: ILoodsmanTreeNodeCollection readonly dispid 214;
    property Focused: WordBool dispid 215;
    property Selected: WordBool dispid 216;
    property CompareObjectInfo: IDispatch readonly dispid 217;
    property PDMLinkEntry: IPDMLinkEntry readonly dispid 218;
    property ShowLinkEntries: WordBool dispid 219;
    property Expanded: WordBool dispid 220;
  end;

// *********************************************************************//
// Interface: ICellInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CEBEFF29-9905-4163-BE8E-8F8EEF3F2D47}
// *********************************************************************//
  ICellInfo = interface(IDispatch)
    ['{CEBEFF29-9905-4163-BE8E-8F8EEF3F2D47}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Value: WideString); safecall;
    function Get_Background: Integer; safecall;
    procedure Set_Background(Value: Integer); safecall;
    function Get_FontName: WideString; safecall;
    procedure Set_FontName(const Value: WideString); safecall;
    function Get_FontSize: Integer; safecall;
    procedure Set_FontSize(Value: Integer); safecall;
    function Get_FontStyle: Integer; safecall;
    procedure Set_FontStyle(Value: Integer); safecall;
    function Get_FontColor: Integer; safecall;
    procedure Set_FontColor(Value: Integer); safecall;
    function AddIcon(ImageIndex: Integer; ImageList: TreeImageListIndexes): Integer; safecall;
    function AddIconFromFile(const FileName: WideString): Integer; safecall;
    function Get_CellIconsCount: Integer; safecall;
    function Get_IconByCellIconIndex(CellIconIndex: Integer): ICellIconInfo; safecall;
    function Get_ValidateInfo: ICellValidateInfo; safecall;
    function Get_MultilineText: WordBool; safecall;
    procedure Set_MultilineText(Value: WordBool); safecall;
    function Get_CellEditor: IUnknown; safecall;
    procedure Set_CellEditor(const Value: IUnknown); safecall;
    function Get_NotEditableText: WideString; safecall;
    procedure Set_NotEditableText(const Value: WideString); safecall;
    function Get_Valid: WordBool; safecall;
    procedure Set_Valid(Value: WordBool); safecall;
    function Get_Cursor: Integer; safecall;
    procedure Set_Cursor(Value: Integer); safecall;
    function Get_Hint: WideString; safecall;
    procedure Set_Hint(const Value: WideString); safecall;
    function Get_TextAlignment: Integer; safecall;
    procedure Set_TextAlignment(Value: Integer); safecall;
    function Get_TextVAlignment: Integer; safecall;
    procedure Set_TextVAlignment(Value: Integer); safecall;
    function Get_Editable: Integer; safecall;
    procedure Set_Editable(Value: Integer); safecall;
    function Get_TaggedText: WideString; safecall;
    procedure Set_TaggedText(const Value: WideString); safecall;
    function Get_EditableAttribute: TEditableAttribute; safecall;
    property Text: WideString read Get_Text write Set_Text;
    property Background: Integer read Get_Background write Set_Background;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Integer read Get_FontSize write Set_FontSize;
    property FontStyle: Integer read Get_FontStyle write Set_FontStyle;
    property FontColor: Integer read Get_FontColor write Set_FontColor;
    property CellIconsCount: Integer read Get_CellIconsCount;
    property IconByCellIconIndex[CellIconIndex: Integer]: ICellIconInfo read Get_IconByCellIconIndex;
    property ValidateInfo: ICellValidateInfo read Get_ValidateInfo;
    property MultilineText: WordBool read Get_MultilineText write Set_MultilineText;
    property CellEditor: IUnknown read Get_CellEditor write Set_CellEditor;
    property NotEditableText: WideString read Get_NotEditableText write Set_NotEditableText;
    property Valid: WordBool read Get_Valid write Set_Valid;
    property Cursor: Integer read Get_Cursor write Set_Cursor;
    property Hint: WideString read Get_Hint write Set_Hint;
    property TextAlignment: Integer read Get_TextAlignment write Set_TextAlignment;
    property TextVAlignment: Integer read Get_TextVAlignment write Set_TextVAlignment;
    property Editable: Integer read Get_Editable write Set_Editable;
    property TaggedText: WideString read Get_TaggedText write Set_TaggedText;
    property EditableAttribute: TEditableAttribute read Get_EditableAttribute;
  end;

// *********************************************************************//
// DispIntf:  ICellInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CEBEFF29-9905-4163-BE8E-8F8EEF3F2D47}
// *********************************************************************//
  ICellInfoDisp = dispinterface
    ['{CEBEFF29-9905-4163-BE8E-8F8EEF3F2D47}']
    property Text: WideString dispid 201;
    property Background: Integer dispid 202;
    property FontName: WideString dispid 203;
    property FontSize: Integer dispid 204;
    property FontStyle: Integer dispid 205;
    property FontColor: Integer dispid 206;
    function AddIcon(ImageIndex: Integer; ImageList: TreeImageListIndexes): Integer; dispid 207;
    function AddIconFromFile(const FileName: WideString): Integer; dispid 208;
    property CellIconsCount: Integer readonly dispid 209;
    property IconByCellIconIndex[CellIconIndex: Integer]: ICellIconInfo readonly dispid 210;
    property ValidateInfo: ICellValidateInfo readonly dispid 212;
    property MultilineText: WordBool dispid 213;
    property CellEditor: IUnknown dispid 214;
    property NotEditableText: WideString dispid 215;
    property Valid: WordBool dispid 216;
    property Cursor: Integer dispid 217;
    property Hint: WideString dispid 222;
    property TextAlignment: Integer dispid 223;
    property TextVAlignment: Integer dispid 224;
    property Editable: Integer dispid 225;
    property TaggedText: WideString dispid 226;
    property EditableAttribute: TEditableAttribute readonly dispid 227;
  end;

// *********************************************************************//
// Interface: ICellIconInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D06B66B3-00CB-4B26-949B-6FABC99CB95D}
// *********************************************************************//
  ICellIconInfo = interface(IDispatch)
    ['{D06B66B3-00CB-4B26-949B-6FABC99CB95D}']
    function Get_ImageIndex: Integer; safecall;
    function Get_ImageList: TreeImageListIndexes; safecall;
    function Get_ImageFileName: WideString; safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Value: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(Value: Integer); safecall;
    property ImageIndex: Integer read Get_ImageIndex;
    property ImageList: TreeImageListIndexes read Get_ImageList;
    property ImageFileName: WideString read Get_ImageFileName;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
  end;

// *********************************************************************//
// DispIntf:  ICellIconInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D06B66B3-00CB-4B26-949B-6FABC99CB95D}
// *********************************************************************//
  ICellIconInfoDisp = dispinterface
    ['{D06B66B3-00CB-4B26-949B-6FABC99CB95D}']
    property ImageIndex: Integer readonly dispid 201;
    property ImageList: TreeImageListIndexes readonly dispid 202;
    property ImageFileName: WideString readonly dispid 203;
    property Width: Integer dispid 204;
    property Height: Integer dispid 205;
  end;

// *********************************************************************//
// Interface: ILoodsmanTreeNodeCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {917D4DD2-E5CB-4458-A15B-A4122F1998C4}
// *********************************************************************//
  ILoodsmanTreeNodeCollection = interface(IDispatch)
    ['{917D4DD2-E5CB-4458-A15B-A4122F1998C4}']
    function Get_LoodsmanTreeNode(aIndex: Integer): ILoodsmanTreeNode; safecall;
    function Get_Count: Integer; safecall;
    procedure Refresh; safecall;
    property LoodsmanTreeNode[aIndex: Integer]: ILoodsmanTreeNode read Get_LoodsmanTreeNode;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanTreeNodeCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {917D4DD2-E5CB-4458-A15B-A4122F1998C4}
// *********************************************************************//
  ILoodsmanTreeNodeCollectionDisp = dispinterface
    ['{917D4DD2-E5CB-4458-A15B-A4122F1998C4}']
    property LoodsmanTreeNode[aIndex: Integer]: ILoodsmanTreeNode readonly dispid 201;
    property Count: Integer readonly dispid 202;
    procedure Refresh; dispid 203;
  end;

// *********************************************************************//
// Interface: ILoodsmanTreeNodeCheckBoxHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {126D9DD3-E8DB-5558-A05B-A4192F0998A9}
// *********************************************************************//
  ILoodsmanTreeNodeCheckBoxHandler = interface(IDispatch)
    ['{126D9DD3-E8DB-5558-A05B-A4192F0998A9}']
    procedure OnTreeNodeChecked(const aCheckedNode: ILoodsmanTreeNode); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanTreeNodeCheckBoxHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {126D9DD3-E8DB-5558-A05B-A4192F0998A9}
// *********************************************************************//
  ILoodsmanTreeNodeCheckBoxHandlerDisp = dispinterface
    ['{126D9DD3-E8DB-5558-A05B-A4192F0998A9}']
    procedure OnTreeNodeChecked(const aCheckedNode: ILoodsmanTreeNode); dispid 201;
  end;

// *********************************************************************//
// Interface: ILoodsmanTreeNodeExpandedHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48AD9DD3-EFAB-1111-A05B-A4192F000813}
// *********************************************************************//
  ILoodsmanTreeNodeExpandedHandler = interface(IDispatch)
    ['{48AD9DD3-EFAB-1111-A05B-A4192F000813}']
    procedure OnTreeNodeExpanded(const aExpandedNode: ILoodsmanTreeNode); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanTreeNodeExpandedHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48AD9DD3-EFAB-1111-A05B-A4192F000813}
// *********************************************************************//
  ILoodsmanTreeNodeExpandedHandlerDisp = dispinterface
    ['{48AD9DD3-EFAB-1111-A05B-A4192F000813}']
    procedure OnTreeNodeExpanded(const aExpandedNode: ILoodsmanTreeNode); dispid 201;
  end;

// *********************************************************************//
// Interface: ILoodsmanTreeShowCheckBoxHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C146F8CE-3B2A-45A4-977A-22A28AC419DC}
// *********************************************************************//
  ILoodsmanTreeShowCheckBoxHandler = interface(IDispatch)
    ['{C146F8CE-3B2A-45A4-977A-22A28AC419DC}']
    procedure OnTreeShowCheckBox(aValue: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanTreeShowCheckBoxHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C146F8CE-3B2A-45A4-977A-22A28AC419DC}
// *********************************************************************//
  ILoodsmanTreeShowCheckBoxHandlerDisp = dispinterface
    ['{C146F8CE-3B2A-45A4-977A-22A28AC419DC}']
    procedure OnTreeShowCheckBox(aValue: WordBool); dispid 201;
  end;

// *********************************************************************//
// Interface: ILoodsmanTreeEventHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13A50DCC-FDA9-4B8A-B3DC-B54F66B79534}
// *********************************************************************//
  ILoodsmanTreeEventHandler = interface(IDispatch)
    ['{13A50DCC-FDA9-4B8A-B3DC-B54F66B79534}']
    procedure OnTreeEvent(const aNode: ILoodsmanTreeNode; aEvent: TTreeEvent; aData: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanTreeEventHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13A50DCC-FDA9-4B8A-B3DC-B54F66B79534}
// *********************************************************************//
  ILoodsmanTreeEventHandlerDisp = dispinterface
    ['{13A50DCC-FDA9-4B8A-B3DC-B54F66B79534}']
    procedure OnTreeEvent(const aNode: ILoodsmanTreeNode; aEvent: TTreeEvent; aData: OleVariant); dispid 201;
  end;

// *********************************************************************//
// Interface: ICellValidateInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA1E562D-4990-4CA1-B212-4F920FD1BC98}
// *********************************************************************//
  ICellValidateInfo = interface(IDispatch)
    ['{DA1E562D-4990-4CA1-B212-4F920FD1BC98}']
    function Get_SubscribeOnObjects: WideString; safecall;
    procedure Set_SubscribeOnObjects(const Value: WideString); safecall;
    function Get_SubscribeOnLinks: WideString; safecall;
    procedure Set_SubscribeOnLinks(const Value: WideString); safecall;
    function Get_SubscribeOnAttrs: WideString; safecall;
    procedure Set_SubscribeOnAttrs(const Value: WideString); safecall;
    function Get_SubscribeOnFiles: WideString; safecall;
    procedure Set_SubscribeOnFiles(const Value: WideString); safecall;
    function Get_Valid: WordBool; safecall;
    procedure Reset; safecall;
    property SubscribeOnObjects: WideString read Get_SubscribeOnObjects write Set_SubscribeOnObjects;
    property SubscribeOnLinks: WideString read Get_SubscribeOnLinks write Set_SubscribeOnLinks;
    property SubscribeOnAttrs: WideString read Get_SubscribeOnAttrs write Set_SubscribeOnAttrs;
    property SubscribeOnFiles: WideString read Get_SubscribeOnFiles write Set_SubscribeOnFiles;
    property Valid: WordBool read Get_Valid;
  end;

// *********************************************************************//
// DispIntf:  ICellValidateInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA1E562D-4990-4CA1-B212-4F920FD1BC98}
// *********************************************************************//
  ICellValidateInfoDisp = dispinterface
    ['{DA1E562D-4990-4CA1-B212-4F920FD1BC98}']
    property SubscribeOnObjects: WideString dispid 201;
    property SubscribeOnLinks: WideString dispid 202;
    property SubscribeOnAttrs: WideString dispid 203;
    property SubscribeOnFiles: WideString dispid 204;
    property Valid: WordBool readonly dispid 205;
    procedure Reset; dispid 206;
  end;

// *********************************************************************//
// Interface: IPreLoadInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10D94740-C7AA-4D86-8946-0D7BFBEF2DD3}
// *********************************************************************//
  IPreLoadInfo = interface(IDispatch)
    ['{10D94740-C7AA-4D86-8946-0D7BFBEF2DD3}']
    function Get_Attributes: WideString; safecall;
    procedure Set_Attributes(const Value: WideString); safecall;
    function Get_LinkAttributes: WideString; safecall;
    procedure Set_LinkAttributes(const Value: WideString); safecall;
    function Get_SecondaryView: WordBool; safecall;
    procedure Set_SecondaryView(Value: WordBool); safecall;
    function Get_AnyRoleSignature: WordBool; safecall;
    procedure Set_AnyRoleSignature(Value: WordBool); safecall;
    function Get_SingleRoleSignature: WideString; safecall;
    procedure Set_SingleRoleSignature(const Value: WideString); safecall;
    property Attributes: WideString read Get_Attributes write Set_Attributes;
    property LinkAttributes: WideString read Get_LinkAttributes write Set_LinkAttributes;
    property SecondaryView: WordBool read Get_SecondaryView write Set_SecondaryView;
    property AnyRoleSignature: WordBool read Get_AnyRoleSignature write Set_AnyRoleSignature;
    property SingleRoleSignature: WideString read Get_SingleRoleSignature write Set_SingleRoleSignature;
  end;

// *********************************************************************//
// DispIntf:  IPreLoadInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10D94740-C7AA-4D86-8946-0D7BFBEF2DD3}
// *********************************************************************//
  IPreLoadInfoDisp = dispinterface
    ['{10D94740-C7AA-4D86-8946-0D7BFBEF2DD3}']
    property Attributes: WideString dispid 201;
    property LinkAttributes: WideString dispid 202;
    property SecondaryView: WordBool dispid 203;
    property AnyRoleSignature: WordBool dispid 204;
    property SingleRoleSignature: WideString dispid 205;
  end;

// *********************************************************************//
// The Class CoNotificationTransferService provides a Create and CreateRemote method to          
// create instances of the default interface INotificationTransferService exposed by              
// the CoClass NotificationTransferService. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNotificationTransferService = class
    class function Create: INotificationTransferService;
    class function CreateRemote(const MachineName: string): INotificationTransferService;
  end;

implementation

uses ComObj;

class function CoNotificationTransferService.Create: INotificationTransferService;
begin
  Result := CreateComObject(CLASS_NotificationTransferService) as INotificationTransferService;
end;

class function CoNotificationTransferService.CreateRemote(const MachineName: string): INotificationTransferService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NotificationTransferService) as INotificationTransferService;
end;

end.
