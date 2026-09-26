unit ComparisonStructures_TLB;

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
// File generated on 27.04.2026 13:41:10 from Type Library described below.

// ************************************************************************  //
// Type Lib: ..\ComparisonStructures.tlb (1)
// LIBID: {2FDDB177-BA70-4A24-B042-E9A7DF0F6961}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 LoodsmanObjects, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\LoodsmanObjects.dll)
//   (3) v1.0 Loodsman, (C:\Program Files (x86)\ASCON\Loodsman\Client\Loodsman.exe)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Loodsman_TLB, LoodsmanObjects_TLB, OleServer, StdVCL, 
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
  ComparisonStructuresMajorVersion = 1;
  ComparisonStructuresMinorVersion = 0;

  LIBID_ComparisonStructures: TGUID = '{2FDDB177-BA70-4A24-B042-E9A7DF0F6961}';

  IID_IComparisonStructuresService: TGUID = '{01D0913D-E37C-4202-8C00-319CF758011E}';
  CLASS_ComparisonStructuresService: TGUID = '{59EBD042-FC2A-4FB3-AE60-25BFFEB0906C}';
  IID_IComparisonStructuresData: TGUID = '{3ACEBDF2-B368-4753-B92F-FF9C449B8EFF}';
  CLASS_ComparisonStructuresData: TGUID = '{4C215F22-529A-4CBE-9448-B6DC4C7F2C2B}';
  IID_IComprasionContext: TGUID = '{1DFCF340-5359-4BE8-8266-297C81B5250E}';
  CLASS_ComprasionContext: TGUID = '{0EBCEF3A-F677-45EF-AF0C-2CD391E59FA2}';
  IID_ISettingVisualization: TGUID = '{DE763197-D25C-479A-BCC2-27E510187E40}';
  CLASS_SettingVisualization: TGUID = '{30C95958-A9D6-41EC-A2B7-684B710D0EF0}';
  IID_ISettingCompareTree: TGUID = '{AEE077C3-EBE6-4D85-AC97-B87D4DA39638}';
  CLASS_SettingCompareTree: TGUID = '{1BB264F5-1865-4CAD-8635-39C8366C222C}';
  IID_ISettingCompareAttribute: TGUID = '{37D3CBCC-4DBD-40E5-82C9-69267358B0D8}';
  CLASS_SettingCompareAttribute: TGUID = '{58DF893B-0CC1-4162-9B4B-36E372C6FBF7}';
  IID_ISettingsCompareTreeList: TGUID = '{68FBDA78-A204-4127-97FD-AC0A9839AC62}';
  CLASS_SettingsCompareTreeList: TGUID = '{EF2FD066-8C40-4862-A892-DA347332FA43}';
  IID_ISettingCompareAttributeList: TGUID = '{EE944C86-594D-480C-AE94-D6AB2E4EC005}';
  CLASS_SettingCompareAttributeList: TGUID = '{780E67D3-FC19-42E4-A156-93657A188B2A}';
  IID_IAttribute: TGUID = '{8A073C4D-4E06-48DD-9D20-180AD6186644}';
  CLASS_Attribute: TGUID = '{88A00F44-0684-4CAE-B32E-27FDB901F468}';
  IID_IAnalog: TGUID = '{93007D7B-48A5-40EE-AA6D-CA14C647D510}';
  CLASS_Analog: TGUID = '{04328957-429F-4D72-A47D-88AFDE020A43}';
  IID_IParentResult: TGUID = '{B506F861-5C95-422A-A584-C7A2D34091F3}';
  CLASS_ParentResult: TGUID = '{348DBD86-7CD1-45D7-977C-B7BC50845C1C}';
  IID_IObjectInfo: TGUID = '{D9AAE122-F347-469F-80BD-6E2BD0ECC2DD}';
  CLASS_ObjectInfo: TGUID = '{05761154-69FA-4A2A-A6CB-2C8DBEDE81CB}';
  IID_IExcludedObject: TGUID = '{6ADEB8E6-470B-407B-9405-B4C9D0861880}';
  CLASS_ExcludedObject: TGUID = '{FDA02B0B-C4E6-4F68-8E56-ADD686FF79E4}';
  IID_IError: TGUID = '{D2E8EB9F-BFB7-4255-94B9-BB09AE52F901}';
  CLASS_Error: TGUID = '{87F8053D-D004-4A4A-B4CA-0D0CDEC7B428}';
  IID_IComparisonResult: TGUID = '{8FC4EE68-97F2-4496-BD61-DC995AD942FF}';
  CLASS_ComparisonResult: TGUID = '{4F4F8A26-3B8D-48F0-B926-C30361ADE7EC}';
  IID_IAttributeList: TGUID = '{BABFEC92-288F-49B7-9B04-FFC4EA2061A2}';
  CLASS_AttributeList: TGUID = '{FB80F70A-DBA6-4BEC-BE7E-E1652268456D}';
  IID_IAnalogList: TGUID = '{B9121CB6-EE36-4699-9ECA-D7CD2DBFEE56}';
  CLASS_AnalogList: TGUID = '{DA9E82D9-3563-493A-AE76-48B2CAA38ECC}';
  IID_IParentResultList: TGUID = '{4866321B-F407-4868-8FA4-4BC2E8D4B4A9}';
  CLASS_ParentResultList: TGUID = '{6C280EEB-AD4D-4957-B9BA-BD1F0EF0DBF2}';
  IID_IObjectInfoList: TGUID = '{6AD118ED-8F4D-4ECB-B238-4A88825C04DA}';
  CLASS_ObjectInfoList: TGUID = '{142A1583-EF3A-4A5C-9C95-5841FA629305}';
  IID_IExcludedObjectList: TGUID = '{74FC1DB1-AC91-45A0-AF60-3FE2147DDE0E}';
  CLASS_ExcludedObjectList: TGUID = '{3CD33EC2-CB16-410A-A434-3421A9E73DBC}';
  IID_IErrorList: TGUID = '{CF5DC232-6A40-46FB-A5F9-729F7B60A685}';
  CLASS_ErrorList: TGUID = '{D14C70F4-92B8-467F-A2E1-B958947C0F12}';
  IID_IEntity: TGUID = '{80F053FF-861A-4167-8F90-D7176FF63EDB}';
  CLASS_Entity: TGUID = '{55FE4ACC-38F1-4E41-B4FD-82407AC659A5}';
  IID_IEntitiesList: TGUID = '{41691759-6F9A-4A18-B250-5877F788D41E}';
  CLASS_EntitiesList: TGUID = '{8D5B2371-4FD0-409F-96B5-082D414544E2}';
  IID_ICompareObjectInfo: TGUID = '{7893234F-E078-4316-A5B1-D4D458B5C944}';
  CLASS_CompareObjectInfo: TGUID = '{7790F81C-F947-43AE-AA61-8B1E1512EB51}';
  IID_IDifferenceCompositionList: TGUID = '{6BC7CC70-D80C-448C-A296-B9A187B9ECAC}';
  CLASS_DifferenceCompositionList: TGUID = '{88BC83AA-711E-4CF2-ADC8-11EEF56760E5}';
  IID_IInstance: TGUID = '{CCFF4D6C-F21A-488E-8FD7-3B16D2B12A59}';
  CLASS_Instance: TGUID = '{E70CEDD7-B5C1-44B2-97AC-5628E37090AD}';
  IID_IHiddenFields: TGUID = '{DBA88120-13BE-408A-BB7F-ABFD40EED4BB}';
  CLASS_HiddenFields: TGUID = '{3A6A93C7-C853-471F-BC11-89343E0EA2D1}';
  IID_IEntry: TGUID = '{99F166EE-1DAB-4F22-9EE1-E45A24BBA9A2}';
  CLASS_Entry: TGUID = '{683A55A4-69D8-460F-A57E-6E09E03F5CE2}';
  IID_IEntriesList: TGUID = '{D33CDEC7-634A-4AEC-B878-74E0E2ECAE3A}';
  CLASS_EntriesList: TGUID = '{0574D9C2-3655-4D9C-A527-AD804125EA2A}';
  IID_ILink: TGUID = '{BF829433-D7CF-4563-9A01-FCA43FC8804B}';
  CLASS_Link: TGUID = '{7C44BB89-3911-4C37-B780-A842B91D7BC0}';
  IID_ILinkList: TGUID = '{A507AA2A-815D-4CFA-91AF-D088F39179A8}';
  CLASS_LinkList: TGUID = '{AA9A5D2D-0A46-4956-9CCE-4EE6F67E27EF}';
  IID_IAbsPath: TGUID = '{9AB819A3-68E9-442A-83A7-BE87F5D127CA}';
  CLASS_AbsPath: TGUID = '{59656218-B2F7-44CA-91D1-D148A2C5DA5B}';
  IID_ICompareAbsPath: TGUID = '{97AE1E62-B440-4873-A0A2-4E5D9B9B8D72}';
  CLASS_CompareAbsPath: TGUID = '{A6FFA676-A205-4FBC-87E3-80671F891CF5}';
  IID_ICompareAbsPlacements: TGUID = '{6ACCD61D-DB31-4EFB-86A0-3CE9F9693BDE}';
  CLASS_CompareAbsPlacements: TGUID = '{A25E626A-B1BE-4C8B-BD68-D1696A4BAA6A}';
  IID_IAbsPlacementList: TGUID = '{63431E9B-6E1E-481A-BEA0-986061A4E2B2}';
  CLASS_AbsPlacementList: TGUID = '{26178996-8F85-4573-975D-F92FC3959610}';
  IID_IEntryResultList: TGUID = '{EEAD1043-8C5B-4D70-9526-E6A6901CACAE}';
  CLASS_EntryResultList: TGUID = '{E14ABA35-22FD-4D0F-BA28-9FA63FDBE71D}';
  IID_IFamilyEntries: TGUID = '{38BB3A97-2261-492A-8E85-2FEC4923B7C7}';
  CLASS_FamilyEntries: TGUID = '{4F1B856B-F406-49EC-AE44-AF29371218C5}';
  IID_IEntryResult: TGUID = '{2D6F2CD8-D6E4-400B-B258-834AA018F76E}';
  CLASS_EntryResult: TGUID = '{645DC08A-2AC4-4A79-9089-29F4A4ACBB4D}';
  IID_IFamilyEntry: TGUID = '{6E085B90-C291-4DAF-B38E-82662D7B6725}';
  CLASS_FamilyEntry: TGUID = '{67F8EC72-EA1B-4186-B228-1D58F10CE328}';
  IID_ICompareEntries: TGUID = '{6ADE29A4-5ABA-4156-9235-F1A90934E5A2}';
  CLASS_CompareEntries: TGUID = '{88F8F842-F1FB-4C81-954E-8722B5E1A50F}';
  IID_ICompareEntriesRes: TGUID = '{AACACD55-D88D-4D0B-BA69-C0F069C94BE0}';
  CLASS_CompareEntriesRes: TGUID = '{9CD24FE7-4BD1-48B3-8E6C-F1BEC0F6F249}';
  IID_ICompareEntriesResList: TGUID = '{8B80B4B1-0F95-4EEC-BDCC-97F1587324DF}';
  CLASS_CompareEntriesResList: TGUID = '{D53AC1EF-FFA8-4B7F-8331-176A551C9FB5}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TEffCompareType
type
  TEffCompareType = TOleEnum;
const
  ectContext = $00000000;
  ectRule = $00000001;

// Constants for enum TActionAnalog
type
  TActionAnalog = TOleEnum;
const
  aaNotShow = $00000000;
  aaInform = $00000001;
  aaResultTheFirstAnalog = $00000002;
  aaResultTheEachAnalog = $00000003;

// Constants for enum TSettingsCompareTreeType
type
  TSettingsCompareTreeType = TOleEnum;
const
  scttIdentical = $00000000;
  scttNew = $00000001;
  scttDeleted = $00000002;
  scttDifferences = $00000003;
  scttNoCompared = $00000004;

// Constants for enum TShowInType
type
  TShowInType = TOleEnum;
const
  sitNone = $00000000;
  sitHighlightingLine = $00000001;
  sitHighlightingText = $00000002;
  sitNotShow = $00000003;

// Constants for enum TDiffType
type
  TDiffType = TOleEnum;
const
  dtAtribute = $00000000;
  dtParent = $00000001;
  dtStructure = $00000002;
  dtByPlacement = $00000003;

// Constants for enum TSettingsCompareAttributeType
type
  TSettingsCompareAttributeType = TOleEnum;
const
  scatIdentical = $00000000;
  scatDifferences = $00000001;
  scatDeleted = $00000002;
  scatFilled = $00000003;
  scatNoCompared = $00000004;

// Constants for enum TEntityType
type
  TEntityType = TOleEnum;
const
  etAttribute = $00000000;
  etProperty = $00000001;
  erAttributeLink = $00000002;
  erEntryProp = $00000003;
  erAbsEntry = $00000004;
  erAttributeEntry = $00000005;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IComparisonStructuresService = interface;
  IComparisonStructuresServiceDisp = dispinterface;
  IComparisonStructuresData = interface;
  IComparisonStructuresDataDisp = dispinterface;
  IComprasionContext = interface;
  IComprasionContextDisp = dispinterface;
  ISettingVisualization = interface;
  ISettingVisualizationDisp = dispinterface;
  ISettingCompareTree = interface;
  ISettingCompareTreeDisp = dispinterface;
  ISettingCompareAttribute = interface;
  ISettingCompareAttributeDisp = dispinterface;
  ISettingsCompareTreeList = interface;
  ISettingsCompareTreeListDisp = dispinterface;
  ISettingCompareAttributeList = interface;
  ISettingCompareAttributeListDisp = dispinterface;
  IAttribute = interface;
  IAttributeDisp = dispinterface;
  IAnalog = interface;
  IAnalogDisp = dispinterface;
  IParentResult = interface;
  IParentResultDisp = dispinterface;
  IObjectInfo = interface;
  IObjectInfoDisp = dispinterface;
  IExcludedObject = interface;
  IExcludedObjectDisp = dispinterface;
  IError = interface;
  IErrorDisp = dispinterface;
  IComparisonResult = interface;
  IComparisonResultDisp = dispinterface;
  IAttributeList = interface;
  IAttributeListDisp = dispinterface;
  IAnalogList = interface;
  IAnalogListDisp = dispinterface;
  IParentResultList = interface;
  IParentResultListDisp = dispinterface;
  IObjectInfoList = interface;
  IObjectInfoListDisp = dispinterface;
  IExcludedObjectList = interface;
  IExcludedObjectListDisp = dispinterface;
  IErrorList = interface;
  IErrorListDisp = dispinterface;
  IEntity = interface;
  IEntityDisp = dispinterface;
  IEntitiesList = interface;
  IEntitiesListDisp = dispinterface;
  ICompareObjectInfo = interface;
  ICompareObjectInfoDisp = dispinterface;
  IDifferenceCompositionList = interface;
  IDifferenceCompositionListDisp = dispinterface;
  IInstance = interface;
  IInstanceDisp = dispinterface;
  IHiddenFields = interface;
  IHiddenFieldsDisp = dispinterface;
  IEntry = interface;
  IEntryDisp = dispinterface;
  IEntriesList = interface;
  IEntriesListDisp = dispinterface;
  ILink = interface;
  ILinkDisp = dispinterface;
  ILinkList = interface;
  ILinkListDisp = dispinterface;
  IAbsPath = interface;
  IAbsPathDisp = dispinterface;
  ICompareAbsPath = interface;
  ICompareAbsPathDisp = dispinterface;
  ICompareAbsPlacements = interface;
  ICompareAbsPlacementsDisp = dispinterface;
  IAbsPlacementList = interface;
  IAbsPlacementListDisp = dispinterface;
  IEntryResultList = interface;
  IEntryResultListDisp = dispinterface;
  IFamilyEntries = interface;
  IFamilyEntriesDisp = dispinterface;
  IEntryResult = interface;
  IEntryResultDisp = dispinterface;
  IFamilyEntry = interface;
  IFamilyEntryDisp = dispinterface;
  ICompareEntries = interface;
  ICompareEntriesDisp = dispinterface;
  ICompareEntriesRes = interface;
  ICompareEntriesResDisp = dispinterface;
  ICompareEntriesResList = interface;
  ICompareEntriesResListDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ComparisonStructuresService = IComparisonStructuresService;
  ComparisonStructuresData = IComparisonStructuresData;
  ComprasionContext = IComprasionContext;
  SettingVisualization = ISettingVisualization;
  SettingCompareTree = ISettingCompareTree;
  SettingCompareAttribute = ISettingCompareAttribute;
  SettingsCompareTreeList = ISettingsCompareTreeList;
  SettingCompareAttributeList = ISettingCompareAttributeList;
  Attribute = IAttribute;
  Analog = IAnalog;
  ParentResult = IParentResult;
  ObjectInfo = IObjectInfo;
  ExcludedObject = IExcludedObject;
  Error = IError;
  ComparisonResult = IComparisonResult;
  AttributeList = IAttributeList;
  AnalogList = IAnalogList;
  ParentResultList = IParentResultList;
  ObjectInfoList = IObjectInfoList;
  ExcludedObjectList = IExcludedObjectList;
  ErrorList = IErrorList;
  Entity = IEntity;
  EntitiesList = IEntitiesList;
  CompareObjectInfo = ICompareObjectInfo;
  DifferenceCompositionList = IDifferenceCompositionList;
  Instance = IInstance;
  HiddenFields = IHiddenFields;
  Entry = IEntry;
  EntriesList = IEntriesList;
  Link = ILink;
  LinkList = ILinkList;
  AbsPath = IAbsPath;
  CompareAbsPath = ICompareAbsPath;
  CompareAbsPlacements = ICompareAbsPlacements;
  AbsPlacementList = IAbsPlacementList;
  EntryResultList = IEntryResultList;
  FamilyEntries = IFamilyEntries;
  EntryResult = IEntryResult;
  FamilyEntry = IFamilyEntry;
  CompareEntries = ICompareEntries;
  CompareEntriesRes = ICompareEntriesRes;
  CompareEntriesResList = ICompareEntriesResList;


// *********************************************************************//
// Interface: IComparisonStructuresService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01D0913D-E37C-4202-8C00-319CF758011E}
// *********************************************************************//
  IComparisonStructuresService = interface(IDispatch)
    ['{01D0913D-E37C-4202-8C00-319CF758011E}']
    function Get_SettingVisualization: ISettingVisualization; safecall;
    function GetStructuresData(const aXML: WideString): IComparisonStructuresData; safecall;
    function GetComparisonResult(const aXML: WideString): IComparisonResult; safecall;
    property SettingVisualization: ISettingVisualization read Get_SettingVisualization;
  end;

// *********************************************************************//
// DispIntf:  IComparisonStructuresServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01D0913D-E37C-4202-8C00-319CF758011E}
// *********************************************************************//
  IComparisonStructuresServiceDisp = dispinterface
    ['{01D0913D-E37C-4202-8C00-319CF758011E}']
    property SettingVisualization: ISettingVisualization readonly dispid 1;
    function GetStructuresData(const aXML: WideString): IComparisonStructuresData; dispid 2;
    function GetComparisonResult(const aXML: WideString): IComparisonResult; dispid 3;
  end;

// *********************************************************************//
// Interface: IComparisonStructuresData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3ACEBDF2-B368-4753-B92F-FF9C449B8EFF}
// *********************************************************************//
  IComparisonStructuresData = interface(IDispatch)
    ['{3ACEBDF2-B368-4753-B92F-FF9C449B8EFF}']
    function Get_ObjectList: IPDMObjectCollection; safecall;
    function Get_ReferenceContext: IComprasionContext; safecall;
    function Get_CompareContext: IComprasionContext; safecall;
    function Get_XML: WideString; safecall;
    function Get_ComparsionRule: WideString; safecall;
    procedure Set_ComparsionRule(const Value: WideString); safecall;
    property ObjectList: IPDMObjectCollection read Get_ObjectList;
    property ReferenceContext: IComprasionContext read Get_ReferenceContext;
    property CompareContext: IComprasionContext read Get_CompareContext;
    property XML: WideString read Get_XML;
    property ComparsionRule: WideString read Get_ComparsionRule write Set_ComparsionRule;
  end;

// *********************************************************************//
// DispIntf:  IComparisonStructuresDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3ACEBDF2-B368-4753-B92F-FF9C449B8EFF}
// *********************************************************************//
  IComparisonStructuresDataDisp = dispinterface
    ['{3ACEBDF2-B368-4753-B92F-FF9C449B8EFF}']
    property ObjectList: IPDMObjectCollection readonly dispid 205;
    property ReferenceContext: IComprasionContext readonly dispid 201;
    property CompareContext: IComprasionContext readonly dispid 202;
    property XML: WideString readonly dispid 203;
    property ComparsionRule: WideString dispid 206;
  end;

// *********************************************************************//
// Interface: IComprasionContext
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1DFCF340-5359-4BE8-8266-297C81B5250E}
// *********************************************************************//
  IComprasionContext = interface(IDispatch)
    ['{1DFCF340-5359-4BE8-8266-297C81B5250E}']
    function Get_EffectivityWindowParams: IDBWindowEffectivityParams; safecall;
    function Get_DBObject: IPDMObject2; safecall;
    procedure Set_DBObject(const Value: IPDMObject2); safecall;
    function Get_EffMode: WordBool; safecall;
    procedure Set_EffMode(Value: WordBool); safecall;
    function Get_EffCompareType: TEffCompareType; safecall;
    procedure Set_EffCompareType(Value: TEffCompareType); safecall;
    function Get_XML: WideString; safecall;
    procedure Init(const aLoodsmanApp: ILoodsmanApplication; const aXML: WideString); safecall;
    function Get_Params: WideString; safecall;
    procedure Set_Params(const Value: WideString); safecall;
    function Get_Option: Integer; safecall;
    procedure Set_Option(Value: Integer); safecall;
    function Get_ConfigurationVersionId: Integer; safecall;
    procedure Set_ConfigurationVersionId(Value: Integer); safecall;
    property EffectivityWindowParams: IDBWindowEffectivityParams read Get_EffectivityWindowParams;
    property DBObject: IPDMObject2 read Get_DBObject write Set_DBObject;
    property EffMode: WordBool read Get_EffMode write Set_EffMode;
    property EffCompareType: TEffCompareType read Get_EffCompareType write Set_EffCompareType;
    property XML: WideString read Get_XML;
    property Params: WideString read Get_Params write Set_Params;
    property Option: Integer read Get_Option write Set_Option;
    property ConfigurationVersionId: Integer read Get_ConfigurationVersionId write Set_ConfigurationVersionId;
  end;

// *********************************************************************//
// DispIntf:  IComprasionContextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1DFCF340-5359-4BE8-8266-297C81B5250E}
// *********************************************************************//
  IComprasionContextDisp = dispinterface
    ['{1DFCF340-5359-4BE8-8266-297C81B5250E}']
    property EffectivityWindowParams: IDBWindowEffectivityParams readonly dispid 201;
    property DBObject: IPDMObject2 dispid 202;
    property EffMode: WordBool dispid 203;
    property EffCompareType: TEffCompareType dispid 204;
    property XML: WideString readonly dispid 205;
    procedure Init(const aLoodsmanApp: ILoodsmanApplication; const aXML: WideString); dispid 206;
    property Params: WideString dispid 207;
    property Option: Integer dispid 208;
    property ConfigurationVersionId: Integer dispid 209;
  end;

// *********************************************************************//
// Interface: ISettingVisualization
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE763197-D25C-479A-BCC2-27E510187E40}
// *********************************************************************//
  ISettingVisualization = interface(IDispatch)
    ['{DE763197-D25C-479A-BCC2-27E510187E40}']
    function Get_SettingsCompareTreeList: ISettingsCompareTreeList; safecall;
    function Get_SettingCompareAttributeList: ISettingCompareAttributeList; safecall;
    function Get_ActionAnalog: TActionAnalog; safecall;
    procedure Reload; safecall;
    function Get_XML: WideString; safecall;
    property SettingsCompareTreeList: ISettingsCompareTreeList read Get_SettingsCompareTreeList;
    property SettingCompareAttributeList: ISettingCompareAttributeList read Get_SettingCompareAttributeList;
    property ActionAnalog: TActionAnalog read Get_ActionAnalog;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  ISettingVisualizationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE763197-D25C-479A-BCC2-27E510187E40}
// *********************************************************************//
  ISettingVisualizationDisp = dispinterface
    ['{DE763197-D25C-479A-BCC2-27E510187E40}']
    property SettingsCompareTreeList: ISettingsCompareTreeList readonly dispid 1;
    property SettingCompareAttributeList: ISettingCompareAttributeList readonly dispid 2;
    property ActionAnalog: TActionAnalog readonly dispid 3;
    procedure Reload; dispid 4;
    property XML: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: ISettingCompareTree
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AEE077C3-EBE6-4D85-AC97-B87D4DA39638}
// *********************************************************************//
  ISettingCompareTree = interface(IDispatch)
    ['{AEE077C3-EBE6-4D85-AC97-B87D4DA39638}']
    function Get_Color: Integer; safecall;
    function Get_ShowInType: TShowInType; safecall;
    function Get_ShowInModel: WordBool; safecall;
    function Get_CompareTypeTree: TSettingsCompareTreeType; safecall;
    function Get_GetCompareDiff(aDiffType: TDiffType): ISettingCompareTree; safecall;
    property Color: Integer read Get_Color;
    property ShowInType: TShowInType read Get_ShowInType;
    property ShowInModel: WordBool read Get_ShowInModel;
    property CompareTypeTree: TSettingsCompareTreeType read Get_CompareTypeTree;
    property GetCompareDiff[aDiffType: TDiffType]: ISettingCompareTree read Get_GetCompareDiff;
  end;

// *********************************************************************//
// DispIntf:  ISettingCompareTreeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AEE077C3-EBE6-4D85-AC97-B87D4DA39638}
// *********************************************************************//
  ISettingCompareTreeDisp = dispinterface
    ['{AEE077C3-EBE6-4D85-AC97-B87D4DA39638}']
    property Color: Integer readonly dispid 201;
    property ShowInType: TShowInType readonly dispid 202;
    property ShowInModel: WordBool readonly dispid 203;
    property CompareTypeTree: TSettingsCompareTreeType readonly dispid 204;
    property GetCompareDiff[aDiffType: TDiffType]: ISettingCompareTree readonly dispid 205;
  end;

// *********************************************************************//
// Interface: ISettingCompareAttribute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {37D3CBCC-4DBD-40E5-82C9-69267358B0D8}
// *********************************************************************//
  ISettingCompareAttribute = interface(IDispatch)
    ['{37D3CBCC-4DBD-40E5-82C9-69267358B0D8}']
    function Get_Color: Integer; safecall;
    function Get_ShowInType: TShowInType; safecall;
    function Get_CompareType: TSettingsCompareAttributeType; safecall;
    property Color: Integer read Get_Color;
    property ShowInType: TShowInType read Get_ShowInType;
    property CompareType: TSettingsCompareAttributeType read Get_CompareType;
  end;

// *********************************************************************//
// DispIntf:  ISettingCompareAttributeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {37D3CBCC-4DBD-40E5-82C9-69267358B0D8}
// *********************************************************************//
  ISettingCompareAttributeDisp = dispinterface
    ['{37D3CBCC-4DBD-40E5-82C9-69267358B0D8}']
    property Color: Integer readonly dispid 201;
    property ShowInType: TShowInType readonly dispid 202;
    property CompareType: TSettingsCompareAttributeType readonly dispid 203;
  end;

// *********************************************************************//
// Interface: ISettingsCompareTreeList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {68FBDA78-A204-4127-97FD-AC0A9839AC62}
// *********************************************************************//
  ISettingsCompareTreeList = interface(IDispatch)
    ['{68FBDA78-A204-4127-97FD-AC0A9839AC62}']
    function Get_Item(aIdx: Integer): ISettingCompareTree; safecall;
    function Get_Count: Integer; safecall;
    function GetItemByType(aType: TSettingsCompareTreeType): ISettingCompareTree; safecall;
    property Item[aIdx: Integer]: ISettingCompareTree read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ISettingsCompareTreeListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {68FBDA78-A204-4127-97FD-AC0A9839AC62}
// *********************************************************************//
  ISettingsCompareTreeListDisp = dispinterface
    ['{68FBDA78-A204-4127-97FD-AC0A9839AC62}']
    property Item[aIdx: Integer]: ISettingCompareTree readonly dispid 201;
    property Count: Integer readonly dispid 202;
    function GetItemByType(aType: TSettingsCompareTreeType): ISettingCompareTree; dispid 203;
  end;

// *********************************************************************//
// Interface: ISettingCompareAttributeList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EE944C86-594D-480C-AE94-D6AB2E4EC005}
// *********************************************************************//
  ISettingCompareAttributeList = interface(IDispatch)
    ['{EE944C86-594D-480C-AE94-D6AB2E4EC005}']
    function Get_Item(aIdx: Integer): ISettingCompareAttribute; safecall;
    function Get_Count: Integer; safecall;
    function GetItemByType(aType: TSettingsCompareAttributeType): ISettingCompareAttribute; safecall;
    property Item[aIdx: Integer]: ISettingCompareAttribute read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ISettingCompareAttributeListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EE944C86-594D-480C-AE94-D6AB2E4EC005}
// *********************************************************************//
  ISettingCompareAttributeListDisp = dispinterface
    ['{EE944C86-594D-480C-AE94-D6AB2E4EC005}']
    property Item[aIdx: Integer]: ISettingCompareAttribute readonly dispid 201;
    property Count: Integer readonly dispid 202;
    function GetItemByType(aType: TSettingsCompareAttributeType): ISettingCompareAttribute; dispid 203;
  end;

// *********************************************************************//
// Interface: IAttribute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A073C4D-4E06-48DD-9D20-180AD6186644}
// *********************************************************************//
  IAttribute = interface(IDispatch)
    ['{8A073C4D-4E06-48DD-9D20-180AD6186644}']
    function Get_AttributeName: WideString; safecall;
    function Get_AttributeType: TEntityType; safecall;
    function Get_LinkId: Integer; safecall;
    function Get_Value: WideString; safecall;
    function Get_EntryId: Integer; safecall;
    property AttributeName: WideString read Get_AttributeName;
    property AttributeType: TEntityType read Get_AttributeType;
    property LinkId: Integer read Get_LinkId;
    property Value: WideString read Get_Value;
    property EntryId: Integer read Get_EntryId;
  end;

// *********************************************************************//
// DispIntf:  IAttributeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A073C4D-4E06-48DD-9D20-180AD6186644}
// *********************************************************************//
  IAttributeDisp = dispinterface
    ['{8A073C4D-4E06-48DD-9D20-180AD6186644}']
    property AttributeName: WideString readonly dispid 1;
    property AttributeType: TEntityType readonly dispid 2;
    property LinkId: Integer readonly dispid 3;
    property Value: WideString readonly dispid 4;
    property EntryId: Integer readonly dispid 5;
  end;

// *********************************************************************//
// Interface: IAnalog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {93007D7B-48A5-40EE-AA6D-CA14C647D510}
// *********************************************************************//
  IAnalog = interface(IDispatch)
    ['{93007D7B-48A5-40EE-AA6D-CA14C647D510}']
    function Get_Id: Integer; safecall;
    function Get_AnalogType: WideString; safecall;
    function Get_Product: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_CompareStatus: WideString; safecall;
    function Get_IdenticalEntities: IEntitiesList; safecall;
    function Get_DifferenceEntities: IEntitiesList; safecall;
    function Get_ClearEntities: IEntitiesList; safecall;
    function Get_FilledEntities: IEntitiesList; safecall;
    function Get_DifferenceComposition: IDifferenceCompositionList; safecall;
    function Get_LinkList: ILinkList; safecall;
    function Get_CompareEntries: ICompareEntries; safecall;
    property Id: Integer read Get_Id;
    property AnalogType: WideString read Get_AnalogType;
    property Product: WideString read Get_Product;
    property Version: WideString read Get_Version;
    property CompareStatus: WideString read Get_CompareStatus;
    property IdenticalEntities: IEntitiesList read Get_IdenticalEntities;
    property DifferenceEntities: IEntitiesList read Get_DifferenceEntities;
    property ClearEntities: IEntitiesList read Get_ClearEntities;
    property FilledEntities: IEntitiesList read Get_FilledEntities;
    property DifferenceComposition: IDifferenceCompositionList read Get_DifferenceComposition;
    property LinkList: ILinkList read Get_LinkList;
    property CompareEntries: ICompareEntries read Get_CompareEntries;
  end;

// *********************************************************************//
// DispIntf:  IAnalogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {93007D7B-48A5-40EE-AA6D-CA14C647D510}
// *********************************************************************//
  IAnalogDisp = dispinterface
    ['{93007D7B-48A5-40EE-AA6D-CA14C647D510}']
    property Id: Integer readonly dispid 1;
    property AnalogType: WideString readonly dispid 2;
    property Product: WideString readonly dispid 3;
    property Version: WideString readonly dispid 4;
    property CompareStatus: WideString readonly dispid 5;
    property IdenticalEntities: IEntitiesList readonly dispid 6;
    property DifferenceEntities: IEntitiesList readonly dispid 7;
    property ClearEntities: IEntitiesList readonly dispid 8;
    property FilledEntities: IEntitiesList readonly dispid 9;
    property DifferenceComposition: IDifferenceCompositionList readonly dispid 10;
    property LinkList: ILinkList readonly dispid 11;
    property CompareEntries: ICompareEntries readonly dispid 12;
  end;

// *********************************************************************//
// Interface: IParentResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B506F861-5C95-422A-A584-C7A2D34091F3}
// *********************************************************************//
  IParentResult = interface(IDispatch)
    ['{B506F861-5C95-422A-A584-C7A2D34091F3}']
    function Get_ParentId: Integer; safecall;
    function Get_ParentLinkId: Integer; safecall;
    function Get_LinkType: WideString; safecall;
    function Get_AnalogId: Integer; safecall;
    function Get_AnalogParentId: Integer; safecall;
    function Get_AnalogLinkId: Integer; safecall;
    function Get_AnalogLinkType: WideString; safecall;
    function Get_Status: WideString; safecall;
    property ParentId: Integer read Get_ParentId;
    property ParentLinkId: Integer read Get_ParentLinkId;
    property LinkType: WideString read Get_LinkType;
    property AnalogId: Integer read Get_AnalogId;
    property AnalogParentId: Integer read Get_AnalogParentId;
    property AnalogLinkId: Integer read Get_AnalogLinkId;
    property AnalogLinkType: WideString read Get_AnalogLinkType;
    property Status: WideString read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  IParentResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B506F861-5C95-422A-A584-C7A2D34091F3}
// *********************************************************************//
  IParentResultDisp = dispinterface
    ['{B506F861-5C95-422A-A584-C7A2D34091F3}']
    property ParentId: Integer readonly dispid 1;
    property ParentLinkId: Integer readonly dispid 2;
    property LinkType: WideString readonly dispid 3;
    property AnalogId: Integer readonly dispid 4;
    property AnalogParentId: Integer readonly dispid 5;
    property AnalogLinkId: Integer readonly dispid 6;
    property AnalogLinkType: WideString readonly dispid 7;
    property Status: WideString readonly dispid 8;
  end;

// *********************************************************************//
// Interface: IObjectInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D9AAE122-F347-469F-80BD-6E2BD0ECC2DD}
// *********************************************************************//
  IObjectInfo = interface(IDispatch)
    ['{D9AAE122-F347-469F-80BD-6E2BD0ECC2DD}']
    function Get_Id: Integer; safecall;
    function Get_ObjectType: WideString; safecall;
    function Get_Product: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_Analogs: IAnalogList; safecall;
    function Get_CompareParents: IParentResultList; safecall;
    function Get_NotComparedAttributes: IAttributeList; safecall;
    function Get_Status: WideString; safecall;
    function Get_LinkList: ILinkList; safecall;
    property Id: Integer read Get_Id;
    property ObjectType: WideString read Get_ObjectType;
    property Product: WideString read Get_Product;
    property Version: WideString read Get_Version;
    property Analogs: IAnalogList read Get_Analogs;
    property CompareParents: IParentResultList read Get_CompareParents;
    property NotComparedAttributes: IAttributeList read Get_NotComparedAttributes;
    property Status: WideString read Get_Status;
    property LinkList: ILinkList read Get_LinkList;
  end;

// *********************************************************************//
// DispIntf:  IObjectInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D9AAE122-F347-469F-80BD-6E2BD0ECC2DD}
// *********************************************************************//
  IObjectInfoDisp = dispinterface
    ['{D9AAE122-F347-469F-80BD-6E2BD0ECC2DD}']
    property Id: Integer readonly dispid 1;
    property ObjectType: WideString readonly dispid 2;
    property Product: WideString readonly dispid 3;
    property Version: WideString readonly dispid 4;
    property Analogs: IAnalogList readonly dispid 7;
    property CompareParents: IParentResultList readonly dispid 8;
    property NotComparedAttributes: IAttributeList readonly dispid 9;
    property Status: WideString readonly dispid 10;
    property LinkList: ILinkList readonly dispid 11;
  end;

// *********************************************************************//
// Interface: IExcludedObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADEB8E6-470B-407B-9405-B4C9D0861880}
// *********************************************************************//
  IExcludedObject = interface(IDispatch)
    ['{6ADEB8E6-470B-407B-9405-B4C9D0861880}']
    function Get_Id: Integer; safecall;
    function Get_ExcludedType: WideString; safecall;
    function Get_Product: WideString; safecall;
    property Id: Integer read Get_Id;
    property ExcludedType: WideString read Get_ExcludedType;
    property Product: WideString read Get_Product;
  end;

// *********************************************************************//
// DispIntf:  IExcludedObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADEB8E6-470B-407B-9405-B4C9D0861880}
// *********************************************************************//
  IExcludedObjectDisp = dispinterface
    ['{6ADEB8E6-470B-407B-9405-B4C9D0861880}']
    property Id: Integer readonly dispid 1;
    property ExcludedType: WideString readonly dispid 2;
    property Product: WideString readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D2E8EB9F-BFB7-4255-94B9-BB09AE52F901}
// *********************************************************************//
  IError = interface(IDispatch)
    ['{D2E8EB9F-BFB7-4255-94B9-BB09AE52F901}']
    function Get_Message: WideString; safecall;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  IErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D2E8EB9F-BFB7-4255-94B9-BB09AE52F901}
// *********************************************************************//
  IErrorDisp = dispinterface
    ['{D2E8EB9F-BFB7-4255-94B9-BB09AE52F901}']
    property Message: WideString readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IComparisonResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FC4EE68-97F2-4496-BD61-DC995AD942FF}
// *********************************************************************//
  IComparisonResult = interface(IDispatch)
    ['{8FC4EE68-97F2-4496-BD61-DC995AD942FF}']
    function Get_Objects: IObjectInfoList; safecall;
    function Get_ExcludedObjects: IExcludedObjectList; safecall;
    function Get_Errors: IErrorList; safecall;
    function GetCompareObjectInfo(aIdObject: Integer; aCompareType: TCompareItemType; 
                                  aIdParent: Integer; aIdParentLink: Integer; 
                                  const aLinkType: WideString): ICompareObjectInfo; safecall;
    function Get_XML: WideString; safecall;
    function Get_Entries: IEntriesList; safecall;
    function GetCompareObjectInfo2(aIdObject: Integer; aCompareType: TCompareItemType; 
                                   aIdParent: Integer; aIdParentLink: Integer; 
                                   const aLinkType: WideString; aEntryID: Integer; 
                                   const aGroup: IStructureComparsionGroup): ICompareObjectInfo; safecall;
    property Objects: IObjectInfoList read Get_Objects;
    property ExcludedObjects: IExcludedObjectList read Get_ExcludedObjects;
    property Errors: IErrorList read Get_Errors;
    property XML: WideString read Get_XML;
    property Entries: IEntriesList read Get_Entries;
  end;

// *********************************************************************//
// DispIntf:  IComparisonResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FC4EE68-97F2-4496-BD61-DC995AD942FF}
// *********************************************************************//
  IComparisonResultDisp = dispinterface
    ['{8FC4EE68-97F2-4496-BD61-DC995AD942FF}']
    property Objects: IObjectInfoList readonly dispid 1;
    property ExcludedObjects: IExcludedObjectList readonly dispid 2;
    property Errors: IErrorList readonly dispid 3;
    function GetCompareObjectInfo(aIdObject: Integer; aCompareType: TCompareItemType; 
                                  aIdParent: Integer; aIdParentLink: Integer; 
                                  const aLinkType: WideString): ICompareObjectInfo; dispid 4;
    property XML: WideString readonly dispid 5;
    property Entries: IEntriesList readonly dispid 6;
    function GetCompareObjectInfo2(aIdObject: Integer; aCompareType: TCompareItemType; 
                                   aIdParent: Integer; aIdParentLink: Integer; 
                                   const aLinkType: WideString; aEntryID: Integer; 
                                   const aGroup: IStructureComparsionGroup): ICompareObjectInfo; dispid 7;
  end;

// *********************************************************************//
// Interface: IAttributeList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BABFEC92-288F-49B7-9B04-FFC4EA2061A2}
// *********************************************************************//
  IAttributeList = interface(IDispatch)
    ['{BABFEC92-288F-49B7-9B04-FFC4EA2061A2}']
    function Get_Item(aIdx: Integer): IAttribute; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IAttribute read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IAttributeListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BABFEC92-288F-49B7-9B04-FFC4EA2061A2}
// *********************************************************************//
  IAttributeListDisp = dispinterface
    ['{BABFEC92-288F-49B7-9B04-FFC4EA2061A2}']
    property Item[aIdx: Integer]: IAttribute readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IAnalogList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9121CB6-EE36-4699-9ECA-D7CD2DBFEE56}
// *********************************************************************//
  IAnalogList = interface(IDispatch)
    ['{B9121CB6-EE36-4699-9ECA-D7CD2DBFEE56}']
    function Get_Item(aIdx: Integer): IAnalog; safecall;
    function Get_Count: Integer; safecall;
    function IndexOfByID(aId: Integer): Integer; safecall;
    property Item[aIdx: Integer]: IAnalog read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IAnalogListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9121CB6-EE36-4699-9ECA-D7CD2DBFEE56}
// *********************************************************************//
  IAnalogListDisp = dispinterface
    ['{B9121CB6-EE36-4699-9ECA-D7CD2DBFEE56}']
    property Item[aIdx: Integer]: IAnalog readonly dispid 1;
    property Count: Integer readonly dispid 2;
    function IndexOfByID(aId: Integer): Integer; dispid 3;
  end;

// *********************************************************************//
// Interface: IParentResultList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4866321B-F407-4868-8FA4-4BC2E8D4B4A9}
// *********************************************************************//
  IParentResultList = interface(IDispatch)
    ['{4866321B-F407-4868-8FA4-4BC2E8D4B4A9}']
    function Get_Item(aIdx: Integer): IParentResult; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IParentResult read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IParentResultListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4866321B-F407-4868-8FA4-4BC2E8D4B4A9}
// *********************************************************************//
  IParentResultListDisp = dispinterface
    ['{4866321B-F407-4868-8FA4-4BC2E8D4B4A9}']
    property Item[aIdx: Integer]: IParentResult readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IObjectInfoList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6AD118ED-8F4D-4ECB-B238-4A88825C04DA}
// *********************************************************************//
  IObjectInfoList = interface(IDispatch)
    ['{6AD118ED-8F4D-4ECB-B238-4A88825C04DA}']
    function Get_Item(aIdx: Integer): IObjectInfo; safecall;
    function Get_Count: Integer; safecall;
    function Get_ItemByID(aId: Integer): IObjectInfo; safecall;
    function GetItemByAnalogID(aId: Integer; out aAnalogIdx: Integer): IObjectInfo; safecall;
    property Item[aIdx: Integer]: IObjectInfo read Get_Item;
    property Count: Integer read Get_Count;
    property ItemByID[aId: Integer]: IObjectInfo read Get_ItemByID;
  end;

// *********************************************************************//
// DispIntf:  IObjectInfoListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6AD118ED-8F4D-4ECB-B238-4A88825C04DA}
// *********************************************************************//
  IObjectInfoListDisp = dispinterface
    ['{6AD118ED-8F4D-4ECB-B238-4A88825C04DA}']
    property Item[aIdx: Integer]: IObjectInfo readonly dispid 1;
    property Count: Integer readonly dispid 2;
    property ItemByID[aId: Integer]: IObjectInfo readonly dispid 3;
    function GetItemByAnalogID(aId: Integer; out aAnalogIdx: Integer): IObjectInfo; dispid 4;
  end;

// *********************************************************************//
// Interface: IExcludedObjectList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74FC1DB1-AC91-45A0-AF60-3FE2147DDE0E}
// *********************************************************************//
  IExcludedObjectList = interface(IDispatch)
    ['{74FC1DB1-AC91-45A0-AF60-3FE2147DDE0E}']
    function Get_Item(aIdx: Integer): IExcludedObject; safecall;
    function Get_Count: Integer; safecall;
    function Get_ItemByID(aId: Integer): IExcludedObject; safecall;
    property Item[aIdx: Integer]: IExcludedObject read Get_Item;
    property Count: Integer read Get_Count;
    property ItemByID[aId: Integer]: IExcludedObject read Get_ItemByID;
  end;

// *********************************************************************//
// DispIntf:  IExcludedObjectListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74FC1DB1-AC91-45A0-AF60-3FE2147DDE0E}
// *********************************************************************//
  IExcludedObjectListDisp = dispinterface
    ['{74FC1DB1-AC91-45A0-AF60-3FE2147DDE0E}']
    property Item[aIdx: Integer]: IExcludedObject readonly dispid 1;
    property Count: Integer readonly dispid 2;
    property ItemByID[aId: Integer]: IExcludedObject readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IErrorList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF5DC232-6A40-46FB-A5F9-729F7B60A685}
// *********************************************************************//
  IErrorList = interface(IDispatch)
    ['{CF5DC232-6A40-46FB-A5F9-729F7B60A685}']
    function Get_Item(aIdx: Integer): IError; safecall;
    function Get_Count: Integer; safecall;
    function Add(const aMessage: WideString): Integer; safecall;
    property Item[aIdx: Integer]: IError read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IErrorListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF5DC232-6A40-46FB-A5F9-729F7B60A685}
// *********************************************************************//
  IErrorListDisp = dispinterface
    ['{CF5DC232-6A40-46FB-A5F9-729F7B60A685}']
    property Item[aIdx: Integer]: IError readonly dispid 1;
    property Count: Integer readonly dispid 2;
    function Add(const aMessage: WideString): Integer; dispid 3;
  end;

// *********************************************************************//
// Interface: IEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80F053FF-861A-4167-8F90-D7176FF63EDB}
// *********************************************************************//
  IEntity = interface(IDispatch)
    ['{80F053FF-861A-4167-8F90-D7176FF63EDB}']
    function Get_CompareAttribute: IAttribute; safecall;
    function Get_EtalonAttribute: IAttribute; safecall;
    function Get_ErrorMessage: WideString; safecall;
    property CompareAttribute: IAttribute read Get_CompareAttribute;
    property EtalonAttribute: IAttribute read Get_EtalonAttribute;
    property ErrorMessage: WideString read Get_ErrorMessage;
  end;

// *********************************************************************//
// DispIntf:  IEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80F053FF-861A-4167-8F90-D7176FF63EDB}
// *********************************************************************//
  IEntityDisp = dispinterface
    ['{80F053FF-861A-4167-8F90-D7176FF63EDB}']
    property CompareAttribute: IAttribute readonly dispid 1;
    property EtalonAttribute: IAttribute readonly dispid 2;
    property ErrorMessage: WideString readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IEntitiesList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41691759-6F9A-4A18-B250-5877F788D41E}
// *********************************************************************//
  IEntitiesList = interface(IDispatch)
    ['{41691759-6F9A-4A18-B250-5877F788D41E}']
    function Get_Item(aIdx: Integer): IEntity; safecall;
    function Get_Count: Integer; safecall;
    function GetEntity(const aName: WideString; aType: TEntityType; aCompareType: TCompareItemType): IEntity; safecall;
    property Item[aIdx: Integer]: IEntity read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IEntitiesListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41691759-6F9A-4A18-B250-5877F788D41E}
// *********************************************************************//
  IEntitiesListDisp = dispinterface
    ['{41691759-6F9A-4A18-B250-5877F788D41E}']
    property Item[aIdx: Integer]: IEntity readonly dispid 1;
    property Count: Integer readonly dispid 2;
    function GetEntity(const aName: WideString; aType: TEntityType; aCompareType: TCompareItemType): IEntity; dispid 3;
  end;

// *********************************************************************//
// Interface: ICompareObjectInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7893234F-E078-4316-A5B1-D4D458B5C944}
// *********************************************************************//
  ICompareObjectInfo = interface(IDispatch)
    ['{7893234F-E078-4316-A5B1-D4D458B5C944}']
    function Get_ObjectInfo: IObjectInfo; safecall;
    function Get_Status: TSettingsCompareTreeType; safecall;
    function Get_DiffTypes: OleVariant; safecall;
    function Get_CompareType: TCompareItemType; safecall;
    function Get_ObjectId: Integer; safecall;
    function Get_IsIgnored: WordBool; safecall;
    function Get_IsCompareEntry: WordBool; safecall;
    function Get_IsDeletedOrDiffQuantity(aEntryID: Integer): WordBool; safecall;
    function Get_IsIdenticalQuantity(aEntryID: Integer): WordBool; safecall;
    function Get_CompareEntriesResult(aLinkId: Integer; aObjAnalogId: Integer; 
                                      aLinkAnalogId: Integer): ICompareEntriesResList; safecall;
    property ObjectInfo: IObjectInfo read Get_ObjectInfo;
    property Status: TSettingsCompareTreeType read Get_Status;
    property DiffTypes: OleVariant read Get_DiffTypes;
    property CompareType: TCompareItemType read Get_CompareType;
    property ObjectId: Integer read Get_ObjectId;
    property IsIgnored: WordBool read Get_IsIgnored;
    property IsCompareEntry: WordBool read Get_IsCompareEntry;
    property IsDeletedOrDiffQuantity[aEntryID: Integer]: WordBool read Get_IsDeletedOrDiffQuantity;
    property IsIdenticalQuantity[aEntryID: Integer]: WordBool read Get_IsIdenticalQuantity;
    property CompareEntriesResult[aLinkId: Integer; aObjAnalogId: Integer; aLinkAnalogId: Integer]: ICompareEntriesResList read Get_CompareEntriesResult;
  end;

// *********************************************************************//
// DispIntf:  ICompareObjectInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7893234F-E078-4316-A5B1-D4D458B5C944}
// *********************************************************************//
  ICompareObjectInfoDisp = dispinterface
    ['{7893234F-E078-4316-A5B1-D4D458B5C944}']
    property ObjectInfo: IObjectInfo readonly dispid 1;
    property Status: TSettingsCompareTreeType readonly dispid 2;
    property DiffTypes: OleVariant readonly dispid 3;
    property CompareType: TCompareItemType readonly dispid 4;
    property ObjectId: Integer readonly dispid 5;
    property IsIgnored: WordBool readonly dispid 6;
    property IsCompareEntry: WordBool readonly dispid 7;
    property IsDeletedOrDiffQuantity[aEntryID: Integer]: WordBool readonly dispid 8;
    property IsIdenticalQuantity[aEntryID: Integer]: WordBool readonly dispid 9;
    property CompareEntriesResult[aLinkId: Integer; aObjAnalogId: Integer; aLinkAnalogId: Integer]: ICompareEntriesResList readonly dispid 10;
  end;

// *********************************************************************//
// Interface: IDifferenceCompositionList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BC7CC70-D80C-448C-A296-B9A187B9ECAC}
// *********************************************************************//
  IDifferenceCompositionList = interface(IDispatch)
    ['{6BC7CC70-D80C-448C-A296-B9A187B9ECAC}']
    function Get_Item(aIdx: Integer): IInstance; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IInstance read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IDifferenceCompositionListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BC7CC70-D80C-448C-A296-B9A187B9ECAC}
// *********************************************************************//
  IDifferenceCompositionListDisp = dispinterface
    ['{6BC7CC70-D80C-448C-A296-B9A187B9ECAC}']
    property Item[aIdx: Integer]: IInstance readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IInstance
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CCFF4D6C-F21A-488E-8FD7-3B16D2B12A59}
// *********************************************************************//
  IInstance = interface(IDispatch)
    ['{CCFF4D6C-F21A-488E-8FD7-3B16D2B12A59}']
    function Get_CompareId: Integer; safecall;
    function Get_EtalonId: Integer; safecall;
    function Get_Status: WideString; safecall;
    property CompareId: Integer read Get_CompareId;
    property EtalonId: Integer read Get_EtalonId;
    property Status: WideString read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  IInstanceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CCFF4D6C-F21A-488E-8FD7-3B16D2B12A59}
// *********************************************************************//
  IInstanceDisp = dispinterface
    ['{CCFF4D6C-F21A-488E-8FD7-3B16D2B12A59}']
    property CompareId: Integer readonly dispid 1;
    property EtalonId: Integer readonly dispid 2;
    property Status: WideString readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IHiddenFields
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBA88120-13BE-408A-BB7F-ABFD40EED4BB}
// *********************************************************************//
  IHiddenFields = interface(IDispatch)
    ['{DBA88120-13BE-408A-BB7F-ABFD40EED4BB}']
    function Get_FieldValue(const aField: WideString): WideString; safecall;
    procedure Set_FieldValue(const aField: WideString; const Value: WideString); safecall;
    property FieldValue[const aField: WideString]: WideString read Get_FieldValue write Set_FieldValue;
  end;

// *********************************************************************//
// DispIntf:  IHiddenFieldsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBA88120-13BE-408A-BB7F-ABFD40EED4BB}
// *********************************************************************//
  IHiddenFieldsDisp = dispinterface
    ['{DBA88120-13BE-408A-BB7F-ABFD40EED4BB}']
    property FieldValue[const aField: WideString]: WideString dispid 201;
  end;

// *********************************************************************//
// Interface: IEntry
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99F166EE-1DAB-4F22-9EE1-E45A24BBA9A2}
// *********************************************************************//
  IEntry = interface(IDispatch)
    ['{99F166EE-1DAB-4F22-9EE1-E45A24BBA9A2}']
    function Get_EntryId: Integer; safecall;
    function Get_PlmKey: WideString; safecall;
    function Get_FamilyKey: WideString; safecall;
    function Get_CadPlacement: WideString; safecall;
    function Get_Status: WideString; safecall;
    function Get_InheritedEntries: IEntriesList; safecall;
    function Get_CompareEntries: IEntriesList; safecall;
    function Get_Identity: IEntriesList; safecall;
    function Get_CompareByCadKey: IEntriesList; safecall;
    function Get_AbsPlacements: IAbsPlacementList; safecall;
    function Get_Quantity: WideString; safecall;
    function Get_CADKey: WideString; safecall;
    property EntryId: Integer read Get_EntryId;
    property PlmKey: WideString read Get_PlmKey;
    property FamilyKey: WideString read Get_FamilyKey;
    property CadPlacement: WideString read Get_CadPlacement;
    property Status: WideString read Get_Status;
    property InheritedEntries: IEntriesList read Get_InheritedEntries;
    property CompareEntries: IEntriesList read Get_CompareEntries;
    property Identity: IEntriesList read Get_Identity;
    property CompareByCadKey: IEntriesList read Get_CompareByCadKey;
    property AbsPlacements: IAbsPlacementList read Get_AbsPlacements;
    property Quantity: WideString read Get_Quantity;
    property CADKey: WideString read Get_CADKey;
  end;

// *********************************************************************//
// DispIntf:  IEntryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99F166EE-1DAB-4F22-9EE1-E45A24BBA9A2}
// *********************************************************************//
  IEntryDisp = dispinterface
    ['{99F166EE-1DAB-4F22-9EE1-E45A24BBA9A2}']
    property EntryId: Integer readonly dispid 1;
    property PlmKey: WideString readonly dispid 2;
    property FamilyKey: WideString readonly dispid 3;
    property CadPlacement: WideString readonly dispid 4;
    property Status: WideString readonly dispid 5;
    property InheritedEntries: IEntriesList readonly dispid 6;
    property CompareEntries: IEntriesList readonly dispid 7;
    property Identity: IEntriesList readonly dispid 8;
    property CompareByCadKey: IEntriesList readonly dispid 9;
    property AbsPlacements: IAbsPlacementList readonly dispid 10;
    property Quantity: WideString readonly dispid 11;
    property CADKey: WideString readonly dispid 12;
  end;

// *********************************************************************//
// Interface: IEntriesList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D33CDEC7-634A-4AEC-B878-74E0E2ECAE3A}
// *********************************************************************//
  IEntriesList = interface(IDispatch)
    ['{D33CDEC7-634A-4AEC-B878-74E0E2ECAE3A}']
    function Get_Item(aIdx: Integer): IEntry; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IEntry read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IEntriesListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D33CDEC7-634A-4AEC-B878-74E0E2ECAE3A}
// *********************************************************************//
  IEntriesListDisp = dispinterface
    ['{D33CDEC7-634A-4AEC-B878-74E0E2ECAE3A}']
    property Item[aIdx: Integer]: IEntry readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: ILink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF829433-D7CF-4563-9A01-FCA43FC8804B}
// *********************************************************************//
  ILink = interface(IDispatch)
    ['{BF829433-D7CF-4563-9A01-FCA43FC8804B}']
    function Get_LinkId: Integer; safecall;
    function Get_Entries: IEntriesList; safecall;
    function Get_Quantity: WideString; safecall;
    function Get_EntryStatus: WideString; safecall;
    property LinkId: Integer read Get_LinkId;
    property Entries: IEntriesList read Get_Entries;
    property Quantity: WideString read Get_Quantity;
    property EntryStatus: WideString read Get_EntryStatus;
  end;

// *********************************************************************//
// DispIntf:  ILinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF829433-D7CF-4563-9A01-FCA43FC8804B}
// *********************************************************************//
  ILinkDisp = dispinterface
    ['{BF829433-D7CF-4563-9A01-FCA43FC8804B}']
    property LinkId: Integer readonly dispid 1;
    property Entries: IEntriesList readonly dispid 2;
    property Quantity: WideString readonly dispid 3;
    property EntryStatus: WideString readonly dispid 4;
  end;

// *********************************************************************//
// Interface: ILinkList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A507AA2A-815D-4CFA-91AF-D088F39179A8}
// *********************************************************************//
  ILinkList = interface(IDispatch)
    ['{A507AA2A-815D-4CFA-91AF-D088F39179A8}']
    function Get_Item(aIdx: Integer): ILink; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: ILink read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ILinkListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A507AA2A-815D-4CFA-91AF-D088F39179A8}
// *********************************************************************//
  ILinkListDisp = dispinterface
    ['{A507AA2A-815D-4CFA-91AF-D088F39179A8}']
    property Item[aIdx: Integer]: ILink readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IAbsPath
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AB819A3-68E9-442A-83A7-BE87F5D127CA}
// *********************************************************************//
  IAbsPath = interface(IDispatch)
    ['{9AB819A3-68E9-442A-83A7-BE87F5D127CA}']
    function Get_EntryPath: WideString; safecall;
    function Get_Placement: WideString; safecall;
    function Get_CompareAbsPlacements: ICompareAbsPlacements; safecall;
    property EntryPath: WideString read Get_EntryPath;
    property Placement: WideString read Get_Placement;
    property CompareAbsPlacements: ICompareAbsPlacements read Get_CompareAbsPlacements;
  end;

// *********************************************************************//
// DispIntf:  IAbsPathDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AB819A3-68E9-442A-83A7-BE87F5D127CA}
// *********************************************************************//
  IAbsPathDisp = dispinterface
    ['{9AB819A3-68E9-442A-83A7-BE87F5D127CA}']
    property EntryPath: WideString readonly dispid 1;
    property Placement: WideString readonly dispid 2;
    property CompareAbsPlacements: ICompareAbsPlacements readonly dispid 3;
  end;

// *********************************************************************//
// Interface: ICompareAbsPath
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97AE1E62-B440-4873-A0A2-4E5D9B9B8D72}
// *********************************************************************//
  ICompareAbsPath = interface(IDispatch)
    ['{97AE1E62-B440-4873-A0A2-4E5D9B9B8D72}']
    function Get_EntryId: Integer; safecall;
    function Get_Path: WideString; safecall;
    function Get_AbsPlacement: WideString; safecall;
    function Get_Status: WideString; safecall;
    property EntryId: Integer read Get_EntryId;
    property Path: WideString read Get_Path;
    property AbsPlacement: WideString read Get_AbsPlacement;
    property Status: WideString read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  ICompareAbsPathDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97AE1E62-B440-4873-A0A2-4E5D9B9B8D72}
// *********************************************************************//
  ICompareAbsPathDisp = dispinterface
    ['{97AE1E62-B440-4873-A0A2-4E5D9B9B8D72}']
    property EntryId: Integer readonly dispid 1;
    property Path: WideString readonly dispid 2;
    property AbsPlacement: WideString readonly dispid 3;
    property Status: WideString readonly dispid 4;
  end;

// *********************************************************************//
// Interface: ICompareAbsPlacements
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ACCD61D-DB31-4EFB-86A0-3CE9F9693BDE}
// *********************************************************************//
  ICompareAbsPlacements = interface(IDispatch)
    ['{6ACCD61D-DB31-4EFB-86A0-3CE9F9693BDE}']
    function Get_Item(aIdx: Integer): ICompareAbsPath; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: ICompareAbsPath read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ICompareAbsPlacementsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ACCD61D-DB31-4EFB-86A0-3CE9F9693BDE}
// *********************************************************************//
  ICompareAbsPlacementsDisp = dispinterface
    ['{6ACCD61D-DB31-4EFB-86A0-3CE9F9693BDE}']
    property Item[aIdx: Integer]: ICompareAbsPath readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IAbsPlacementList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63431E9B-6E1E-481A-BEA0-986061A4E2B2}
// *********************************************************************//
  IAbsPlacementList = interface(IDispatch)
    ['{63431E9B-6E1E-481A-BEA0-986061A4E2B2}']
    function Get_Item(aIdx: Integer): IAbsPath; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IAbsPath read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IAbsPlacementListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63431E9B-6E1E-481A-BEA0-986061A4E2B2}
// *********************************************************************//
  IAbsPlacementListDisp = dispinterface
    ['{63431E9B-6E1E-481A-BEA0-986061A4E2B2}']
    property Item[aIdx: Integer]: IAbsPath readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IEntryResultList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEAD1043-8C5B-4D70-9526-E6A6901CACAE}
// *********************************************************************//
  IEntryResultList = interface(IDispatch)
    ['{EEAD1043-8C5B-4D70-9526-E6A6901CACAE}']
    function Get_Item(aIdx: Integer): IEntryResult; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IEntryResult read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IEntryResultListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEAD1043-8C5B-4D70-9526-E6A6901CACAE}
// *********************************************************************//
  IEntryResultListDisp = dispinterface
    ['{EEAD1043-8C5B-4D70-9526-E6A6901CACAE}']
    property Item[aIdx: Integer]: IEntryResult readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IFamilyEntries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {38BB3A97-2261-492A-8E85-2FEC4923B7C7}
// *********************************************************************//
  IFamilyEntries = interface(IDispatch)
    ['{38BB3A97-2261-492A-8E85-2FEC4923B7C7}']
    function Get_Item(aIdx: Integer): IFamilyEntry; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: IFamilyEntry read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IFamilyEntriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {38BB3A97-2261-492A-8E85-2FEC4923B7C7}
// *********************************************************************//
  IFamilyEntriesDisp = dispinterface
    ['{38BB3A97-2261-492A-8E85-2FEC4923B7C7}']
    property Item[aIdx: Integer]: IFamilyEntry readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IEntryResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D6F2CD8-D6E4-400B-B258-834AA018F76E}
// *********************************************************************//
  IEntryResult = interface(IDispatch)
    ['{2D6F2CD8-D6E4-400B-B258-834AA018F76E}']
    function Get_Id: Integer; safecall;
    property Id: Integer read Get_Id;
  end;

// *********************************************************************//
// DispIntf:  IEntryResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D6F2CD8-D6E4-400B-B258-834AA018F76E}
// *********************************************************************//
  IEntryResultDisp = dispinterface
    ['{2D6F2CD8-D6E4-400B-B258-834AA018F76E}']
    property Id: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IFamilyEntry
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E085B90-C291-4DAF-B38E-82662D7B6725}
// *********************************************************************//
  IFamilyEntry = interface(IDispatch)
    ['{6E085B90-C291-4DAF-B38E-82662D7B6725}']
    function Get_CompareEntryId: Integer; safecall;
    function Get_AnalogEntryId: Integer; safecall;
    function Get_Status: WideString; safecall;
    property CompareEntryId: Integer read Get_CompareEntryId;
    property AnalogEntryId: Integer read Get_AnalogEntryId;
    property Status: WideString read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  IFamilyEntryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E085B90-C291-4DAF-B38E-82662D7B6725}
// *********************************************************************//
  IFamilyEntryDisp = dispinterface
    ['{6E085B90-C291-4DAF-B38E-82662D7B6725}']
    property CompareEntryId: Integer readonly dispid 1;
    property AnalogEntryId: Integer readonly dispid 2;
    property Status: WideString readonly dispid 3;
  end;

// *********************************************************************//
// Interface: ICompareEntries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADE29A4-5ABA-4156-9235-F1A90934E5A2}
// *********************************************************************//
  ICompareEntries = interface(IDispatch)
    ['{6ADE29A4-5ABA-4156-9235-F1A90934E5A2}']
    function Get_MissingEntries: IEntryResultList; safecall;
    function Get_IdentityEntries: IEntryResultList; safecall;
    function Get_NewEntries: IEntryResultList; safecall;
    function Get_FamilyEntries: IFamilyEntries; safecall;
    property MissingEntries: IEntryResultList read Get_MissingEntries;
    property IdentityEntries: IEntryResultList read Get_IdentityEntries;
    property NewEntries: IEntryResultList read Get_NewEntries;
    property FamilyEntries: IFamilyEntries read Get_FamilyEntries;
  end;

// *********************************************************************//
// DispIntf:  ICompareEntriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADE29A4-5ABA-4156-9235-F1A90934E5A2}
// *********************************************************************//
  ICompareEntriesDisp = dispinterface
    ['{6ADE29A4-5ABA-4156-9235-F1A90934E5A2}']
    property MissingEntries: IEntryResultList readonly dispid 1;
    property IdentityEntries: IEntryResultList readonly dispid 2;
    property NewEntries: IEntryResultList readonly dispid 3;
    property FamilyEntries: IFamilyEntries readonly dispid 4;
  end;

// *********************************************************************//
// Interface: ICompareEntriesRes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AACACD55-D88D-4D0B-BA69-C0F069C94BE0}
// *********************************************************************//
  ICompareEntriesRes = interface(IDispatch)
    ['{AACACD55-D88D-4D0B-BA69-C0F069C94BE0}']
    function Get_CompareEntry: IEntry; safecall;
    function Get_EtalonEntry: IEntry; safecall;
    function Get_Status: TSettingsCompareTreeType; safecall;
    property CompareEntry: IEntry read Get_CompareEntry;
    property EtalonEntry: IEntry read Get_EtalonEntry;
    property Status: TSettingsCompareTreeType read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  ICompareEntriesResDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AACACD55-D88D-4D0B-BA69-C0F069C94BE0}
// *********************************************************************//
  ICompareEntriesResDisp = dispinterface
    ['{AACACD55-D88D-4D0B-BA69-C0F069C94BE0}']
    property CompareEntry: IEntry readonly dispid 1;
    property EtalonEntry: IEntry readonly dispid 2;
    property Status: TSettingsCompareTreeType readonly dispid 3;
  end;

// *********************************************************************//
// Interface: ICompareEntriesResList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B80B4B1-0F95-4EEC-BDCC-97F1587324DF}
// *********************************************************************//
  ICompareEntriesResList = interface(IDispatch)
    ['{8B80B4B1-0F95-4EEC-BDCC-97F1587324DF}']
    function Get_Item(aIdx: Integer): ICompareEntriesRes; safecall;
    function Get_Count: Integer; safecall;
    property Item[aIdx: Integer]: ICompareEntriesRes read Get_Item;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ICompareEntriesResListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B80B4B1-0F95-4EEC-BDCC-97F1587324DF}
// *********************************************************************//
  ICompareEntriesResListDisp = dispinterface
    ['{8B80B4B1-0F95-4EEC-BDCC-97F1587324DF}']
    property Item[aIdx: Integer]: ICompareEntriesRes readonly dispid 1;
    property Count: Integer readonly dispid 2;
  end;

// *********************************************************************//
// The Class CoComparisonStructuresService provides a Create and CreateRemote method to          
// create instances of the default interface IComparisonStructuresService exposed by              
// the CoClass ComparisonStructuresService. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComparisonStructuresService = class
    class function Create: IComparisonStructuresService;
    class function CreateRemote(const MachineName: string): IComparisonStructuresService;
  end;

// *********************************************************************//
// The Class CoComparisonStructuresData provides a Create and CreateRemote method to          
// create instances of the default interface IComparisonStructuresData exposed by              
// the CoClass ComparisonStructuresData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComparisonStructuresData = class
    class function Create: IComparisonStructuresData;
    class function CreateRemote(const MachineName: string): IComparisonStructuresData;
  end;

// *********************************************************************//
// The Class CoComprasionContext provides a Create and CreateRemote method to          
// create instances of the default interface IComprasionContext exposed by              
// the CoClass ComprasionContext. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComprasionContext = class
    class function Create: IComprasionContext;
    class function CreateRemote(const MachineName: string): IComprasionContext;
  end;

// *********************************************************************//
// The Class CoSettingVisualization provides a Create and CreateRemote method to          
// create instances of the default interface ISettingVisualization exposed by              
// the CoClass SettingVisualization. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSettingVisualization = class
    class function Create: ISettingVisualization;
    class function CreateRemote(const MachineName: string): ISettingVisualization;
  end;

// *********************************************************************//
// The Class CoSettingCompareTree provides a Create and CreateRemote method to          
// create instances of the default interface ISettingCompareTree exposed by              
// the CoClass SettingCompareTree. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSettingCompareTree = class
    class function Create: ISettingCompareTree;
    class function CreateRemote(const MachineName: string): ISettingCompareTree;
  end;

// *********************************************************************//
// The Class CoSettingCompareAttribute provides a Create and CreateRemote method to          
// create instances of the default interface ISettingCompareAttribute exposed by              
// the CoClass SettingCompareAttribute. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSettingCompareAttribute = class
    class function Create: ISettingCompareAttribute;
    class function CreateRemote(const MachineName: string): ISettingCompareAttribute;
  end;

// *********************************************************************//
// The Class CoSettingsCompareTreeList provides a Create and CreateRemote method to          
// create instances of the default interface ISettingsCompareTreeList exposed by              
// the CoClass SettingsCompareTreeList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSettingsCompareTreeList = class
    class function Create: ISettingsCompareTreeList;
    class function CreateRemote(const MachineName: string): ISettingsCompareTreeList;
  end;

// *********************************************************************//
// The Class CoSettingCompareAttributeList provides a Create and CreateRemote method to          
// create instances of the default interface ISettingCompareAttributeList exposed by              
// the CoClass SettingCompareAttributeList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSettingCompareAttributeList = class
    class function Create: ISettingCompareAttributeList;
    class function CreateRemote(const MachineName: string): ISettingCompareAttributeList;
  end;

// *********************************************************************//
// The Class CoAttribute provides a Create and CreateRemote method to          
// create instances of the default interface IAttribute exposed by              
// the CoClass Attribute. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttribute = class
    class function Create: IAttribute;
    class function CreateRemote(const MachineName: string): IAttribute;
  end;

// *********************************************************************//
// The Class CoAnalog provides a Create and CreateRemote method to          
// create instances of the default interface IAnalog exposed by              
// the CoClass Analog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnalog = class
    class function Create: IAnalog;
    class function CreateRemote(const MachineName: string): IAnalog;
  end;

// *********************************************************************//
// The Class CoParentResult provides a Create and CreateRemote method to          
// create instances of the default interface IParentResult exposed by              
// the CoClass ParentResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParentResult = class
    class function Create: IParentResult;
    class function CreateRemote(const MachineName: string): IParentResult;
  end;

// *********************************************************************//
// The Class CoObjectInfo provides a Create and CreateRemote method to          
// create instances of the default interface IObjectInfo exposed by              
// the CoClass ObjectInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObjectInfo = class
    class function Create: IObjectInfo;
    class function CreateRemote(const MachineName: string): IObjectInfo;
  end;

// *********************************************************************//
// The Class CoExcludedObject provides a Create and CreateRemote method to          
// create instances of the default interface IExcludedObject exposed by              
// the CoClass ExcludedObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExcludedObject = class
    class function Create: IExcludedObject;
    class function CreateRemote(const MachineName: string): IExcludedObject;
  end;

// *********************************************************************//
// The Class CoError provides a Create and CreateRemote method to          
// create instances of the default interface IError exposed by              
// the CoClass Error. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoError = class
    class function Create: IError;
    class function CreateRemote(const MachineName: string): IError;
  end;

// *********************************************************************//
// The Class CoComparisonResult provides a Create and CreateRemote method to          
// create instances of the default interface IComparisonResult exposed by              
// the CoClass ComparisonResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComparisonResult = class
    class function Create: IComparisonResult;
    class function CreateRemote(const MachineName: string): IComparisonResult;
  end;

// *********************************************************************//
// The Class CoAttributeList provides a Create and CreateRemote method to          
// create instances of the default interface IAttributeList exposed by              
// the CoClass AttributeList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributeList = class
    class function Create: IAttributeList;
    class function CreateRemote(const MachineName: string): IAttributeList;
  end;

// *********************************************************************//
// The Class CoAnalogList provides a Create and CreateRemote method to          
// create instances of the default interface IAnalogList exposed by              
// the CoClass AnalogList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnalogList = class
    class function Create: IAnalogList;
    class function CreateRemote(const MachineName: string): IAnalogList;
  end;

// *********************************************************************//
// The Class CoParentResultList provides a Create and CreateRemote method to          
// create instances of the default interface IParentResultList exposed by              
// the CoClass ParentResultList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParentResultList = class
    class function Create: IParentResultList;
    class function CreateRemote(const MachineName: string): IParentResultList;
  end;

// *********************************************************************//
// The Class CoObjectInfoList provides a Create and CreateRemote method to          
// create instances of the default interface IObjectInfoList exposed by              
// the CoClass ObjectInfoList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObjectInfoList = class
    class function Create: IObjectInfoList;
    class function CreateRemote(const MachineName: string): IObjectInfoList;
  end;

// *********************************************************************//
// The Class CoExcludedObjectList provides a Create and CreateRemote method to          
// create instances of the default interface IExcludedObjectList exposed by              
// the CoClass ExcludedObjectList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExcludedObjectList = class
    class function Create: IExcludedObjectList;
    class function CreateRemote(const MachineName: string): IExcludedObjectList;
  end;

// *********************************************************************//
// The Class CoErrorList provides a Create and CreateRemote method to          
// create instances of the default interface IErrorList exposed by              
// the CoClass ErrorList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoErrorList = class
    class function Create: IErrorList;
    class function CreateRemote(const MachineName: string): IErrorList;
  end;

// *********************************************************************//
// The Class CoEntity provides a Create and CreateRemote method to          
// create instances of the default interface IEntity exposed by              
// the CoClass Entity. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntity = class
    class function Create: IEntity;
    class function CreateRemote(const MachineName: string): IEntity;
  end;

// *********************************************************************//
// The Class CoEntitiesList provides a Create and CreateRemote method to          
// create instances of the default interface IEntitiesList exposed by              
// the CoClass EntitiesList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntitiesList = class
    class function Create: IEntitiesList;
    class function CreateRemote(const MachineName: string): IEntitiesList;
  end;

// *********************************************************************//
// The Class CoCompareObjectInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICompareObjectInfo exposed by              
// the CoClass CompareObjectInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareObjectInfo = class
    class function Create: ICompareObjectInfo;
    class function CreateRemote(const MachineName: string): ICompareObjectInfo;
  end;

// *********************************************************************//
// The Class CoDifferenceCompositionList provides a Create and CreateRemote method to          
// create instances of the default interface IDifferenceCompositionList exposed by              
// the CoClass DifferenceCompositionList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDifferenceCompositionList = class
    class function Create: IDifferenceCompositionList;
    class function CreateRemote(const MachineName: string): IDifferenceCompositionList;
  end;

// *********************************************************************//
// The Class CoInstance provides a Create and CreateRemote method to          
// create instances of the default interface IInstance exposed by              
// the CoClass Instance. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInstance = class
    class function Create: IInstance;
    class function CreateRemote(const MachineName: string): IInstance;
  end;

// *********************************************************************//
// The Class CoHiddenFields provides a Create and CreateRemote method to          
// create instances of the default interface IHiddenFields exposed by              
// the CoClass HiddenFields. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoHiddenFields = class
    class function Create: IHiddenFields;
    class function CreateRemote(const MachineName: string): IHiddenFields;
  end;

// *********************************************************************//
// The Class CoEntry provides a Create and CreateRemote method to          
// create instances of the default interface IEntry exposed by              
// the CoClass Entry. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntry = class
    class function Create: IEntry;
    class function CreateRemote(const MachineName: string): IEntry;
  end;

// *********************************************************************//
// The Class CoEntriesList provides a Create and CreateRemote method to          
// create instances of the default interface IEntriesList exposed by              
// the CoClass EntriesList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntriesList = class
    class function Create: IEntriesList;
    class function CreateRemote(const MachineName: string): IEntriesList;
  end;

// *********************************************************************//
// The Class CoLink provides a Create and CreateRemote method to          
// create instances of the default interface ILink exposed by              
// the CoClass Link. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLink = class
    class function Create: ILink;
    class function CreateRemote(const MachineName: string): ILink;
  end;

// *********************************************************************//
// The Class CoLinkList provides a Create and CreateRemote method to          
// create instances of the default interface ILinkList exposed by              
// the CoClass LinkList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLinkList = class
    class function Create: ILinkList;
    class function CreateRemote(const MachineName: string): ILinkList;
  end;

// *********************************************************************//
// The Class CoAbsPath provides a Create and CreateRemote method to          
// create instances of the default interface IAbsPath exposed by              
// the CoClass AbsPath. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAbsPath = class
    class function Create: IAbsPath;
    class function CreateRemote(const MachineName: string): IAbsPath;
  end;

// *********************************************************************//
// The Class CoCompareAbsPath provides a Create and CreateRemote method to          
// create instances of the default interface ICompareAbsPath exposed by              
// the CoClass CompareAbsPath. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareAbsPath = class
    class function Create: ICompareAbsPath;
    class function CreateRemote(const MachineName: string): ICompareAbsPath;
  end;

// *********************************************************************//
// The Class CoCompareAbsPlacements provides a Create and CreateRemote method to          
// create instances of the default interface ICompareAbsPlacements exposed by              
// the CoClass CompareAbsPlacements. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareAbsPlacements = class
    class function Create: ICompareAbsPlacements;
    class function CreateRemote(const MachineName: string): ICompareAbsPlacements;
  end;

// *********************************************************************//
// The Class CoAbsPlacementList provides a Create and CreateRemote method to          
// create instances of the default interface IAbsPlacementList exposed by              
// the CoClass AbsPlacementList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAbsPlacementList = class
    class function Create: IAbsPlacementList;
    class function CreateRemote(const MachineName: string): IAbsPlacementList;
  end;

// *********************************************************************//
// The Class CoEntryResultList provides a Create and CreateRemote method to          
// create instances of the default interface IEntryResultList exposed by              
// the CoClass EntryResultList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntryResultList = class
    class function Create: IEntryResultList;
    class function CreateRemote(const MachineName: string): IEntryResultList;
  end;

// *********************************************************************//
// The Class CoFamilyEntries provides a Create and CreateRemote method to          
// create instances of the default interface IFamilyEntries exposed by              
// the CoClass FamilyEntries. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFamilyEntries = class
    class function Create: IFamilyEntries;
    class function CreateRemote(const MachineName: string): IFamilyEntries;
  end;

// *********************************************************************//
// The Class CoEntryResult provides a Create and CreateRemote method to          
// create instances of the default interface IEntryResult exposed by              
// the CoClass EntryResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntryResult = class
    class function Create: IEntryResult;
    class function CreateRemote(const MachineName: string): IEntryResult;
  end;

// *********************************************************************//
// The Class CoFamilyEntry provides a Create and CreateRemote method to          
// create instances of the default interface IFamilyEntry exposed by              
// the CoClass FamilyEntry. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFamilyEntry = class
    class function Create: IFamilyEntry;
    class function CreateRemote(const MachineName: string): IFamilyEntry;
  end;

// *********************************************************************//
// The Class CoCompareEntries provides a Create and CreateRemote method to          
// create instances of the default interface ICompareEntries exposed by              
// the CoClass CompareEntries. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareEntries = class
    class function Create: ICompareEntries;
    class function CreateRemote(const MachineName: string): ICompareEntries;
  end;

// *********************************************************************//
// The Class CoCompareEntriesRes provides a Create and CreateRemote method to          
// create instances of the default interface ICompareEntriesRes exposed by              
// the CoClass CompareEntriesRes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareEntriesRes = class
    class function Create: ICompareEntriesRes;
    class function CreateRemote(const MachineName: string): ICompareEntriesRes;
  end;

// *********************************************************************//
// The Class CoCompareEntriesResList provides a Create and CreateRemote method to          
// create instances of the default interface ICompareEntriesResList exposed by              
// the CoClass CompareEntriesResList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompareEntriesResList = class
    class function Create: ICompareEntriesResList;
    class function CreateRemote(const MachineName: string): ICompareEntriesResList;
  end;

implementation

uses ComObj;

class function CoComparisonStructuresService.Create: IComparisonStructuresService;
begin
  Result := CreateComObject(CLASS_ComparisonStructuresService) as IComparisonStructuresService;
end;

class function CoComparisonStructuresService.CreateRemote(const MachineName: string): IComparisonStructuresService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComparisonStructuresService) as IComparisonStructuresService;
end;

class function CoComparisonStructuresData.Create: IComparisonStructuresData;
begin
  Result := CreateComObject(CLASS_ComparisonStructuresData) as IComparisonStructuresData;
end;

class function CoComparisonStructuresData.CreateRemote(const MachineName: string): IComparisonStructuresData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComparisonStructuresData) as IComparisonStructuresData;
end;

class function CoComprasionContext.Create: IComprasionContext;
begin
  Result := CreateComObject(CLASS_ComprasionContext) as IComprasionContext;
end;

class function CoComprasionContext.CreateRemote(const MachineName: string): IComprasionContext;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComprasionContext) as IComprasionContext;
end;

class function CoSettingVisualization.Create: ISettingVisualization;
begin
  Result := CreateComObject(CLASS_SettingVisualization) as ISettingVisualization;
end;

class function CoSettingVisualization.CreateRemote(const MachineName: string): ISettingVisualization;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SettingVisualization) as ISettingVisualization;
end;

class function CoSettingCompareTree.Create: ISettingCompareTree;
begin
  Result := CreateComObject(CLASS_SettingCompareTree) as ISettingCompareTree;
end;

class function CoSettingCompareTree.CreateRemote(const MachineName: string): ISettingCompareTree;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SettingCompareTree) as ISettingCompareTree;
end;

class function CoSettingCompareAttribute.Create: ISettingCompareAttribute;
begin
  Result := CreateComObject(CLASS_SettingCompareAttribute) as ISettingCompareAttribute;
end;

class function CoSettingCompareAttribute.CreateRemote(const MachineName: string): ISettingCompareAttribute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SettingCompareAttribute) as ISettingCompareAttribute;
end;

class function CoSettingsCompareTreeList.Create: ISettingsCompareTreeList;
begin
  Result := CreateComObject(CLASS_SettingsCompareTreeList) as ISettingsCompareTreeList;
end;

class function CoSettingsCompareTreeList.CreateRemote(const MachineName: string): ISettingsCompareTreeList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SettingsCompareTreeList) as ISettingsCompareTreeList;
end;

class function CoSettingCompareAttributeList.Create: ISettingCompareAttributeList;
begin
  Result := CreateComObject(CLASS_SettingCompareAttributeList) as ISettingCompareAttributeList;
end;

class function CoSettingCompareAttributeList.CreateRemote(const MachineName: string): ISettingCompareAttributeList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SettingCompareAttributeList) as ISettingCompareAttributeList;
end;

class function CoAttribute.Create: IAttribute;
begin
  Result := CreateComObject(CLASS_Attribute) as IAttribute;
end;

class function CoAttribute.CreateRemote(const MachineName: string): IAttribute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attribute) as IAttribute;
end;

class function CoAnalog.Create: IAnalog;
begin
  Result := CreateComObject(CLASS_Analog) as IAnalog;
end;

class function CoAnalog.CreateRemote(const MachineName: string): IAnalog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Analog) as IAnalog;
end;

class function CoParentResult.Create: IParentResult;
begin
  Result := CreateComObject(CLASS_ParentResult) as IParentResult;
end;

class function CoParentResult.CreateRemote(const MachineName: string): IParentResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ParentResult) as IParentResult;
end;

class function CoObjectInfo.Create: IObjectInfo;
begin
  Result := CreateComObject(CLASS_ObjectInfo) as IObjectInfo;
end;

class function CoObjectInfo.CreateRemote(const MachineName: string): IObjectInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ObjectInfo) as IObjectInfo;
end;

class function CoExcludedObject.Create: IExcludedObject;
begin
  Result := CreateComObject(CLASS_ExcludedObject) as IExcludedObject;
end;

class function CoExcludedObject.CreateRemote(const MachineName: string): IExcludedObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ExcludedObject) as IExcludedObject;
end;

class function CoError.Create: IError;
begin
  Result := CreateComObject(CLASS_Error) as IError;
end;

class function CoError.CreateRemote(const MachineName: string): IError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Error) as IError;
end;

class function CoComparisonResult.Create: IComparisonResult;
begin
  Result := CreateComObject(CLASS_ComparisonResult) as IComparisonResult;
end;

class function CoComparisonResult.CreateRemote(const MachineName: string): IComparisonResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComparisonResult) as IComparisonResult;
end;

class function CoAttributeList.Create: IAttributeList;
begin
  Result := CreateComObject(CLASS_AttributeList) as IAttributeList;
end;

class function CoAttributeList.CreateRemote(const MachineName: string): IAttributeList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttributeList) as IAttributeList;
end;

class function CoAnalogList.Create: IAnalogList;
begin
  Result := CreateComObject(CLASS_AnalogList) as IAnalogList;
end;

class function CoAnalogList.CreateRemote(const MachineName: string): IAnalogList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AnalogList) as IAnalogList;
end;

class function CoParentResultList.Create: IParentResultList;
begin
  Result := CreateComObject(CLASS_ParentResultList) as IParentResultList;
end;

class function CoParentResultList.CreateRemote(const MachineName: string): IParentResultList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ParentResultList) as IParentResultList;
end;

class function CoObjectInfoList.Create: IObjectInfoList;
begin
  Result := CreateComObject(CLASS_ObjectInfoList) as IObjectInfoList;
end;

class function CoObjectInfoList.CreateRemote(const MachineName: string): IObjectInfoList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ObjectInfoList) as IObjectInfoList;
end;

class function CoExcludedObjectList.Create: IExcludedObjectList;
begin
  Result := CreateComObject(CLASS_ExcludedObjectList) as IExcludedObjectList;
end;

class function CoExcludedObjectList.CreateRemote(const MachineName: string): IExcludedObjectList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ExcludedObjectList) as IExcludedObjectList;
end;

class function CoErrorList.Create: IErrorList;
begin
  Result := CreateComObject(CLASS_ErrorList) as IErrorList;
end;

class function CoErrorList.CreateRemote(const MachineName: string): IErrorList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ErrorList) as IErrorList;
end;

class function CoEntity.Create: IEntity;
begin
  Result := CreateComObject(CLASS_Entity) as IEntity;
end;

class function CoEntity.CreateRemote(const MachineName: string): IEntity;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Entity) as IEntity;
end;

class function CoEntitiesList.Create: IEntitiesList;
begin
  Result := CreateComObject(CLASS_EntitiesList) as IEntitiesList;
end;

class function CoEntitiesList.CreateRemote(const MachineName: string): IEntitiesList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EntitiesList) as IEntitiesList;
end;

class function CoCompareObjectInfo.Create: ICompareObjectInfo;
begin
  Result := CreateComObject(CLASS_CompareObjectInfo) as ICompareObjectInfo;
end;

class function CoCompareObjectInfo.CreateRemote(const MachineName: string): ICompareObjectInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareObjectInfo) as ICompareObjectInfo;
end;

class function CoDifferenceCompositionList.Create: IDifferenceCompositionList;
begin
  Result := CreateComObject(CLASS_DifferenceCompositionList) as IDifferenceCompositionList;
end;

class function CoDifferenceCompositionList.CreateRemote(const MachineName: string): IDifferenceCompositionList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DifferenceCompositionList) as IDifferenceCompositionList;
end;

class function CoInstance.Create: IInstance;
begin
  Result := CreateComObject(CLASS_Instance) as IInstance;
end;

class function CoInstance.CreateRemote(const MachineName: string): IInstance;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Instance) as IInstance;
end;

class function CoHiddenFields.Create: IHiddenFields;
begin
  Result := CreateComObject(CLASS_HiddenFields) as IHiddenFields;
end;

class function CoHiddenFields.CreateRemote(const MachineName: string): IHiddenFields;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_HiddenFields) as IHiddenFields;
end;

class function CoEntry.Create: IEntry;
begin
  Result := CreateComObject(CLASS_Entry) as IEntry;
end;

class function CoEntry.CreateRemote(const MachineName: string): IEntry;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Entry) as IEntry;
end;

class function CoEntriesList.Create: IEntriesList;
begin
  Result := CreateComObject(CLASS_EntriesList) as IEntriesList;
end;

class function CoEntriesList.CreateRemote(const MachineName: string): IEntriesList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EntriesList) as IEntriesList;
end;

class function CoLink.Create: ILink;
begin
  Result := CreateComObject(CLASS_Link) as ILink;
end;

class function CoLink.CreateRemote(const MachineName: string): ILink;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Link) as ILink;
end;

class function CoLinkList.Create: ILinkList;
begin
  Result := CreateComObject(CLASS_LinkList) as ILinkList;
end;

class function CoLinkList.CreateRemote(const MachineName: string): ILinkList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LinkList) as ILinkList;
end;

class function CoAbsPath.Create: IAbsPath;
begin
  Result := CreateComObject(CLASS_AbsPath) as IAbsPath;
end;

class function CoAbsPath.CreateRemote(const MachineName: string): IAbsPath;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AbsPath) as IAbsPath;
end;

class function CoCompareAbsPath.Create: ICompareAbsPath;
begin
  Result := CreateComObject(CLASS_CompareAbsPath) as ICompareAbsPath;
end;

class function CoCompareAbsPath.CreateRemote(const MachineName: string): ICompareAbsPath;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareAbsPath) as ICompareAbsPath;
end;

class function CoCompareAbsPlacements.Create: ICompareAbsPlacements;
begin
  Result := CreateComObject(CLASS_CompareAbsPlacements) as ICompareAbsPlacements;
end;

class function CoCompareAbsPlacements.CreateRemote(const MachineName: string): ICompareAbsPlacements;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareAbsPlacements) as ICompareAbsPlacements;
end;

class function CoAbsPlacementList.Create: IAbsPlacementList;
begin
  Result := CreateComObject(CLASS_AbsPlacementList) as IAbsPlacementList;
end;

class function CoAbsPlacementList.CreateRemote(const MachineName: string): IAbsPlacementList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AbsPlacementList) as IAbsPlacementList;
end;

class function CoEntryResultList.Create: IEntryResultList;
begin
  Result := CreateComObject(CLASS_EntryResultList) as IEntryResultList;
end;

class function CoEntryResultList.CreateRemote(const MachineName: string): IEntryResultList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EntryResultList) as IEntryResultList;
end;

class function CoFamilyEntries.Create: IFamilyEntries;
begin
  Result := CreateComObject(CLASS_FamilyEntries) as IFamilyEntries;
end;

class function CoFamilyEntries.CreateRemote(const MachineName: string): IFamilyEntries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FamilyEntries) as IFamilyEntries;
end;

class function CoEntryResult.Create: IEntryResult;
begin
  Result := CreateComObject(CLASS_EntryResult) as IEntryResult;
end;

class function CoEntryResult.CreateRemote(const MachineName: string): IEntryResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EntryResult) as IEntryResult;
end;

class function CoFamilyEntry.Create: IFamilyEntry;
begin
  Result := CreateComObject(CLASS_FamilyEntry) as IFamilyEntry;
end;

class function CoFamilyEntry.CreateRemote(const MachineName: string): IFamilyEntry;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FamilyEntry) as IFamilyEntry;
end;

class function CoCompareEntries.Create: ICompareEntries;
begin
  Result := CreateComObject(CLASS_CompareEntries) as ICompareEntries;
end;

class function CoCompareEntries.CreateRemote(const MachineName: string): ICompareEntries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareEntries) as ICompareEntries;
end;

class function CoCompareEntriesRes.Create: ICompareEntriesRes;
begin
  Result := CreateComObject(CLASS_CompareEntriesRes) as ICompareEntriesRes;
end;

class function CoCompareEntriesRes.CreateRemote(const MachineName: string): ICompareEntriesRes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareEntriesRes) as ICompareEntriesRes;
end;

class function CoCompareEntriesResList.Create: ICompareEntriesResList;
begin
  Result := CreateComObject(CLASS_CompareEntriesResList) as ICompareEntriesResList;
end;

class function CoCompareEntriesResList.CreateRemote(const MachineName: string): ICompareEntriesResList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CompareEntriesResList) as ICompareEntriesResList;
end;

end.
