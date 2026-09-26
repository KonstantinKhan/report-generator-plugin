unit Loodsman_TLB;

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
// File generated on 27.04.2026 10:02:48 from Type Library described below.

// ************************************************************************  //
// Type Lib: ..\Loodsman.tlb (1)
// LIBID: {7CC86059-0262-44D5-9AA3-033DB38F11EF}
// LCID: 0
// Helpfile: 
// HelpString: Loodsman Client Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 BOSimple, (C:\Program Files (x86)\Common Files\ASCON Shared\BOSimple.dll)
//   (3) v1.0 Ask, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\Ask.dll)
//   (4) v1.0 PDMObjects, (C:\Program Files (x86)\ASCON\Loodsman\Client\PDMObjects.dll)
//   (5) v1.0 DataProvider, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\DataProvider.dll)
//   (6) v1.0 LoodsmanObjects, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\LoodsmanObjects.dll)
// SYS_KIND: SYS_WIN32
// Cmdline:
//   "\\VMAUTOBUILD\Autobuild\ROOT\ENV\Delphi11\bin\tlibimp.exe"  -P+ -Ha- -Hr- -Hs- -R- -DC:\GIT\source\ClientSide\Client\LoodsmanClient\ ..\Loodsman.tlb
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, Ask_TLB, BOSimple_TLB, DataProvider_TLB, LoodsmanObjects_TLB, PDMObjects_TLB, System.Classes, System.Variants, 
System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  LoodsmanMajorVersion = 1;
  LoodsmanMinorVersion = 0;

  LIBID_Loodsman: TGUID = '{7CC86059-0262-44D5-9AA3-033DB38F11EF}';

  CLASS_BOLoodsmanSimpleProvider: TGUID = '{8EC1A149-8D6A-48C6-A540-B76A118A5361}';
  CLASS_BOAttribute: TGUID = '{17B4A182-40DC-41FE-87EF-F69454458747}';
  CLASS_BOAttributeCollection: TGUID = '{B43E73FB-F6FA-4EDD-BFB9-8D27E80E525D}';
  CLASS_BOItem: TGUID = '{AA7EE9F2-94CB-4812-93A3-4695835FE0AC}';
  CLASS_BOItemCollection: TGUID = '{AFFA1F08-7D04-4E36-8E9D-6B00DF3F718F}';
  CLASS_BOKernel: TGUID = '{6B49617E-2D8B-4420-8526-913ACB6AD62D}';
  CLASS_BOObject: TGUID = '{2993241D-63A9-4C99-880B-AF5F48C5966F}';
  CLASS_BOObjectCollection: TGUID = '{83BC139E-EC24-4961-86D9-81C3F2DBB0D3}';
  CLASS_BORequest: TGUID = '{28AE9671-2F13-4CCD-9FC9-67C13C1BEA5E}';
  CLASS_BOResponse: TGUID = '{8770DB1E-00B8-43B4-A53B-5C9CE97357E7}';
  IID_ILoodsman8: TGUID = '{88222733-C7AD-4152-B0D8-CFC48EF25344}';
  CLASS_LoodsmanObject: TGUID = '{6E2D863C-136D-4EDA-8291-28B0CE2BD066}';
  IID_IConnectSP: TGUID = '{74AA1156-3A12-4021-954E-32DC1BF4D76F}';
  CLASS_ConnectSP: TGUID = '{5D700A95-8D9D-4597-B69D-2898B32B7EF8}';
  IID_ISocketConnect: TGUID = '{0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}';
  CLASS_SocketConnect: TGUID = '{754E8972-484E-499F-9DAC-805226FB19AF}';
  IID_IWebConnect: TGUID = '{A805C729-0233-4D9B-A5BE-A0F80158D182}';
  CLASS_WebConnect: TGUID = '{FF952B8B-DB0A-4B7B-B555-B6BF738E889F}';
  IID_ISQLAutorization: TGUID = '{5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}';
  CLASS_SQLAutorization: TGUID = '{11D1F695-4DC4-4216-B83D-31B26F9D8BDB}';
  IID_IConnectDB: TGUID = '{25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}';
  CLASS_ConnectDB: TGUID = '{35EF10E7-5074-4704-94B9-C43160A9504A}';
  IID_IMetodsWorkObject: TGUID = '{3310D9AB-FC52-4404-A56A-2DE38B11D47E}';
  CLASS_MetodsWorkObject: TGUID = '{EFD145AC-B241-4FA6-A6D0-07CA687C0FA8}';
  IID_IOutlookBar: TGUID = '{6D3C83A2-C709-4A10-8F16-912CEE24D5B2}';
  CLASS_OutlookBar: TGUID = '{FAD1E603-77D8-4F8B-ADFF-E38774B30719}';
  IID_IConnectDBActive: TGUID = '{9BFF6226-1C52-4EBA-B00B-087558397C50}';
  CLASS_ConnectDBActive: TGUID = '{BF152433-8096-40DB-9D25-295112DCFC7E}';
  IID_ISaveDocument: TGUID = '{5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}';
  CLASS_SaveDocument: TGUID = '{97735444-15EB-4A19-ABCB-5C05EA1025DD}';
  IID_IRunMetods: TGUID = '{A274EEB2-800E-498F-9156-F3F6662B7359}';
  CLASS_RunMetods: TGUID = '{47600028-7CF0-4A46-83AA-71824DFEB090}';
  IID_IPluginCall: TGUID = '{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}';
  CLASS_PluginCall: TGUID = '{E4D4AE7B-7EB9-4057-B229-967E02B90054}';
  CLASS_URL: TGUID = '{975FD36D-CAE8-4690-A28F-830CE1141EEB}';
  IID_IDocumentViewer: TGUID = '{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}';
  IID_IDataBase: TGUID = '{84555B43-9101-41CA-AAB3-0F176A0AF30C}';
  CLASS_CDataBase: TGUID = '{593972B0-7702-4932-A46C-9446555821DB}';
  IID_IDBWindow: TGUID = '{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}';
  IID_IDBContext: TGUID = '{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}';
  IID_ILoodsmanApplication: TGUID = '{C50527B3-98D4-4C81-BE85-8D9B04A625FC}';
  IID_IActions: TGUID = '{22C267CC-D48E-43F0-94B9-AF03C949D103}';
  IID_ILoodsmanPlugin: TGUID = '{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}';
  CLASS_CoLooPlugin: TGUID = '{905FB351-0656-43DD-BE9B-6F3A8CD2A82E}';
  IID_IFrameInfo: TGUID = '{3002A3EA-E245-441E-BE6F-4E9878EDE382}';
  IID_ILoodsmanFrame: TGUID = '{43151655-95CC-40B4-9D92-A95E8DF52043}';
  IID_IFrameContainer: TGUID = '{540CAE0E-987D-4429-837D-1A4A9A28192F}';
  IID_IContent: TGUID = '{3F471E54-37F4-43C6-BA40-28FFCB2892DB}';
  CLASS_CDBWindow: TGUID = '{9718B914-E357-436F-8D57-99216039534F}';
  CLASS_CoSimpleAPI: TGUID = '{5CC4A40D-CF2B-45AA-86EF-A3E95B27C2CD}';
  CLASS_CoDataSet: TGUID = '{A00EC6F8-5E3A-4569-8A2C-F26DAF5FFF8D}';
  CLASS_CoClientAsyncTask: TGUID = '{D73AEEFC-A43E-4C76-B019-2047C12FE376}';
  IID_IOptions: TGUID = '{F64CF2A2-E862-4365-B20F-19E9A5BE0038}';
  CLASS_CoOptions: TGUID = '{34BD230F-01AF-4275-82C4-9AC03BAC8AD9}';
  CLASS_CoDBContext: TGUID = '{1AA364E5-B3A5-4AB4-9A2B-D0E48841FF83}';
  CLASS_CoFrameContainer: TGUID = '{7DC478B3-9941-4FE4-AE62-459BC8A41B1B}';
  IID_IActionHandler: TGUID = '{9827725B-F4DE-4EDA-B37D-2C09710722B5}';
  IID_IApplicationMenu: TGUID = '{9758DAA9-74D9-4A13-95EB-356F3FE66073}';
  IID_INotification: TGUID = '{753BE7FF-88BB-446A-92C0-BE79EFA7400C}';
  IID_INotificationHandler: TGUID = '{52A780D4-B5CA-4A30-9CBE-739D98F9D528}';
  CLASS_CoNotification: TGUID = '{D8E82FDA-A104-4ECE-B155-7BBB75A41279}';
  IID_IMenuBar: TGUID = '{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}';
  CLASS_CoMenuBar: TGUID = '{54C62FF2-A971-4C79-95C2-08FF9F091879}';
  IID_IMenuItem: TGUID = '{E778343E-D2DF-4698-B57F-C5377B6E1845}';
  CLASS_CoMenuItem: TGUID = '{DB0D3991-A053-42ED-A6B6-97ECD1A1F187}';
  IID_ILoodsmanService: TGUID = '{67927DBE-4A12-4785-9D36-F72E7299884B}';
  IID_IServiceInfo: TGUID = '{8409E9CD-B499-4C91-B06F-95741911B226}';
  CLASS_CoActions: TGUID = '{CA2C05F3-9875-4906-9FAF-849C3739210F}';
  CLASS_LooApplication: TGUID = '{AAAE7194-C4AB-4056-9045-FBCE7DB25B48}';
  CLASS_CoApplicationMenu: TGUID = '{5D67AC53-E593-4A97-BE13-68BFD7643DD3}';
  CLASS_CoObjectDialog: TGUID = '{00000000-0000-0000-0000-000000000000}';
  IID_ILoodsmanClientUtils: TGUID = '{7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}';
  IID_ILoodsmanDataBaseUtils: TGUID = '{9B1ADD83-D2B5-4A79-93D0-69D54071EE9A}';
  IID_IPDMClipboard: TGUID = '{CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}';
  IID_IVersionHintParams: TGUID = '{825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}';
  IID_ICustomMenuItemDescription: TGUID = '{25EC029A-2DFC-4BEB-AAAA-A94D7E39FDF2}';
  IID_IMenuItemDescription: TGUID = '{E6890283-7F26-4376-9562-119493844754}';
  IID_IMenuBarDescription: TGUID = '{18265186-75E8-492F-B9C2-EEDE05634743}';
  IID_IMenuItemDescriptionFactory: TGUID = '{6454266E-AD67-4094-B231-A97A9685F5A8}';
  IID_IMenuDescription: TGUID = '{7F79FB98-6247-4A4E-9F71-E12CBEE0D4CE}';
  IID_ICreateDialogCall: TGUID = '{F8E3D556-6060-4D76-8ED7-33D64B9A86B9}';
  IID_IServiceProvider: TGUID = '{1E1BA0F9-5E7C-4500-B4E0-5D909388C3B9}';
  IID_IExternalService: TGUID = '{4A85272D-5C11-4071-9E10-A481F37811B3}';
  IID_ISelectionCallback: TGUID = '{004FD75E-FB4D-4BD3-9F1E-99116423C8D2}';
  IID_IDBWindowState: TGUID = '{31F382D4-3BDB-4BB2-B4D0-3E94A1A73013}';
  IID_INotificationSender: TGUID = '{C0DC7374-8A30-4B38-BB1B-9DB0C95346E7}';
  IID_IObjectDialogFrame2: TGUID = '{869E1E7E-EA8E-4E13-8292-7FA4D6AB5AC3}';
  IID_IObjectDialog2: TGUID = '{10B0FDA2-8408-4A3E-88EC-246F43B0994B}';
  IID_ILoodsmanBOSelector: TGUID = '{67D43AC6-C555-4296-A99B-0A981AAC7425}';
  IID_IApplicationMenuDescriptions: TGUID = '{8BBCF6A6-500C-4263-B83A-FCA9FD7EC3EA}';
  IID_IPopupMenuHandler: TGUID = '{D6B2F838-FAD5-4782-A469-62E3835EAB1F}';
  IID_INetPluginLoader: TGUID = '{1E6F902E-1A17-4C76-BF4F-DDD85EFA5E30}';
  IID_ILocationParams: TGUID = '{246ED74B-64CE-4B1E-83EC-C165D754C940}';
  IID_IObjectDialogParams: TGUID = '{BAF9FC0D-2186-4DC9-BA10-7C08FF3165D0}';
  IID_ILoodsmanWindows: TGUID = '{AA92B9C0-84D4-433F-B7E9-7C700F5E875B}';
  IID_ILoodsmanExternalAPI: TGUID = '{7A8910A2-C8C9-4831-8AB1-86F46A979EA1}';
  CLASS_LoodsmanExternalAPI: TGUID = '{7E2CEC08-42AC-452E-AFD5-FDE890D0D2FF}';
  IID_ILocatable: TGUID = '{79D62D3E-E479-490A-90AF-D8A4E0679950}';
  IID_ILocateParams: TGUID = '{9838E51C-5E5A-4179-AB26-5FC18BFB2530}';
  IID_ILoodsmanClientEvents: TGUID = '{F80B2270-EDC8-40E4-831F-4F2814E661AA}';
  IID_IScriptParams: TGUID = '{B54215A4-0560-4664-9E49-924AFCAEF1A4}';
  IID_ILooInputTemplate: TGUID = '{7DCE202C-95C9-4FA0-87CF-17155ECCE6EB}';
  IID_ILooInputTemplateBlock: TGUID = '{B1B6F220-E312-4783-8130-12992EE17B23}';
  IID_ILooInputTemplateComboboxBlock: TGUID = '{9E39D19D-039C-4332-8F70-8CBFE6185F31}';
  IID_IBlockableChildFramesGUIDList: TGUID = '{4B55146C-52A5-47A5-85BA-6FD3EFDB1DC1}';
  CLASS_CoBlockableChildFramesGUIDList: TGUID = '{151A6E2E-E054-44A0-8BDB-843F1841B119}';
  IID_IBlockableChildFrames: TGUID = '{53E9E3FF-43B1-4159-887B-CADE9C252C0A}';
  IID_IDBWindowEffectivityParams: TGUID = '{9A2DF0A5-19C6-4B21-AD73-7F8718CA37EC}';
  IID_ILinksInvokeService: TGUID = '{9AFDF0A6-29C7-1B21-AF73-7F8718CA37ED}';
  IID_IRequiredAttributesProc: TGUID = '{12344F40-9101-41CA-AAB3-FF176A044444}';
  CLASS_CRequiredAttributesProc: TGUID = '{11297FB0-FEC1-4B30-A46C-91764458310B}';
  IID_ILayoutList: TGUID = '{4F561111-22A9-47A5-85BA-6FD3AAABADC6}';
  IID_IStructureComparsionRulesItem: TGUID = '{43222329-17B7-42AB-15BC-6FD3000BEEE7}';
  IID_IStructureComparsionRulesList: TGUID = '{90002323-11BB-47A6-85BA-6FD3000BAAA1}';
  IID_IAction: TGUID = '{D1D60373-04A5-4EF1-8BA3-B7103E230326}';
  CLASS_CoAction: TGUID = '{E63987E9-BF30-477B-A09C-69D6DA36C28D}';
  IID_IComparisonParams: TGUID = '{EA332728-B743-4658-BD0B-ED51FA6CBFD7}';
  IID_IStructureComparsionModel: TGUID = '{63E7A47C-2C64-4773-BE30-CF5A950AABED}';
  IID_IStructureComparsionGroup: TGUID = '{4AE39C96-DA95-419D-8A0F-BA94F88CD5EE}';
  IID_IStructureComparsionLinkList: TGUID = '{5D02AB26-2BA0-4536-88A8-77B7CACD025A}';
  IID_IStructureComparsionLink: TGUID = '{28D69EE5-19CC-4235-A304-D46BD182223F}';
  IID_IDockPanel: TGUID = '{956E8BFB-FB08-45BB-9478-6059701B6540}';
  IID_ILinkedStructuresParams: TGUID = '{FC431728-B429-C6A8-0D0B-E0543A7CBFD0}';
  IID_IStructureComparisonAttribute: TGUID = '{CCC5D7F4-3F52-4D1E-BD74-0AD324B27581}';
  IID_IStructureComparisonAttributeList: TGUID = '{E2EFC315-5F2D-482B-B4A7-6D165AEAB7DF}';
  CLASS_SvcProvider: TGUID = '{BE44C304-BCE3-4B47-82BB-B2229AB89478}';
  CLASS_CoLCImageList: TGUID = '{0DEB0B26-9D46-427D-A72C-A4333C066319}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TCompareItemType
type
  TCompareItemType = TOleEnum;
const
  citNone = $00000000;
  citEtalon = $00000001;
  citCompare = $00000002;

// Constants for enum TStructureComparsionGroupType
type
  TStructureComparsionGroupType = TOleEnum;
const
  cgtType = $00000000;
  cgtGroup = $00000001;

// Constants for enum ObjectDialogFields
type
  ObjectDialogFields = TOleEnum;
const
  odfType = $00000001;
  odfObject = $00000002;
  odfState = $00000004;
  odfLink = $00000008;

// Constants for enum DocumentViewerCommands
type
  DocumentViewerCommands = TOleEnum;
const
  cmAnnotate = $00000000;
  cmCustomize = $00000001;
  cmAbout = $00000002;
  cmDeleteView = $00000003;
  cmHelp = $00000004;

// Constants for enum DocumentViewerFeatures
type
  DocumentViewerFeatures = TOleEnum;
const
  COMMAND_NONE = $00000000;
  COMMAND_ANNOTATE = $00000001;
  COMMAND_CUSTOMIZE = $00000002;
  COMMAND_ABOUT = $00000004;
  COMMAND_DELETE = $00000008;
  COMMAND_HELP = $00000010;

// Constants for enum ActionResults
type
  ActionResults = TOleEnum;
const
  arDone = $00000000;
  arContinue = $00000001;
  arError = $00000002;

// Constants for enum MenuItemTypes
type
  MenuItemTypes = TOleEnum;
const
  mitUnknown = $00000000;
  mitSubItem = $00000001;
  mitButton = $00000002;
  mitDivider = $00000003;
  mitBar = $00000004;
  mitMenu = $00000005;

// Constants for enum URLProcessingFlags
type
  URLProcessingFlags = TOleEnum;
const
  URL_FLAG_NONE = $00000000;
  URL_FLAG_FLASH = $00000001;
  URL_FLAG_FORCE_OPEN = $00000002;

// Constants for enum MenuBarTypes
type
  MenuBarTypes = TOleEnum;
const
  BAR_TYPE_MENU = $00000000;
  BAR_TYPE_NAVIGATOR_GROUPED = $00000001;

// Constants for enum FrameValidateStatus
type
  FrameValidateStatus = TOleEnum;
const
  fvNotValid = $00000000;
  fvValid = $00000001;
  fvWaitData = $00000002;

// Constants for enum MetaEntity
type
  MetaEntity = TOleEnum;
const
  tmeTypes = $00000000;
  tmeStates = $00000001;
  tmeLinks = $00000002;
  tmeInverseLinks = $00000003;
  tmeAttrs = $00000004;

// Constants for enum CopyBehaviorType
type
  CopyBehaviorType = TOleEnum;
const
  cbtDefault = $00000000;
  cbtLink = $00000001;
  cbtCopy = $00000002;

// Constants for enum MenuItemViewStyle
type
  MenuItemViewStyle = TOleEnum;
const
  mivsDefault = $00000000;
  mivsText = $00000001;
  mivsTextInMenu = $00000002;
  mivsTextAndIcon = $00000003;

// Constants for enum OpenDataBaseStatus
type
  OpenDataBaseStatus = TOleEnum;
const
  odbsSuccess = $00000000;
  odbsCanceled = $00000001;
  odbsError = $00000002;

// Constants for enum SelectResult
type
  SelectResult = TOleEnum;
const
  srOK = $00000000;
  srCancel = $00000001;
  srError = $00000002;

// Constants for enum DBChangeMode
type
  DBChangeMode = TOleEnum;
const
  dbcAllow = $00000000;
  dbcLock = $00000001;
  dbcHideSelectionToolbar = $00000002;

// Constants for enum UnlockObjectMode
type
  UnlockObjectMode = TOleEnum;
const
  uomUnlock = $00000000;
  uomUnlockAndSave = $00000001;
  uomSave = $00000002;

// Constants for enum TSelectedTypesMode
type
  TSelectedTypesMode = TOleEnum;
const
  stmAll = $00000000;
  stmOnlyTypes = $00000001;
  stmOnlyDocuments = $00000002;

// Constants for enum TSelectedTypesParams
type
  TSelectedTypesParams = TOleEnum;
const
  stpDefault = $00000000;
  stpAllowAbstact = $00000001;
  stpInvisibleVirtual = $00000002;
  stpNoSelectedChild = $00000004;

// Constants for enum TRequiredProcMode
type
  TRequiredProcMode = TOleEnum;
const
  rpmDisabled = $00000000;
  rpmWarning = $00000001;
  rpmEnabled = $00000002;

// Constants for enum TActionSettingsType
type
  TActionSettingsType = TOleEnum;
const
  astClient = $00000000;
  astPlugin = $00000001;
  astOther = $00000002;

// Constants for enum TActionSettingsStatus
type
  TActionSettingsStatus = TOleEnum;
const
  asStatusNone = $00000000;
  asStatusDisabled = $00000001;
  asStatusHidden = $00000002;

// Constants for enum TWindowDirection
type
  TWindowDirection = TOleEnum;
const
  wdVertical = $00000000;
  wdHorizontal = $00000001;

// Constants for enum VersionHintFields
type
  VersionHintFields = TOleEnum;
const
  hfType = $00000000;
  hfVersion = $00000001;
  hfSource = $00000002;
  hfState = $00000003;
  hfAccess = $00000004;
  hfLock = $00000005;
  hfCreated = $00000006;
  hfModified = $00000007;
  hfChanged = $00000008;
  hfSecLabel = $00000009;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoodsman8 = interface;
  ILoodsman8Disp = dispinterface;
  IConnectSP = interface;
  IConnectSPDisp = dispinterface;
  ISocketConnect = interface;
  ISocketConnectDisp = dispinterface;
  IWebConnect = interface;
  IWebConnectDisp = dispinterface;
  ISQLAutorization = interface;
  ISQLAutorizationDisp = dispinterface;
  IConnectDB = interface;
  IConnectDBDisp = dispinterface;
  IMetodsWorkObject = interface;
  IMetodsWorkObjectDisp = dispinterface;
  IOutlookBar = interface;
  IOutlookBarDisp = dispinterface;
  IConnectDBActive = interface;
  IConnectDBActiveDisp = dispinterface;
  ISaveDocument = interface;
  ISaveDocumentDisp = dispinterface;
  IRunMetods = interface;
  IRunMetodsDisp = dispinterface;
  IPluginCall = interface;
  IPluginCallDisp = dispinterface;
  IDocumentViewer = interface;
  IDocumentViewerDisp = dispinterface;
  IDataBase = interface;
  IDataBaseDisp = dispinterface;
  IDBWindow = interface;
  IDBWindowDisp = dispinterface;
  IDBContext = interface;
  IDBContextDisp = dispinterface;
  ILoodsmanApplication = interface;
  ILoodsmanApplicationDisp = dispinterface;
  IActions = interface;
  IActionsDisp = dispinterface;
  ILoodsmanPlugin = interface;
  ILoodsmanPluginDisp = dispinterface;
  IFrameInfo = interface;
  IFrameInfoDisp = dispinterface;
  ILoodsmanFrame = interface;
  ILoodsmanFrameDisp = dispinterface;
  IFrameContainer = interface;
  IFrameContainerDisp = dispinterface;
  IContent = interface;
  IContentDisp = dispinterface;
  IOptions = interface;
  IOptionsDisp = dispinterface;
  IActionHandler = interface;
  IActionHandlerDisp = dispinterface;
  IApplicationMenu = interface;
  IApplicationMenuDisp = dispinterface;
  INotification = interface;
  INotificationDisp = dispinterface;
  INotificationHandler = interface;
  INotificationHandlerDisp = dispinterface;
  IMenuBar = interface;
  IMenuBarDisp = dispinterface;
  IMenuItem = interface;
  IMenuItemDisp = dispinterface;
  ILoodsmanService = interface;
  ILoodsmanServiceDisp = dispinterface;
  IServiceInfo = interface;
  IServiceInfoDisp = dispinterface;
  ILoodsmanClientUtils = interface;
  ILoodsmanClientUtilsDisp = dispinterface;
  ILoodsmanDataBaseUtils = interface;
  ILoodsmanDataBaseUtilsDisp = dispinterface;
  IPDMClipboard = interface;
  IPDMClipboardDisp = dispinterface;
  IVersionHintParams = interface;
  IVersionHintParamsDisp = dispinterface;
  ICustomMenuItemDescription = interface;
  ICustomMenuItemDescriptionDisp = dispinterface;
  IMenuItemDescription = interface;
  IMenuItemDescriptionDisp = dispinterface;
  IMenuBarDescription = interface;
  IMenuBarDescriptionDisp = dispinterface;
  IMenuItemDescriptionFactory = interface;
  IMenuItemDescriptionFactoryDisp = dispinterface;
  IMenuDescription = interface;
  IMenuDescriptionDisp = dispinterface;
  ICreateDialogCall = interface;
  ICreateDialogCallDisp = dispinterface;
  IServiceProvider = interface;
  IServiceProviderDisp = dispinterface;
  IExternalService = interface;
  IExternalServiceDisp = dispinterface;
  ISelectionCallback = interface;
  ISelectionCallbackDisp = dispinterface;
  IDBWindowState = interface;
  IDBWindowStateDisp = dispinterface;
  INotificationSender = interface;
  INotificationSenderDisp = dispinterface;
  IObjectDialogFrame2 = interface;
  IObjectDialogFrame2Disp = dispinterface;
  IObjectDialog2 = interface;
  IObjectDialog2Disp = dispinterface;
  ILoodsmanBOSelector = interface;
  ILoodsmanBOSelectorDisp = dispinterface;
  IApplicationMenuDescriptions = interface;
  IApplicationMenuDescriptionsDisp = dispinterface;
  IPopupMenuHandler = interface;
  IPopupMenuHandlerDisp = dispinterface;
  INetPluginLoader = interface;
  INetPluginLoaderDisp = dispinterface;
  ILocationParams = interface;
  ILocationParamsDisp = dispinterface;
  IObjectDialogParams = interface;
  IObjectDialogParamsDisp = dispinterface;
  ILoodsmanWindows = interface;
  ILoodsmanWindowsDisp = dispinterface;
  ILoodsmanExternalAPI = interface;
  ILoodsmanExternalAPIDisp = dispinterface;
  ILocatable = interface;
  ILocatableDisp = dispinterface;
  ILocateParams = interface;
  ILocateParamsDisp = dispinterface;
  ILoodsmanClientEvents = interface;
  ILoodsmanClientEventsDisp = dispinterface;
  IScriptParams = interface;
  IScriptParamsDisp = dispinterface;
  ILooInputTemplate = interface;
  ILooInputTemplateDisp = dispinterface;
  ILooInputTemplateBlock = interface;
  ILooInputTemplateBlockDisp = dispinterface;
  ILooInputTemplateComboboxBlock = interface;
  ILooInputTemplateComboboxBlockDisp = dispinterface;
  IBlockableChildFramesGUIDList = interface;
  IBlockableChildFramesGUIDListDisp = dispinterface;
  IBlockableChildFrames = interface;
  IBlockableChildFramesDisp = dispinterface;
  IDBWindowEffectivityParams = interface;
  IDBWindowEffectivityParamsDisp = dispinterface;
  ILinksInvokeService = interface;
  ILinksInvokeServiceDisp = dispinterface;
  IRequiredAttributesProc = interface;
  IRequiredAttributesProcDisp = dispinterface;
  ILayoutList = interface;
  ILayoutListDisp = dispinterface;
  IStructureComparsionRulesItem = interface;
  IStructureComparsionRulesItemDisp = dispinterface;
  IStructureComparsionRulesList = interface;
  IStructureComparsionRulesListDisp = dispinterface;
  IAction = interface;
  IActionDisp = dispinterface;
  IComparisonParams = interface;
  IComparisonParamsDisp = dispinterface;
  IStructureComparsionModel = interface;
  IStructureComparsionModelDisp = dispinterface;
  IStructureComparsionGroup = interface;
  IStructureComparsionGroupDisp = dispinterface;
  IStructureComparsionLinkList = interface;
  IStructureComparsionLinkListDisp = dispinterface;
  IStructureComparsionLink = interface;
  IStructureComparsionLinkDisp = dispinterface;
  IDockPanel = interface;
  IDockPanelDisp = dispinterface;
  ILinkedStructuresParams = interface;
  ILinkedStructuresParamsDisp = dispinterface;
  IStructureComparisonAttribute = interface;
  IStructureComparisonAttributeDisp = dispinterface;
  IStructureComparisonAttributeList = interface;
  IStructureComparisonAttributeListDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BOLoodsmanSimpleProvider = IBOSimpleProvider;
  BOAttribute = IBOAttribute;
  BOAttributeCollection = IBOAttributeCollection;
  BOItem = IBOItem;
  BOItemCollection = IBOItemCollection;
  BOKernel = IBOKernel;
  BOObject = IBOObject;
  BOObjectCollection = IBOObjectCollection;
  BORequest = IBORequest;
  BOResponse = IBOResponse;
  LoodsmanObject = ILoodsman8;
  ConnectSP = IConnectSP;
  SocketConnect = ISocketConnect;
  WebConnect = IWebConnect;
  SQLAutorization = ISQLAutorization;
  ConnectDB = IConnectDB;
  MetodsWorkObject = IMetodsWorkObject;
  OutlookBar = IOutlookBar;
  ConnectDBActive = IConnectDBActive;
  SaveDocument = ISaveDocument;
  RunMetods = IRunMetods;
  PluginCall = IPluginCall;
  URL = ICommand;
  CDataBase = IDataBase;
  CoLooPlugin = ILoodsmanPlugin;
  CDBWindow = IDBWindow;
  CoSimpleAPI = ISimpleAPI2;
  CoDataSet = IDataSet;
  CoClientAsyncTask = IAsyncTask;
  CoOptions = IOptions;
  CoDBContext = IDBContext;
  CoFrameContainer = IFrameContainer;
  CoNotification = INotification;
  CoMenuBar = IMenuBar;
  CoMenuItem = IMenuItem;
  CoActions = IActions;
  LooApplication = ILoodsmanApplication;
  CoApplicationMenu = IApplicationMenu;
  LoodsmanExternalAPI = ILoodsmanExternalAPI;
  CoBlockableChildFramesGUIDList = IBlockableChildFramesGUIDList;
  CRequiredAttributesProc = IRequiredAttributesProc;
  CoAction = IAction;
  SvcProvider = IServiceProvider;
  CoLCImageList = IImageList;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  LooRect = record
    Left: Integer;
    Top: Integer;
    Right: Integer;
    Bottom: Integer;
  end;


// *********************************************************************//
// Interface: ILoodsman8
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88222733-C7AD-4152-B0D8-CFC48EF25344}
// *********************************************************************//
  ILoodsman8 = interface(IDispatch)
    ['{88222733-C7AD-4152-B0D8-CFC48EF25344}']
    procedure sResult; safecall;
    procedure lnDialogSelectSP(AppHandle: SYSINT); safecall;
    function Get_lnGetConnectSP(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectSP; safecall;
    function Get_lnGetConnectDB(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectDB; safecall;
    function Get_lnGetConnectDBActive(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): IConnectDBActive; safecall;
    function Get_lnGetIOutlookBar: IOutlookBar; safecall;
    function Get_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): Integer; safecall;
    procedure Set_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                              Value: Integer); safecall;
    procedure Quit; safecall;
    function Get_lnStatusOfExhibit: Integer; safecall;
    procedure Set_lnStatusOfExhibit(inStatusOfExhibit: Integer); safecall;
    function Get_lnMetodsWorkObject: IMetodsWorkObject; safecall;
    procedure lnCheckConnectLN; safecall;
    procedure lnWait(const stNameMetod: WideString); safecall;
    function Get_lnRunMetods: IRunMetods; safecall;
    function Get_lnMessageDlg(const stMessage: WideString; inTypeMessage: SYSINT): Integer; safecall;
    function Get_URL: ICommand; safecall;
    property lnGetConnectSP[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectSP read Get_lnGetConnectSP;
    property lnGetConnectDB[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectDB read Get_lnGetConnectDB;
    property lnGetConnectDBActive[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: IConnectDBActive read Get_lnGetConnectDBActive;
    property lnGetIOutlookBar: IOutlookBar read Get_lnGetIOutlookBar;
    property lnSetFormat[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: Integer read Get_lnSetFormat write Set_lnSetFormat;
    property lnStatusOfExhibit: Integer read Get_lnStatusOfExhibit write Set_lnStatusOfExhibit;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
    property lnMessageDlg[const stMessage: WideString; inTypeMessage: SYSINT]: Integer read Get_lnMessageDlg;
    property URL: ICommand read Get_URL;
  end;

// *********************************************************************//
// DispIntf:  ILoodsman8Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88222733-C7AD-4152-B0D8-CFC48EF25344}
// *********************************************************************//
  ILoodsman8Disp = dispinterface
    ['{88222733-C7AD-4152-B0D8-CFC48EF25344}']
    procedure sResult; dispid 7;
    procedure lnDialogSelectSP(AppHandle: SYSINT); dispid 11;
    property lnGetConnectSP[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectSP readonly dispid 10;
    property lnGetConnectDB[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectDB readonly dispid 13;
    property lnGetConnectDBActive[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: IConnectDBActive readonly dispid 2;
    property lnGetIOutlookBar: IOutlookBar readonly dispid 6;
    property lnSetFormat[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: Integer dispid 5;
    procedure Quit; dispid 4;
    property lnStatusOfExhibit: Integer dispid 3;
    property lnMetodsWorkObject: IMetodsWorkObject readonly dispid 1;
    procedure lnCheckConnectLN; dispid 8;
    procedure lnWait(const stNameMetod: WideString); dispid 9;
    property lnRunMetods: IRunMetods readonly dispid 12;
    property lnMessageDlg[const stMessage: WideString; inTypeMessage: SYSINT]: Integer readonly dispid 14;
    property URL: ICommand readonly dispid 15;
  end;

// *********************************************************************//
// Interface: IConnectSP
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74AA1156-3A12-4021-954E-32DC1BF4D76F}
// *********************************************************************//
  IConnectSP = interface(IDispatch)
    ['{74AA1156-3A12-4021-954E-32DC1BF4D76F}']
    procedure Set_vConnectionType(Param1: Integer); safecall;
    procedure Set_vDCOMConnect(const Param1: WideString); safecall;
    function Get_mGetSocketConnect: ISocketConnect; safecall;
    function Get_mGetWebConnect: IWebConnect; safecall;
    function Get_Update: Integer; safecall;
    function Get_lnTestConnect(var stValue: WideString): SYSINT; safecall;
    property vConnectionType: Integer write Set_vConnectionType;
    property vDCOMConnect: WideString write Set_vDCOMConnect;
    property mGetSocketConnect: ISocketConnect read Get_mGetSocketConnect;
    property mGetWebConnect: IWebConnect read Get_mGetWebConnect;
    property Update: Integer read Get_Update;
    property lnTestConnect[var stValue: WideString]: SYSINT read Get_lnTestConnect;
  end;

// *********************************************************************//
// DispIntf:  IConnectSPDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74AA1156-3A12-4021-954E-32DC1BF4D76F}
// *********************************************************************//
  IConnectSPDisp = dispinterface
    ['{74AA1156-3A12-4021-954E-32DC1BF4D76F}']
    property vConnectionType: Integer writeonly dispid 2;
    property vDCOMConnect: WideString writeonly dispid 3;
    property mGetSocketConnect: ISocketConnect readonly dispid 8;
    property mGetWebConnect: IWebConnect readonly dispid 9;
    property Update: Integer readonly dispid 1;
    property lnTestConnect[var stValue: WideString]: SYSINT readonly dispid 6;
  end;

// *********************************************************************//
// Interface: ISocketConnect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}
// *********************************************************************//
  ISocketConnect = interface(IDispatch)
    ['{0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}']
    procedure Set_scServerAlias(const Param1: WideString); safecall;
    procedure Set_scAddress(const Param1: WideString); safecall;
    procedure Set_scPort(const Param1: WideString); safecall;
    property scServerAlias: WideString write Set_scServerAlias;
    property scAddress: WideString write Set_scAddress;
    property scPort: WideString write Set_scPort;
  end;

// *********************************************************************//
// DispIntf:  ISocketConnectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}
// *********************************************************************//
  ISocketConnectDisp = dispinterface
    ['{0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}']
    property scServerAlias: WideString writeonly dispid 1;
    property scAddress: WideString writeonly dispid 2;
    property scPort: WideString writeonly dispid 3;
  end;

// *********************************************************************//
// Interface: IWebConnect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A805C729-0233-4D9B-A5BE-A0F80158D182}
// *********************************************************************//
  IWebConnect = interface(IDispatch)
    ['{A805C729-0233-4D9B-A5BE-A0F80158D182}']
    procedure Set_scServerAlias(const Param1: WideString); safecall;
    procedure Set_wcURL(const Param1: WideString); safecall;
    procedure Set_wcUser(const Param1: WideString); safecall;
    procedure Set_wcPasswords(const Param1: WideString); safecall;
    procedure Set_wcUseCheckProxy(Param1: Integer); safecall;
    procedure Set_wcProxy(const Param1: WideString); safecall;
    property scServerAlias: WideString write Set_scServerAlias;
    property wcURL: WideString write Set_wcURL;
    property wcUser: WideString write Set_wcUser;
    property wcPasswords: WideString write Set_wcPasswords;
    property wcUseCheckProxy: Integer write Set_wcUseCheckProxy;
    property wcProxy: WideString write Set_wcProxy;
  end;

// *********************************************************************//
// DispIntf:  IWebConnectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A805C729-0233-4D9B-A5BE-A0F80158D182}
// *********************************************************************//
  IWebConnectDisp = dispinterface
    ['{A805C729-0233-4D9B-A5BE-A0F80158D182}']
    property scServerAlias: WideString writeonly dispid 1;
    property wcURL: WideString writeonly dispid 2;
    property wcUser: WideString writeonly dispid 3;
    property wcPasswords: WideString writeonly dispid 4;
    property wcUseCheckProxy: Integer writeonly dispid 5;
    property wcProxy: WideString writeonly dispid 6;
  end;

// *********************************************************************//
// Interface: ISQLAutorization
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}
// *********************************************************************//
  ISQLAutorization = interface(IDispatch)
    ['{5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}']
    procedure Set_sqlaUserName(const Param1: WideString); safecall;
    procedure Set_sqlaPasswords(const Param1: WideString); safecall;
    procedure Set_sqlaSavePasswords(Param1: Integer); safecall;
    property sqlaUserName: WideString write Set_sqlaUserName;
    property sqlaPasswords: WideString write Set_sqlaPasswords;
    property sqlaSavePasswords: Integer write Set_sqlaSavePasswords;
  end;

// *********************************************************************//
// DispIntf:  ISQLAutorizationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}
// *********************************************************************//
  ISQLAutorizationDisp = dispinterface
    ['{5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}']
    property sqlaUserName: WideString writeonly dispid 1;
    property sqlaPasswords: WideString writeonly dispid 2;
    property sqlaSavePasswords: Integer writeonly dispid 3;
  end;

// *********************************************************************//
// Interface: IConnectDB
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}
// *********************************************************************//
  IConnectDB = interface(IDispatch)
    ['{25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}']
    procedure Set_NameBaseConnect(const Param1: WideString); safecall;
    procedure Set_TypeAutorization(Param1: Integer); safecall;
    function Get_mGetSQLAutorization: ISQLAutorization; safecall;
    function Get_Update(inStateDB: Integer): Integer; safecall;
    function Get_lnMetodsWorkObject: IMetodsWorkObject; safecall;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stNameDB: WideString; inSetFormat: Integer; 
                                out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    function Get_lnRunMetods: IRunMetods; safecall;
    property NameBaseConnect: WideString write Set_NameBaseConnect;
    property TypeAutorization: Integer write Set_TypeAutorization;
    property mGetSQLAutorization: ISQLAutorization read Get_mGetSQLAutorization;
    property Update[inStateDB: Integer]: Integer read Get_Update;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
  end;

// *********************************************************************//
// DispIntf:  IConnectDBDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}
// *********************************************************************//
  IConnectDBDisp = dispinterface
    ['{25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}']
    property NameBaseConnect: WideString writeonly dispid 1;
    property TypeAutorization: Integer writeonly dispid 2;
    property mGetSQLAutorization: ISQLAutorization readonly dispid 3;
    property Update[inStateDB: Integer]: Integer readonly dispid 5;
    property lnMetodsWorkObject: IMetodsWorkObject readonly dispid 12;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stNameDB: WideString; inSetFormat: Integer; 
                                out DATA: OleVariant; out inRecsOut: SYSINT); dispid 4;
    property lnRunMetods: IRunMetods readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IMetodsWorkObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3310D9AB-FC52-4404-A56A-2DE38B11D47E}
// *********************************************************************//
  IMetodsWorkObject = interface(IDispatch)
    ['{3310D9AB-FC52-4404-A56A-2DE38B11D47E}']
    procedure lnGetInfoAboutVersion(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                    const stType: WideString; const stProduct: WideString; 
                                    const stVersion: WideString; inIdVersion: SYSINT; 
                                    inMode: Integer; inSetFormat: Integer; var DATA: OleVariant; 
                                    var inRecsOut: SYSINT); safecall;
    procedure lnGetLinkedObjectsEx(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                   const stTypeName: WideString; const stProductName: WideString; 
                                   const stVersionNumber: WideString; const stLinkType: WideString; 
                                   boInverse: Integer; boFullLink: Integer; 
                                   boGroupByProduct: Integer; boForTree: Integer; 
                                   inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); safecall;
    procedure lnGetLinkedFast(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                              inIdVersion: SYSINT; const stLinkType: WideString; 
                              inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); safecall;
    procedure lnGetLinkedObjectsAndFiles(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; 
                                         const stTypeName: WideString; 
                                         const stProductName: WideString; 
                                         const stVersionNumber: WideString; 
                                         const stLinkType: WideString; boFullLink: Integer; 
                                         boViewOnlyDocuments: Integer; inSetFormat: Integer; 
                                         out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetInfoAboutFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 stFileName: Integer; stFullFilePath: Integer; 
                                 inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetInfoAboutType(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 const stType: WideString; inMode: Integer; inSetFormat: Integer; 
                                 out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGotoObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           const stNameDB: WideString; const stNameCheck: WideString; 
                           const stType: WideString; const stProduct: WideString; 
                           const stVersion: WideString; inIdVersion: SYSINT); safecall;
    procedure lnSelectObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnImportObjectWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                     inSetFormat: Integer; out DATA: OleVariant; 
                                     out inRecsOut: SYSINT); safecall;
    procedure lnImportFileWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; inTypeOpenFile: Integer; 
                                   inSetFormat: Integer; inLockMultiExtract: Integer; 
                                   out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnOpenDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             const stFilter: WideString; inSetFormat: Integer; 
                             out inCheckOut: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnExtractDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stFilter: WideString; inSetFormat: Integer; 
                                out inCheckOut: Integer; out DATA: OleVariant; 
                                out inRecsOut: SYSINT; const stHintMessage: WideString; 
                                inLockMultiExtract: Integer); safecall;
    function Get_lnSaveDocument: ISaveDocument; safecall;
    procedure lnExtractDocumentFormShow(out inReturnCode: OleVariant; 
                                        out stErrorMessage: OleVariant; const stFilter: WideString; 
                                        inSetFormat: Integer; out inCheckOut: Integer; 
                                        out DATA: OleVariant; out inRecsOut: SYSINT; 
                                        const stHintMessage: WideString; 
                                        inLockMultiExtract: Integer; 
                                        const stCaptionMessage: WideString); safecall;
    procedure lnImportFileByObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; Flags: Integer; Extract: WordBool; 
                                   const Hint: WideString; out DATA: OleVariant); safecall;
    procedure lnSelectObject2(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                              const Prompt: WideString; inSetFormat: Integer; out DATA: OleVariant; 
                              out inRecsOut: SYSINT); safecall;
    property lnSaveDocument: ISaveDocument read Get_lnSaveDocument;
  end;

// *********************************************************************//
// DispIntf:  IMetodsWorkObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3310D9AB-FC52-4404-A56A-2DE38B11D47E}
// *********************************************************************//
  IMetodsWorkObjectDisp = dispinterface
    ['{3310D9AB-FC52-4404-A56A-2DE38B11D47E}']
    procedure lnGetInfoAboutVersion(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                    const stType: WideString; const stProduct: WideString; 
                                    const stVersion: WideString; inIdVersion: SYSINT; 
                                    inMode: Integer; inSetFormat: Integer; var DATA: OleVariant; 
                                    var inRecsOut: SYSINT); dispid 1;
    procedure lnGetLinkedObjectsEx(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                   const stTypeName: WideString; const stProductName: WideString; 
                                   const stVersionNumber: WideString; const stLinkType: WideString; 
                                   boInverse: Integer; boFullLink: Integer; 
                                   boGroupByProduct: Integer; boForTree: Integer; 
                                   inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); dispid 2;
    procedure lnGetLinkedFast(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                              inIdVersion: SYSINT; const stLinkType: WideString; 
                              inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); dispid 4;
    procedure lnGetLinkedObjectsAndFiles(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; 
                                         const stTypeName: WideString; 
                                         const stProductName: WideString; 
                                         const stVersionNumber: WideString; 
                                         const stLinkType: WideString; boFullLink: Integer; 
                                         boViewOnlyDocuments: Integer; inSetFormat: Integer; 
                                         out DATA: OleVariant; out inRecsOut: SYSINT); dispid 3;
    procedure lnGetInfoAboutFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 stFileName: Integer; stFullFilePath: Integer; 
                                 inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 6;
    procedure lnGetInfoAboutType(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 const stType: WideString; inMode: Integer; inSetFormat: Integer; 
                                 out DATA: OleVariant; out inRecsOut: SYSINT); dispid 10;
    procedure lnGotoObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           const stNameDB: WideString; const stNameCheck: WideString; 
                           const stType: WideString; const stProduct: WideString; 
                           const stVersion: WideString; inIdVersion: SYSINT); dispid 5;
    procedure lnSelectObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 7;
    procedure lnImportObjectWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                     inSetFormat: Integer; out DATA: OleVariant; 
                                     out inRecsOut: SYSINT); dispid 11;
    procedure lnImportFileWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; inTypeOpenFile: Integer; 
                                   inSetFormat: Integer; inLockMultiExtract: Integer; 
                                   out DATA: OleVariant; out inRecsOut: SYSINT); dispid 13;
    procedure lnOpenDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             const stFilter: WideString; inSetFormat: Integer; 
                             out inCheckOut: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 8;
    procedure lnExtractDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stFilter: WideString; inSetFormat: Integer; 
                                out inCheckOut: Integer; out DATA: OleVariant; 
                                out inRecsOut: SYSINT; const stHintMessage: WideString; 
                                inLockMultiExtract: Integer); dispid 12;
    property lnSaveDocument: ISaveDocument readonly dispid 15;
    procedure lnExtractDocumentFormShow(out inReturnCode: OleVariant; 
                                        out stErrorMessage: OleVariant; const stFilter: WideString; 
                                        inSetFormat: Integer; out inCheckOut: Integer; 
                                        out DATA: OleVariant; out inRecsOut: SYSINT; 
                                        const stHintMessage: WideString; 
                                        inLockMultiExtract: Integer; 
                                        const stCaptionMessage: WideString); dispid 9;
    procedure lnImportFileByObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; Flags: Integer; Extract: WordBool; 
                                   const Hint: WideString; out DATA: OleVariant); dispid 160;
    procedure lnSelectObject2(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                              const Prompt: WideString; inSetFormat: Integer; out DATA: OleVariant; 
                              out inRecsOut: SYSINT); dispid 161;
  end;

// *********************************************************************//
// Interface: IOutlookBar
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6D3C83A2-C709-4A10-8F16-912CEE24D5B2}
// *********************************************************************//
  IOutlookBar = interface(IDispatch)
    ['{6D3C83A2-C709-4A10-8F16-912CEE24D5B2}']
    procedure lnGetDesktop(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetDataBases(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetUserSets(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                            inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetFavorites(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    function Get_lnOpenObjDesktop(inOpenOutlookList: SYSINT; const stCheckName: WideString; 
                                  const stNameDB: WideString): IConnectDBActive; safecall;
    function Get_lnOpenDataBase(inOpenOutlookList: SYSINT; const stNameDB: WideString): IConnectDBActive; safecall;
    function Get_lnOpenObjUserSets(inOpenOutlookList: SYSINT; const stUserSet: WideString; 
                                   const stNameDB: WideString): IConnectDBActive; safecall;
    function Get_lnOpenObjFavorites(inOpenOutlookList: SYSINT; const stName: WideString; 
                                    const stNameDB: WideString; inIdVersion: SYSINT): IConnectDBActive; safecall;
    function Get_lnGetConnectBDActive: IConnectDBActive; safecall;
    property lnOpenObjDesktop[inOpenOutlookList: SYSINT; const stCheckName: WideString; 
                              const stNameDB: WideString]: IConnectDBActive read Get_lnOpenObjDesktop;
    property lnOpenDataBase[inOpenOutlookList: SYSINT; const stNameDB: WideString]: IConnectDBActive read Get_lnOpenDataBase;
    property lnOpenObjUserSets[inOpenOutlookList: SYSINT; const stUserSet: WideString; 
                               const stNameDB: WideString]: IConnectDBActive read Get_lnOpenObjUserSets;
    property lnOpenObjFavorites[inOpenOutlookList: SYSINT; const stName: WideString; 
                                const stNameDB: WideString; inIdVersion: SYSINT]: IConnectDBActive read Get_lnOpenObjFavorites;
    property lnGetConnectBDActive: IConnectDBActive read Get_lnGetConnectBDActive;
  end;

// *********************************************************************//
// DispIntf:  IOutlookBarDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6D3C83A2-C709-4A10-8F16-912CEE24D5B2}
// *********************************************************************//
  IOutlookBarDisp = dispinterface
    ['{6D3C83A2-C709-4A10-8F16-912CEE24D5B2}']
    procedure lnGetDesktop(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 1;
    procedure lnGetDataBases(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 2;
    procedure lnGetUserSets(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                            inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 4;
    procedure lnGetFavorites(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 5;
    property lnOpenObjDesktop[inOpenOutlookList: SYSINT; const stCheckName: WideString; 
                              const stNameDB: WideString]: IConnectDBActive readonly dispid 9;
    property lnOpenDataBase[inOpenOutlookList: SYSINT; const stNameDB: WideString]: IConnectDBActive readonly dispid 10;
    property lnOpenObjUserSets[inOpenOutlookList: SYSINT; const stUserSet: WideString; 
                               const stNameDB: WideString]: IConnectDBActive readonly dispid 11;
    property lnOpenObjFavorites[inOpenOutlookList: SYSINT; const stName: WideString; 
                                const stNameDB: WideString; inIdVersion: SYSINT]: IConnectDBActive readonly dispid 12;
    property lnGetConnectBDActive: IConnectDBActive readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IConnectDBActive
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9BFF6226-1C52-4EBA-B00B-087558397C50}
// *********************************************************************//
  IConnectDBActive = interface(IDispatch)
    ['{9BFF6226-1C52-4EBA-B00B-087558397C50}']
    function Get_lnMetodsWorkObject: IMetodsWorkObject; safecall;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    function Get_lnRunMetods: IRunMetods; safecall;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
  end;

// *********************************************************************//
// DispIntf:  IConnectDBActiveDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9BFF6226-1C52-4EBA-B00B-087558397C50}
// *********************************************************************//
  IConnectDBActiveDisp = dispinterface
    ['{9BFF6226-1C52-4EBA-B00B-087558397C50}']
    property lnMetodsWorkObject: IMetodsWorkObject readonly dispid 12;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 1;
    property lnRunMetods: IRunMetods readonly dispid 3;
  end;

// *********************************************************************//
// Interface: ISaveDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}
// *********************************************************************//
  ISaveDocument = interface(IDispatch)
    ['{5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}']
    procedure lnSaveDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                             out DATAOut: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnUpData(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                       inCheck: Integer; lnRunTime: Integer; lnWaitTime: Integer); safecall;
    procedure lnSaveDocumentFree; safecall;
    procedure lnSaveDocumentEx(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                               inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                               out DATAOut: OleVariant; out inRecsOut: SYSINT; Flags: Integer); safecall;
    function lnGetSaveStatus: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISaveDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}
// *********************************************************************//
  ISaveDocumentDisp = dispinterface
    ['{5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}']
    procedure lnSaveDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                             out DATAOut: OleVariant; out inRecsOut: SYSINT); dispid 13;
    procedure lnUpData(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                       inCheck: Integer; lnRunTime: Integer; lnWaitTime: Integer); dispid 1;
    procedure lnSaveDocumentFree; dispid 2;
    procedure lnSaveDocumentEx(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                               inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                               out DATAOut: OleVariant; out inRecsOut: SYSINT; Flags: Integer); dispid 201;
    function lnGetSaveStatus: Integer; dispid 202;
  end;

// *********************************************************************//
// Interface: IRunMetods
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A274EEB2-800E-498F-9156-F3F6662B7359}
// *********************************************************************//
  IRunMetods = interface(IDispatch)
    ['{A274EEB2-800E-498F-9156-F3F6662B7359}']
    procedure lnCreate(out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure lnRunMetod(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                         const stNameDB: WideString; const stNameCheck: WideString; 
                         const stMetodName: WideString; vParams: OleVariant; out DATA: OleVariant; 
                         out inRecsOut: SYSINT; inSetFormat: Integer); safecall;
    procedure lnFree; safecall;
    function lnRunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; safecall;
    function Connect(CheckoutID: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRunMetodsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A274EEB2-800E-498F-9156-F3F6662B7359}
// *********************************************************************//
  IRunMetodsDisp = dispinterface
    ['{A274EEB2-800E-498F-9156-F3F6662B7359}']
    procedure lnCreate(out inReturnCode: OleVariant; out stErrorMessage: OleVariant); dispid 1;
    procedure lnRunMetod(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                         const stNameDB: WideString; const stNameCheck: WideString; 
                         const stMetodName: WideString; vParams: OleVariant; out DATA: OleVariant; 
                         out inRecsOut: SYSINT; inSetFormat: Integer); dispid 2;
    procedure lnFree; dispid 3;
    function lnRunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; dispid 4;
    function Connect(CheckoutID: Integer): WordBool; dispid 5;
  end;

// *********************************************************************//
// Interface: IPluginCall
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7779A0A3-1BF6-45C8-A536-21AD4B97E46D}
// *********************************************************************//
  IPluginCall = interface(IDispatch)
    ['{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}']
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant; safecall;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch; safecall;
    function Get_DBName: WideString; safecall;
    function Get_CheckOut: Integer; safecall;
    function Get_AppHandle: OLE_HANDLE; safecall;
    function Get_ClientHandle: OLE_HANDLE; safecall;
    function Get_IdVersion: Integer; safecall;
    function Get_stType: WideString; safecall;
    function Get_stProduct: WideString; safecall;
    function Get_stVersion: WideString; safecall;
    function Get_IdParent: Integer; safecall;
    function Get_stParentType: WideString; safecall;
    function Get_stParentProduct: WideString; safecall;
    function Get_stParentVersion: WideString; safecall;
    function Get_IdLink: Integer; safecall;
    function Get_SelectedParent: WordBool; safecall;
    function Get_Selected: IPDMObject; safecall;
    function Get_WFSelected: IWFObject; safecall;
    function Get_AsyncTask: IDispatch; safecall;
    function Get_MainHandle: OLE_HANDLE; safecall;
    function Get_ServerName: WideString; safecall;
    function Get_ParentObject: IPDMObject; safecall;
    function Get_LinkName: WideString; safecall;
    function Get_Content: IContent; safecall;
    function Get_WBSSystem: IDispatch; safecall;
    property DBName: WideString read Get_DBName;
    property CheckOut: Integer read Get_CheckOut;
    property AppHandle: OLE_HANDLE read Get_AppHandle;
    property ClientHandle: OLE_HANDLE read Get_ClientHandle;
    property IdVersion: Integer read Get_IdVersion;
    property stType: WideString read Get_stType;
    property stProduct: WideString read Get_stProduct;
    property stVersion: WideString read Get_stVersion;
    property IdParent: Integer read Get_IdParent;
    property stParentType: WideString read Get_stParentType;
    property stParentProduct: WideString read Get_stParentProduct;
    property stParentVersion: WideString read Get_stParentVersion;
    property IdLink: Integer read Get_IdLink;
    property SelectedParent: WordBool read Get_SelectedParent;
    property Selected: IPDMObject read Get_Selected;
    property WFSelected: IWFObject read Get_WFSelected;
    property AsyncTask: IDispatch read Get_AsyncTask;
    property MainHandle: OLE_HANDLE read Get_MainHandle;
    property ServerName: WideString read Get_ServerName;
    property ParentObject: IPDMObject read Get_ParentObject;
    property LinkName: WideString read Get_LinkName;
    property Content: IContent read Get_Content;
    property WBSSystem: IDispatch read Get_WBSSystem;
  end;

// *********************************************************************//
// DispIntf:  IPluginCallDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7779A0A3-1BF6-45C8-A536-21AD4B97E46D}
// *********************************************************************//
  IPluginCallDisp = dispinterface
    ['{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}']
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant; dispid 1;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch; dispid 2;
    property DBName: WideString readonly dispid 3;
    property CheckOut: Integer readonly dispid 4;
    property AppHandle: OLE_HANDLE readonly dispid 5;
    property ClientHandle: OLE_HANDLE readonly dispid 6;
    property IdVersion: Integer readonly dispid 7;
    property stType: WideString readonly dispid 8;
    property stProduct: WideString readonly dispid 9;
    property stVersion: WideString readonly dispid 10;
    property IdParent: Integer readonly dispid 11;
    property stParentType: WideString readonly dispid 12;
    property stParentProduct: WideString readonly dispid 13;
    property stParentVersion: WideString readonly dispid 14;
    property IdLink: Integer readonly dispid 15;
    property SelectedParent: WordBool readonly dispid 16;
    property Selected: IPDMObject readonly dispid 201;
    property WFSelected: IWFObject readonly dispid 202;
    property AsyncTask: IDispatch readonly dispid 203;
    property MainHandle: OLE_HANDLE readonly dispid 204;
    property ServerName: WideString readonly dispid 205;
    property ParentObject: IPDMObject readonly dispid 206;
    property LinkName: WideString readonly dispid 207;
    property Content: IContent readonly dispid 208;
    property WBSSystem: IDispatch readonly dispid 209;
  end;

// *********************************************************************//
// Interface: IDocumentViewer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {27B59D50-87FA-4017-B8C1-5F02D90EF1E7}
// *********************************************************************//
  IDocumentViewer = interface(IDispatch)
    ['{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}']
    procedure Init(const DBWindow: IDBWindow); safecall;
    procedure Finalize; safecall;
    procedure Clear; safecall;
    procedure Refresh(const PDMDocument: IPDMDocument); safecall;
    procedure Command(DocumentCommand: DocumentViewerCommands; MainWindow: OLE_HANDLE); safecall;
    function Get_Document: IPDMDocument; safecall;
    function Get_Features: Integer; safecall;
    property Document: IPDMDocument read Get_Document;
    property Features: Integer read Get_Features;
  end;

// *********************************************************************//
// DispIntf:  IDocumentViewerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {27B59D50-87FA-4017-B8C1-5F02D90EF1E7}
// *********************************************************************//
  IDocumentViewerDisp = dispinterface
    ['{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}']
    procedure Init(const DBWindow: IDBWindow); dispid 201;
    procedure Finalize; dispid 202;
    procedure Clear; dispid 203;
    procedure Refresh(const PDMDocument: IPDMDocument); dispid 204;
    procedure Command(DocumentCommand: DocumentViewerCommands; MainWindow: OLE_HANDLE); dispid 205;
    property Document: IPDMDocument readonly dispid 206;
    property Features: Integer readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IDataBase
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84555B43-9101-41CA-AAB3-0F176A0AF30C}
// *********************************************************************//
  IDataBase = interface(IDispatch)
    ['{84555B43-9101-41CA-AAB3-0F176A0AF30C}']
    function Get_Name: WideString; safecall;
    function Get_CurrentUser: ILoodsmanUser; safecall;
    function Get_MaxLabel: Integer; safecall;
    function CheckoutObjects(IDs: OleVariant; const ACheckOut: WideString; AAddToRoot: WordBool): WideString; safecall;
    function Get_ReadOnlyDB: WordBool; safecall;
    procedure RefreshCheckouts; safecall;
    procedure RefreshUserSets; safecall;
    function Get_UserAdmin: WordBool; safecall;
    function Get_Connection: ISimpleAPI2; safecall;
    property Name: WideString read Get_Name;
    property CurrentUser: ILoodsmanUser read Get_CurrentUser;
    property MaxLabel: Integer read Get_MaxLabel;
    property ReadOnlyDB: WordBool read Get_ReadOnlyDB;
    property UserAdmin: WordBool read Get_UserAdmin;
    property Connection: ISimpleAPI2 read Get_Connection;
  end;

// *********************************************************************//
// DispIntf:  IDataBaseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84555B43-9101-41CA-AAB3-0F176A0AF30C}
// *********************************************************************//
  IDataBaseDisp = dispinterface
    ['{84555B43-9101-41CA-AAB3-0F176A0AF30C}']
    property Name: WideString readonly dispid 201;
    property CurrentUser: ILoodsmanUser readonly dispid 202;
    property MaxLabel: Integer readonly dispid 203;
    function CheckoutObjects(IDs: OleVariant; const ACheckOut: WideString; AAddToRoot: WordBool): WideString; dispid 204;
    property ReadOnlyDB: WordBool readonly dispid 205;
    procedure RefreshCheckouts; dispid 206;
    procedure RefreshUserSets; dispid 207;
    property UserAdmin: WordBool readonly dispid 208;
    property Connection: ISimpleAPI2 readonly dispid 209;
  end;

// *********************************************************************//
// Interface: IDBWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}
// *********************************************************************//
  IDBWindow = interface(IDispatch)
    ['{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}']
    function Get_DataBase: IDataBase; safecall;
    function Get_CheckOutMode: WordBool; safecall;
    function Get_WindowHandle: OLE_HANDLE; safecall;
    procedure Close; safecall;
    function Get_Context: IDBContext; safecall;
    procedure Activate; safecall;
    function Get_Content: IContent; safecall;
    function Locate(const Location: WideString): Integer; safecall;
    function Get_ActiveFrame: IFrameContainer; safecall;
    procedure Set_ActiveFrame(const res: IFrameContainer); safecall;
    function Get_RootFrame: IFrameContainer; safecall;
    function Get_IsActive: WordBool; safecall;
    function Get_IsVisible: WordBool; safecall;
    function Get_CheckoutID: Integer; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_FixedLayout: WordBool; safecall;
    procedure Set_FixedLayout(Value: WordBool); safecall;
    function Get_EffMode: WordBool; safecall;
    procedure Set_EffMode(Value: WordBool); safecall;
    function Get_WindowKey: TGUID; safecall;
    function Get_TextInputInFocus: WordBool; safecall;
    procedure Set_TextInputInFocus(Value: WordBool); safecall;
    function Get_EffectivityParams: IDBWindowEffectivityParams; safecall;
    procedure Set_EffectivityParams(const Value: IDBWindowEffectivityParams); safecall;
    function Get_FramesCount: Integer; safecall;
    function Get_Frames(aIndex: Integer): IFrameContainer; safecall;
    function Get_ComparisonParams: IComparisonParams; safecall;
    function Get_LinkedStructuresParams: ILinkedStructuresParams; safecall;
    property DataBase: IDataBase read Get_DataBase;
    property CheckOutMode: WordBool read Get_CheckOutMode;
    property WindowHandle: OLE_HANDLE read Get_WindowHandle;
    property Context: IDBContext read Get_Context;
    property Content: IContent read Get_Content;
    property ActiveFrame: IFrameContainer read Get_ActiveFrame write Set_ActiveFrame;
    property RootFrame: IFrameContainer read Get_RootFrame;
    property IsActive: WordBool read Get_IsActive;
    property IsVisible: WordBool read Get_IsVisible;
    property CheckoutID: Integer read Get_CheckoutID;
    property Caption: WideString read Get_Caption write Set_Caption;
    property FixedLayout: WordBool read Get_FixedLayout write Set_FixedLayout;
    property EffMode: WordBool read Get_EffMode write Set_EffMode;
    property WindowKey: TGUID read Get_WindowKey;
    property TextInputInFocus: WordBool read Get_TextInputInFocus write Set_TextInputInFocus;
    property EffectivityParams: IDBWindowEffectivityParams read Get_EffectivityParams write Set_EffectivityParams;
    property FramesCount: Integer read Get_FramesCount;
    property Frames[aIndex: Integer]: IFrameContainer read Get_Frames;
    property ComparisonParams: IComparisonParams read Get_ComparisonParams;
    property LinkedStructuresParams: ILinkedStructuresParams read Get_LinkedStructuresParams;
  end;

// *********************************************************************//
// DispIntf:  IDBWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}
// *********************************************************************//
  IDBWindowDisp = dispinterface
    ['{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}']
    property DataBase: IDataBase readonly dispid 201;
    property CheckOutMode: WordBool readonly dispid 202;
    property WindowHandle: OLE_HANDLE readonly dispid 203;
    procedure Close; dispid 204;
    property Context: IDBContext readonly dispid 205;
    procedure Activate; dispid 206;
    property Content: IContent readonly dispid 207;
    function Locate(const Location: WideString): Integer; dispid 208;
    property ActiveFrame: IFrameContainer dispid 209;
    property RootFrame: IFrameContainer readonly dispid 210;
    property IsActive: WordBool readonly dispid 211;
    property IsVisible: WordBool readonly dispid 212;
    property CheckoutID: Integer readonly dispid 213;
    property Caption: WideString dispid 214;
    property FixedLayout: WordBool dispid 215;
    property EffMode: WordBool dispid 216;
    property WindowKey: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 217;
    property TextInputInFocus: WordBool dispid 218;
    property EffectivityParams: IDBWindowEffectivityParams dispid 219;
    property FramesCount: Integer readonly dispid 220;
    property Frames[aIndex: Integer]: IFrameContainer readonly dispid 221;
    property ComparisonParams: IComparisonParams readonly dispid 222;
    property LinkedStructuresParams: ILinkedStructuresParams readonly dispid 223;
  end;

// *********************************************************************//
// Interface: IDBContext
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}
// *********************************************************************//
  IDBContext = interface(IDispatch)
    ['{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}']
    function Get_ContextType: Integer; safecall;
    function GetContextValue(const AValueName: WideString): OleVariant; safecall;
    function Get_Connection: IDispatch; safecall;
    function Get_WBSSystem: IDispatch; safecall;
    procedure SetContextValue(const AValueName: WideString; AValue: OleVariant); safecall;
    function Get_ValueCount: Integer; safecall;
    function GetValueName(aIndex: Integer): WideString; safecall;
    function IsEqual(const AContext: IDBContext): WordBool; safecall;
    property ContextType: Integer read Get_ContextType;
    property Connection: IDispatch read Get_Connection;
    property WBSSystem: IDispatch read Get_WBSSystem;
    property ValueCount: Integer read Get_ValueCount;
  end;

// *********************************************************************//
// DispIntf:  IDBContextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}
// *********************************************************************//
  IDBContextDisp = dispinterface
    ['{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}']
    property ContextType: Integer readonly dispid 201;
    function GetContextValue(const AValueName: WideString): OleVariant; dispid 202;
    property Connection: IDispatch readonly dispid 203;
    property WBSSystem: IDispatch readonly dispid 204;
    procedure SetContextValue(const AValueName: WideString; AValue: OleVariant); dispid 205;
    property ValueCount: Integer readonly dispid 206;
    function GetValueName(aIndex: Integer): WideString; dispid 207;
    function IsEqual(const AContext: IDBContext): WordBool; dispid 208;
  end;

// *********************************************************************//
// Interface: ILoodsmanApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C50527B3-98D4-4C81-BE85-8D9B04A625FC}
// *********************************************************************//
  ILoodsmanApplication = interface(IDispatch)
    ['{C50527B3-98D4-4C81-BE85-8D9B04A625FC}']
    procedure SetVisible(Value: WordBool); safecall;
    function GetVisible: WordBool; safecall;
    procedure Quit; safecall;
    procedure Activate; safecall;
    procedure Minimize; safecall;
    procedure Maximize; safecall;
    procedure Restore; safecall;
    function GetPlugin(Index: Integer): ILoodsmanPlugin; safecall;
    function GetPluginByName(const Name: WideString): ILoodsmanPlugin; safecall;
    procedure NotifyUser(const Header: WideString; const Text: WideString; NotifyKind: Integer; 
                         Reserved: Integer); safecall;
    procedure TileWindows(ATileMode: Integer); safecall;
    procedure CascadeWindows; safecall;
    function Get_ActiveWindow: IDBWindow; safecall;
    function Get_MainHandle: OLE_HANDLE; safecall;
    function Get_PluginCount: Integer; safecall;
    function Get_WindowCount: Integer; safecall;
    function GetWindow(Index: Integer): IDBWindow; safecall;
    function Get_AppHandle: OLE_HANDLE; safecall;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext; safecall;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function Get_DataBase: IDataBase; safecall;
    function OpenDatabase(const DBName: WideString; Params: OleVariant): WordBool; safecall;
    procedure CloseDatabase; safecall;
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString); safecall;
    procedure AddNotificationHandler(const NotificationIntf: INotificationHandler; 
                                     NotifyType: Integer; const NotifyCategory: WideString; 
                                     DataType: Integer); safecall;
    procedure RemoveNotificationHandler(const NotificationIntf: INotificationHandler; 
                                        NotifyType: Integer; const NotifyCategory: WideString; 
                                        DataType: Integer); safecall;
    function Get_Title: WideString; safecall;
    function Get_Actions: IActions; safecall;
    function FindService(AIntfID: TGUID; BindedOnly: WordBool): IDispatch; safecall;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function OpenURL(const URLString: WideString; Flags: Integer): Integer; safecall;
    function Get_FilePath: WideString; safecall;
    procedure AddActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer; 
                               Priority: Integer; DataDependent: WordBool); safecall;
    procedure RemoveActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer); safecall;
    function Get_HelpPath: WideString; safecall;
    function Get_SessionSecurityLabel: Integer; safecall;
    function Get_TypeIconsOffset: Integer; safecall;
    function GetTypeIconIndex(ATypeID: Integer): Integer; safecall;
    function OpenCheckout(const ACheckOut: WideString): IDBWindow; safecall;
    function GetAppMenu: IApplicationMenu; safecall;
    function Get_MainImageList: IImageList; safecall;
    function GetLogger(const Name: WideString): ILoodsmanLogger; safecall;
    function GetCheckOutConnection(const Name: WideString): ISimpleAPI2; safecall;
    function Get_PDMModel: IPDMEntityManager; safecall;
    function Get_CurrentSPName: WideString; safecall;
    function Get_LoodsmanClientUtils: ILoodsmanClientUtils; safecall;
    function MsgBox(const AText: WideString; AFlags: Integer): Integer; safecall;
    function GetClipboard(ObjectCode: Integer): IDispatch; safecall;
    function GetIniFile(ALocal: WordBool): WideString; safecall;
    function GetClientEdition: Integer; safecall;
    function GetFeature(FeatureID: Integer): Integer; safecall;
    function FindServiceByStrGuid(const AIntfID: WideString; BindedOnly: WordBool): IDispatch; safecall;
    function FindServiceByName(const AName: WideString; BindedOnly: WordBool): IDispatch; safecall;
    procedure RegisterPluginWindow(AHandle: OLE_HANDLE); safecall;
    procedure UnRegisterPluginWindow(AHandle: OLE_HANDLE); safecall;
    function GetAppMenuDescriptions: IApplicationMenuDescriptions; safecall;
    procedure SendNotificationEx(const Source: WideString; NotifyType: Integer; 
                                 const NotifyCategory: WideString; DataType: Integer; 
                                 DATA: OleVariant; const CheckOut: WideString; Lazy: WordBool; 
                                 Flag: Integer); safecall;
    function SelectObjects(const Callback: ISelectionCallback; const Prompt: WideString; 
                           const OKButtonCaption: WideString; const CancelButtonCaption: WideString): Integer; safecall;
    function GetPluginCall: IPluginCall; safecall;
    function GetLoodsmanClientEvents: ILoodsmanClientEvents; safecall;
    function GetPluginCallEx(SelectedID: Integer; SelectedParentLinkID: Integer; 
                             WFSelectedID: Integer; WFSelectedIsRoute: WordBool; CheckoutID: Integer): IPluginCall; safecall;
    function Get_LoodsmanDataBaseUtils: ILoodsmanDataBaseUtils; safecall;
    function GetFeatureFormatErrorMessage(FeatureID: Integer; ReturnCode: Integer): WideString; safecall;
    property ActiveWindow: IDBWindow read Get_ActiveWindow;
    property MainHandle: OLE_HANDLE read Get_MainHandle;
    property PluginCount: Integer read Get_PluginCount;
    property WindowCount: Integer read Get_WindowCount;
    property AppHandle: OLE_HANDLE read Get_AppHandle;
    property DataBase: IDataBase read Get_DataBase;
    property Title: WideString read Get_Title;
    property Actions: IActions read Get_Actions;
    property FilePath: WideString read Get_FilePath;
    property HelpPath: WideString read Get_HelpPath;
    property SessionSecurityLabel: Integer read Get_SessionSecurityLabel;
    property TypeIconsOffset: Integer read Get_TypeIconsOffset;
    property MainImageList: IImageList read Get_MainImageList;
    property PDMModel: IPDMEntityManager read Get_PDMModel;
    property CurrentSPName: WideString read Get_CurrentSPName;
    property LoodsmanClientUtils: ILoodsmanClientUtils read Get_LoodsmanClientUtils;
    property LoodsmanDataBaseUtils: ILoodsmanDataBaseUtils read Get_LoodsmanDataBaseUtils;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C50527B3-98D4-4C81-BE85-8D9B04A625FC}
// *********************************************************************//
  ILoodsmanApplicationDisp = dispinterface
    ['{C50527B3-98D4-4C81-BE85-8D9B04A625FC}']
    procedure SetVisible(Value: WordBool); dispid 201;
    function GetVisible: WordBool; dispid 202;
    procedure Quit; dispid 203;
    procedure Activate; dispid 205;
    procedure Minimize; dispid 206;
    procedure Maximize; dispid 207;
    procedure Restore; dispid 208;
    function GetPlugin(Index: Integer): ILoodsmanPlugin; dispid 210;
    function GetPluginByName(const Name: WideString): ILoodsmanPlugin; dispid 211;
    procedure NotifyUser(const Header: WideString; const Text: WideString; NotifyKind: Integer; 
                         Reserved: Integer); dispid 212;
    procedure TileWindows(ATileMode: Integer); dispid 213;
    procedure CascadeWindows; dispid 214;
    property ActiveWindow: IDBWindow readonly dispid 215;
    property MainHandle: OLE_HANDLE readonly dispid 204;
    property PluginCount: Integer readonly dispid 209;
    property WindowCount: Integer readonly dispid 216;
    function GetWindow(Index: Integer): IDBWindow; dispid 217;
    property AppHandle: OLE_HANDLE readonly dispid 218;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 219;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext; dispid 220;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 221;
    property DataBase: IDataBase readonly dispid 222;
    function OpenDatabase(const DBName: WideString; Params: OleVariant): WordBool; dispid 223;
    procedure CloseDatabase; dispid 224;
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString); dispid 225;
    procedure AddNotificationHandler(const NotificationIntf: INotificationHandler; 
                                     NotifyType: Integer; const NotifyCategory: WideString; 
                                     DataType: Integer); dispid 226;
    procedure RemoveNotificationHandler(const NotificationIntf: INotificationHandler; 
                                        NotifyType: Integer; const NotifyCategory: WideString; 
                                        DataType: Integer); dispid 227;
    property Title: WideString readonly dispid 228;
    property Actions: IActions readonly dispid 232;
    function FindService(AIntfID: {NOT_OLEAUTO(TGUID)}OleVariant; BindedOnly: WordBool): IDispatch; dispid 233;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 234;
    function OpenURL(const URLString: WideString; Flags: Integer): Integer; dispid 235;
    property FilePath: WideString readonly dispid 236;
    procedure AddActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer; 
                               Priority: Integer; DataDependent: WordBool); dispid 229;
    procedure RemoveActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer); dispid 230;
    property HelpPath: WideString readonly dispid 231;
    property SessionSecurityLabel: Integer readonly dispid 237;
    property TypeIconsOffset: Integer readonly dispid 238;
    function GetTypeIconIndex(ATypeID: Integer): Integer; dispid 239;
    function OpenCheckout(const ACheckOut: WideString): IDBWindow; dispid 240;
    function GetAppMenu: IApplicationMenu; dispid 241;
    property MainImageList: IImageList readonly dispid 242;
    function GetLogger(const Name: WideString): ILoodsmanLogger; dispid 243;
    function GetCheckOutConnection(const Name: WideString): ISimpleAPI2; dispid 244;
    property PDMModel: IPDMEntityManager readonly dispid 245;
    property CurrentSPName: WideString readonly dispid 246;
    property LoodsmanClientUtils: ILoodsmanClientUtils readonly dispid 247;
    function MsgBox(const AText: WideString; AFlags: Integer): Integer; dispid 248;
    function GetClipboard(ObjectCode: Integer): IDispatch; dispid 249;
    function GetIniFile(ALocal: WordBool): WideString; dispid 250;
    function GetClientEdition: Integer; dispid 251;
    function GetFeature(FeatureID: Integer): Integer; dispid 252;
    function FindServiceByStrGuid(const AIntfID: WideString; BindedOnly: WordBool): IDispatch; dispid 253;
    function FindServiceByName(const AName: WideString; BindedOnly: WordBool): IDispatch; dispid 255;
    procedure RegisterPluginWindow(AHandle: OLE_HANDLE); dispid 256;
    procedure UnRegisterPluginWindow(AHandle: OLE_HANDLE); dispid 257;
    function GetAppMenuDescriptions: IApplicationMenuDescriptions; dispid 258;
    procedure SendNotificationEx(const Source: WideString; NotifyType: Integer; 
                                 const NotifyCategory: WideString; DataType: Integer; 
                                 DATA: OleVariant; const CheckOut: WideString; Lazy: WordBool; 
                                 Flag: Integer); dispid 259;
    function SelectObjects(const Callback: ISelectionCallback; const Prompt: WideString; 
                           const OKButtonCaption: WideString; const CancelButtonCaption: WideString): Integer; dispid 260;
    function GetPluginCall: IPluginCall; dispid 261;
    function GetLoodsmanClientEvents: ILoodsmanClientEvents; dispid 262;
    function GetPluginCallEx(SelectedID: Integer; SelectedParentLinkID: Integer; 
                             WFSelectedID: Integer; WFSelectedIsRoute: WordBool; CheckoutID: Integer): IPluginCall; dispid 263;
    property LoodsmanDataBaseUtils: ILoodsmanDataBaseUtils readonly dispid 264;
    function GetFeatureFormatErrorMessage(FeatureID: Integer; ReturnCode: Integer): WideString; dispid 265;
  end;

// *********************************************************************//
// Interface: IActions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22C267CC-D48E-43F0-94B9-AF03C949D103}
// *********************************************************************//
  IActions = interface(IDispatch)
    ['{22C267CC-D48E-43F0-94B9-AF03C949D103}']
    procedure SetActionEnabled(ActionCommand: Integer; ActionEnabled: WordBool); safecall;
    function IsActionEnabled(ActionCommand: Integer): WordBool; safecall;
    function ExecuteAction(ActionCommand: Integer; ActionData: OleVariant; 
                           var ActionResultData: OleVariant): ActionResults; safecall;
    function CreateAction(const ActionCaption: WideString; const ActionHint: WideString; 
                          const ActionShortcut: WideString; ActionIconIndex: Integer; 
                          ActionIcon: OleVariant): Integer; safecall;
    procedure SetActionVisible(ActionCommand: Integer; ActionVisible: WordBool); safecall;
    function IsActionVisible(ActionCommand: Integer): WordBool; safecall;
    procedure SetActionCaption(ActionCommand: Integer; const NewCaption: WideString); safecall;
    function GetAction(ActionCommand: Integer): IAction; safecall;
    function CreateServiceAction(const AService: IServiceInfo; const ProcName: WideString; 
                                 const ActionCaption: WideString; const ActionHint: WideString; 
                                 const ActionShortcut: WideString; ActionIconIndex: Integer; 
                                 ActionIcon: OleVariant): IAction; safecall;
    function CheckActionBySettings(AType: TActionSettingsType; const UniqueID: WideString): TActionSettingsStatus; safecall;
  end;

// *********************************************************************//
// DispIntf:  IActionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22C267CC-D48E-43F0-94B9-AF03C949D103}
// *********************************************************************//
  IActionsDisp = dispinterface
    ['{22C267CC-D48E-43F0-94B9-AF03C949D103}']
    procedure SetActionEnabled(ActionCommand: Integer; ActionEnabled: WordBool); dispid 201;
    function IsActionEnabled(ActionCommand: Integer): WordBool; dispid 202;
    function ExecuteAction(ActionCommand: Integer; ActionData: OleVariant; 
                           var ActionResultData: OleVariant): ActionResults; dispid 203;
    function CreateAction(const ActionCaption: WideString; const ActionHint: WideString; 
                          const ActionShortcut: WideString; ActionIconIndex: Integer; 
                          ActionIcon: OleVariant): Integer; dispid 204;
    procedure SetActionVisible(ActionCommand: Integer; ActionVisible: WordBool); dispid 205;
    function IsActionVisible(ActionCommand: Integer): WordBool; dispid 206;
    procedure SetActionCaption(ActionCommand: Integer; const NewCaption: WideString); dispid 207;
    function GetAction(ActionCommand: Integer): IAction; dispid 208;
    function CreateServiceAction(const AService: IServiceInfo; const ProcName: WideString; 
                                 const ActionCaption: WideString; const ActionHint: WideString; 
                                 const ActionShortcut: WideString; ActionIconIndex: Integer; 
                                 ActionIcon: OleVariant): IAction; dispid 209;
    function CheckActionBySettings(AType: TActionSettingsType; const UniqueID: WideString): TActionSettingsStatus; dispid 210;
  end;

// *********************************************************************//
// Interface: ILoodsmanPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A0AD8A6-791D-4211-B6B0-A8C25FA33209}
// *********************************************************************//
  ILoodsmanPlugin = interface(IDispatch)
    ['{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}']
    function GetName: WideString; safecall;
    function GetPath: WideString; safecall;
    function GetCommandCount: Integer; safecall;
    function GetCommandCaption(Index: Integer): WideString; safecall;
    function GetCommandName(Index: Integer): WideString; safecall;
    function ExecCommand(const ACommandName: WideString): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A0AD8A6-791D-4211-B6B0-A8C25FA33209}
// *********************************************************************//
  ILoodsmanPluginDisp = dispinterface
    ['{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}']
    function GetName: WideString; dispid 201;
    function GetPath: WideString; dispid 202;
    function GetCommandCount: Integer; dispid 203;
    function GetCommandCaption(Index: Integer): WideString; dispid 204;
    function GetCommandName(Index: Integer): WideString; dispid 205;
    function ExecCommand(const ACommandName: WideString): OleVariant; dispid 206;
  end;

// *********************************************************************//
// Interface: IFrameInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3002A3EA-E245-441E-BE6F-4E9878EDE382}
// *********************************************************************//
  IFrameInfo = interface(IDispatch)
    ['{3002A3EA-E245-441E-BE6F-4E9878EDE382}']
    function GetInTypes: WideString; safecall;
    function GetOutType: Integer; safecall;
    function GetFrameName: WideString; safecall;
    function GetFrameDescription: WideString; safecall;
    function IsRootFrame: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IFrameInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3002A3EA-E245-441E-BE6F-4E9878EDE382}
// *********************************************************************//
  IFrameInfoDisp = dispinterface
    ['{3002A3EA-E245-441E-BE6F-4E9878EDE382}']
    function GetInTypes: WideString; dispid 201;
    function GetOutType: Integer; dispid 202;
    function GetFrameName: WideString; dispid 203;
    function GetFrameDescription: WideString; dispid 204;
    function IsRootFrame: WordBool; dispid 205;
  end;

// *********************************************************************//
// Interface: ILoodsmanFrame
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43151655-95CC-40B4-9D92-A95E8DF52043}
// *********************************************************************//
  ILoodsmanFrame = interface(IDispatch)
    ['{43151655-95CC-40B4-9D92-A95E8DF52043}']
    procedure OnFrameCreate(const Context: IDBContext; const Container: IFrameContainer; 
                            const OwnerApplication: IDispatch); safecall;
    procedure OnFrameDestroy; safecall;
    procedure OnFrameActivate; safecall;
    procedure OnFrameDeactivate; safecall;
    procedure OnStartRefresh; safecall;
    procedure OnFrameClear; safecall;
    function OnCustomEvent(EventCode: Integer; EventData: OleVariant): OleVariant; safecall;
    procedure OnLoadOptions(const AFrameOptions: IOptions); safecall;
    procedure OnSaveOptions(const AFrameOptions: IOptions); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanFrameDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43151655-95CC-40B4-9D92-A95E8DF52043}
// *********************************************************************//
  ILoodsmanFrameDisp = dispinterface
    ['{43151655-95CC-40B4-9D92-A95E8DF52043}']
    procedure OnFrameCreate(const Context: IDBContext; const Container: IFrameContainer; 
                            const OwnerApplication: IDispatch); dispid 203;
    procedure OnFrameDestroy; dispid 204;
    procedure OnFrameActivate; dispid 205;
    procedure OnFrameDeactivate; dispid 206;
    procedure OnStartRefresh; dispid 207;
    procedure OnFrameClear; dispid 208;
    function OnCustomEvent(EventCode: Integer; EventData: OleVariant): OleVariant; dispid 209;
    procedure OnLoadOptions(const AFrameOptions: IOptions); dispid 210;
    procedure OnSaveOptions(const AFrameOptions: IOptions); dispid 211;
  end;

// *********************************************************************//
// Interface: IFrameContainer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {540CAE0E-987D-4429-837D-1A4A9A28192F}
// *********************************************************************//
  IFrameContainer = interface(IDispatch)
    ['{540CAE0E-987D-4429-837D-1A4A9A28192F}']
    function Get_ParentFrame: IFrameContainer; safecall;
    procedure StartRefresh(AChildrenOnly: WordBool); safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_Content: IContent; safecall;
    procedure ChangeContent(DefaultTimeout: WordBool; Timeout: SYSUINT); safecall;
    function Get_Level: Integer; safecall;
    function Get_FrameKey: WideString; safecall;
    function Get_Editing: WordBool; safecall;
    function Get_LayoutName: WideString; safecall;
    procedure Validate(AValid: WordBool); safecall;
    function Get_MainForm: IDBWindow; safecall;
    procedure CheckActions; safecall;
    function Get_FrameInfo: IFrameInfo; safecall;
    function Get_IsActive: WordBool; safecall;
    function Get_SupportedFeatures: LongWord; safecall;
    function Get_FloatParent: WordBool; safecall;
    function Get_ChildFramesCount: Integer; safecall;
    function Get_ChildFrames(aIndex: Integer): IFrameContainer; safecall;
    function Get_ShowTreeRulesParams: WordBool; safecall;
    property ParentFrame: IFrameContainer read Get_ParentFrame;
    property IsRoot: WordBool read Get_IsRoot;
    property Content: IContent read Get_Content;
    property Level: Integer read Get_Level;
    property FrameKey: WideString read Get_FrameKey;
    property Editing: WordBool read Get_Editing;
    property LayoutName: WideString read Get_LayoutName;
    property MainForm: IDBWindow read Get_MainForm;
    property FrameInfo: IFrameInfo read Get_FrameInfo;
    property IsActive: WordBool read Get_IsActive;
    property SupportedFeatures: LongWord read Get_SupportedFeatures;
    property FloatParent: WordBool read Get_FloatParent;
    property ChildFramesCount: Integer read Get_ChildFramesCount;
    property ChildFrames[aIndex: Integer]: IFrameContainer read Get_ChildFrames;
    property ShowTreeRulesParams: WordBool read Get_ShowTreeRulesParams;
  end;

// *********************************************************************//
// DispIntf:  IFrameContainerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {540CAE0E-987D-4429-837D-1A4A9A28192F}
// *********************************************************************//
  IFrameContainerDisp = dispinterface
    ['{540CAE0E-987D-4429-837D-1A4A9A28192F}']
    property ParentFrame: IFrameContainer readonly dispid 202;
    procedure StartRefresh(AChildrenOnly: WordBool); dispid 203;
    property IsRoot: WordBool readonly dispid 204;
    property Content: IContent readonly dispid 205;
    procedure ChangeContent(DefaultTimeout: WordBool; Timeout: SYSUINT); dispid 201;
    property Level: Integer readonly dispid 207;
    property FrameKey: WideString readonly dispid 206;
    property Editing: WordBool readonly dispid 208;
    property LayoutName: WideString readonly dispid 209;
    procedure Validate(AValid: WordBool); dispid 210;
    property MainForm: IDBWindow readonly dispid 211;
    procedure CheckActions; dispid 212;
    property FrameInfo: IFrameInfo readonly dispid 213;
    property IsActive: WordBool readonly dispid 214;
    property SupportedFeatures: LongWord readonly dispid 215;
    property FloatParent: WordBool readonly dispid 216;
    property ChildFramesCount: Integer readonly dispid 217;
    property ChildFrames[aIndex: Integer]: IFrameContainer readonly dispid 218;
    property ShowTreeRulesParams: WordBool readonly dispid 219;
  end;

// *********************************************************************//
// Interface: IContent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F471E54-37F4-43C6-BA40-28FFCB2892DB}
// *********************************************************************//
  IContent = interface(IDispatch)
    ['{3F471E54-37F4-43C6-BA40-28FFCB2892DB}']
    function Get_Selected: OleVariant; safecall;
    function Get_Focused: OleVariant; safecall;
    function Get_SelectedCount: Integer; safecall;
    function SelectedByIndex(aIndex: Integer): OleVariant; safecall;
    function Get_ContentType: Integer; safecall;
    function Get_ItemCount: Integer; safecall;
    function ItemByIndex(aIndex: Integer): OleVariant; safecall;
    property Selected: OleVariant read Get_Selected;
    property Focused: OleVariant read Get_Focused;
    property SelectedCount: Integer read Get_SelectedCount;
    property ContentType: Integer read Get_ContentType;
    property ItemCount: Integer read Get_ItemCount;
  end;

// *********************************************************************//
// DispIntf:  IContentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F471E54-37F4-43C6-BA40-28FFCB2892DB}
// *********************************************************************//
  IContentDisp = dispinterface
    ['{3F471E54-37F4-43C6-BA40-28FFCB2892DB}']
    property Selected: OleVariant readonly dispid 201;
    property Focused: OleVariant readonly dispid 202;
    property SelectedCount: Integer readonly dispid 203;
    function SelectedByIndex(aIndex: Integer): OleVariant; dispid 204;
    property ContentType: Integer readonly dispid 205;
    property ItemCount: Integer readonly dispid 206;
    function ItemByIndex(aIndex: Integer): OleVariant; dispid 207;
  end;

// *********************************************************************//
// Interface: IOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F64CF2A2-E862-4365-B20F-19E9A5BE0038}
// *********************************************************************//
  IOptions = interface(IDispatch)
    ['{F64CF2A2-E862-4365-B20F-19E9A5BE0038}']
    procedure SetValue(const ASectionName: WideString; const AValueName: WideString; 
                       AValue: OleVariant); safecall;
    function GetValue(const ASectionName: WideString; const AValueName: WideString; 
                      ADefaultValue: OleVariant): OleVariant; safecall;
    procedure DeleteSection(const ASectionName: WideString); safecall;
    procedure DeleteValue(const ASectionName: WideString; const AValueName: WideString; 
                          ADeleteEmptySection: WordBool); safecall;
    function SectionExists(const ASectionName: WideString): WordBool; safecall;
    function ValueExists(const ASectionName: WideString; const AValueName: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F64CF2A2-E862-4365-B20F-19E9A5BE0038}
// *********************************************************************//
  IOptionsDisp = dispinterface
    ['{F64CF2A2-E862-4365-B20F-19E9A5BE0038}']
    procedure SetValue(const ASectionName: WideString; const AValueName: WideString; 
                       AValue: OleVariant); dispid 201;
    function GetValue(const ASectionName: WideString; const AValueName: WideString; 
                      ADefaultValue: OleVariant): OleVariant; dispid 202;
    procedure DeleteSection(const ASectionName: WideString); dispid 203;
    procedure DeleteValue(const ASectionName: WideString; const AValueName: WideString; 
                          ADeleteEmptySection: WordBool); dispid 204;
    function SectionExists(const ASectionName: WideString): WordBool; dispid 205;
    function ValueExists(const ASectionName: WideString; const AValueName: WideString): WordBool; dispid 206;
  end;

// *********************************************************************//
// Interface: IActionHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9827725B-F4DE-4EDA-B37D-2C09710722B5}
// *********************************************************************//
  IActionHandler = interface(IDispatch)
    ['{9827725B-F4DE-4EDA-B37D-2C09710722B5}']
    procedure OnActionExecute(ActionCommand: Integer; ActionData: OleVariant; 
                              var ActionResultData: OleVariant; out ActionResult: ActionResults); safecall;
    procedure OnCheckActions(const Actions: IActions); safecall;
  end;

// *********************************************************************//
// DispIntf:  IActionHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9827725B-F4DE-4EDA-B37D-2C09710722B5}
// *********************************************************************//
  IActionHandlerDisp = dispinterface
    ['{9827725B-F4DE-4EDA-B37D-2C09710722B5}']
    procedure OnActionExecute(ActionCommand: Integer; ActionData: OleVariant; 
                              var ActionResultData: OleVariant; out ActionResult: ActionResults); dispid 201;
    procedure OnCheckActions(const Actions: IActions); dispid 202;
  end;

// *********************************************************************//
// Interface: IApplicationMenu
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9758DAA9-74D9-4A13-95EB-356F3FE66073}
// *********************************************************************//
  IApplicationMenu = interface(IDispatch)
    ['{9758DAA9-74D9-4A13-95EB-356F3FE66073}']
    function GetMenuBar(aIndex: Integer; ABarType: Integer): IMenuBar; safecall;
    function GetMenuBarByText(const AText: WideString; ABarType: Integer; ACreate: WordBool): IMenuBar; safecall;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer): Integer; safecall;
    function MenuItemExists(const MenuItemID: WideString): WordBool; safecall;
    function GetMenuBarCount(ABarType: Integer): Integer; safecall;
    function GetItemByText(const AText: WideString): IMenuItem; safecall;
    procedure SetAlertStatus(const AItemText: WideString; Level: Integer; const Hint: WideString); safecall;
    procedure SetNewItemCount(const AItemText: WideString; Count: Integer; const Hint: WideString); safecall;
    function GetItemByPath(const APath: WideString; ABarType: Integer): IMenuItem; safecall;
    function GenerateItemID: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IApplicationMenuDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9758DAA9-74D9-4A13-95EB-356F3FE66073}
// *********************************************************************//
  IApplicationMenuDisp = dispinterface
    ['{9758DAA9-74D9-4A13-95EB-356F3FE66073}']
    function GetMenuBar(aIndex: Integer; ABarType: Integer): IMenuBar; dispid 202;
    function GetMenuBarByText(const AText: WideString; ABarType: Integer; ACreate: WordBool): IMenuBar; dispid 203;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer): Integer; dispid 204;
    function MenuItemExists(const MenuItemID: WideString): WordBool; dispid 205;
    function GetMenuBarCount(ABarType: Integer): Integer; dispid 201;
    function GetItemByText(const AText: WideString): IMenuItem; dispid 206;
    procedure SetAlertStatus(const AItemText: WideString; Level: Integer; const Hint: WideString); dispid 207;
    procedure SetNewItemCount(const AItemText: WideString; Count: Integer; const Hint: WideString); dispid 208;
    function GetItemByPath(const APath: WideString; ABarType: Integer): IMenuItem; dispid 209;
    function GenerateItemID: WideString; dispid 210;
  end;

// *********************************************************************//
// Interface: INotification
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {753BE7FF-88BB-446A-92C0-BE79EFA7400C}
// *********************************************************************//
  INotification = interface(IDispatch)
    ['{753BE7FF-88BB-446A-92C0-BE79EFA7400C}']
    function Get_NotifyType: Integer; safecall;
    function Get_NotifyCategory: WideString; safecall;
    function Get_DataType: Integer; safecall;
    function Get_DATA: OleVariant; safecall;
    function Get_CheckOut: WideString; safecall;
    function Get_Source: WideString; safecall;
    function Get_Flag: Integer; safecall;
    function Get_TimeStamp: Double; safecall;
    property NotifyType: Integer read Get_NotifyType;
    property NotifyCategory: WideString read Get_NotifyCategory;
    property DataType: Integer read Get_DataType;
    property DATA: OleVariant read Get_DATA;
    property CheckOut: WideString read Get_CheckOut;
    property Source: WideString read Get_Source;
    property Flag: Integer read Get_Flag;
    property TimeStamp: Double read Get_TimeStamp;
  end;

// *********************************************************************//
// DispIntf:  INotificationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {753BE7FF-88BB-446A-92C0-BE79EFA7400C}
// *********************************************************************//
  INotificationDisp = dispinterface
    ['{753BE7FF-88BB-446A-92C0-BE79EFA7400C}']
    property NotifyType: Integer readonly dispid 201;
    property NotifyCategory: WideString readonly dispid 202;
    property DataType: Integer readonly dispid 204;
    property DATA: OleVariant readonly dispid 205;
    property CheckOut: WideString readonly dispid 206;
    property Source: WideString readonly dispid 208;
    property Flag: Integer readonly dispid 209;
    property TimeStamp: Double readonly dispid 210;
  end;

// *********************************************************************//
// Interface: INotificationHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {52A780D4-B5CA-4A30-9CBE-739D98F9D528}
// *********************************************************************//
  INotificationHandler = interface(IDispatch)
    ['{52A780D4-B5CA-4A30-9CBE-739D98F9D528}']
    procedure OnNotify(const Notification: INotification); safecall;
  end;

// *********************************************************************//
// DispIntf:  INotificationHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {52A780D4-B5CA-4A30-9CBE-739D98F9D528}
// *********************************************************************//
  INotificationHandlerDisp = dispinterface
    ['{52A780D4-B5CA-4A30-9CBE-739D98F9D528}']
    procedure OnNotify(const Notification: INotification); dispid 201;
  end;

// *********************************************************************//
// Interface: IMenuBar
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}
// *********************************************************************//
  IMenuBar = interface(IDispatch)
    ['{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}']
    function Get_Caption: WideString; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_MenuItemCount: Integer; safecall;
    function GetMenuItem(aIndex: Integer): IMenuItem; safecall;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    function GetItemByText(const AText: WideString): IMenuItem; safecall;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    procedure ClearMenuItems; safecall;
    procedure DeleteChild(Index: Integer); safecall;
    property Caption: WideString read Get_Caption;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property MenuItemCount: Integer read Get_MenuItemCount;
  end;

// *********************************************************************//
// DispIntf:  IMenuBarDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}
// *********************************************************************//
  IMenuBarDisp = dispinterface
    ['{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}']
    property Caption: WideString readonly dispid 201;
    property Visible: WordBool dispid 202;
    property MenuItemCount: Integer readonly dispid 203;
    function GetMenuItem(aIndex: Integer): IMenuItem; dispid 204;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 205;
    function GetItemByText(const AText: WideString): IMenuItem; dispid 206;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 207;
    procedure ClearMenuItems; dispid 208;
    procedure DeleteChild(Index: Integer); dispid 209;
  end;

// *********************************************************************//
// Interface: IMenuItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E778343E-D2DF-4698-B57F-C5377B6E1845}
// *********************************************************************//
  IMenuItem = interface(IDispatch)
    ['{E778343E-D2DF-4698-B57F-C5377B6E1845}']
    function Get_Caption: WideString; safecall;
    function Get_Action: Integer; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_MenuItemCount: Integer; safecall;
    function GetMenuItem(aIndex: Integer): IMenuItem; safecall;
    function Get_Icon: Integer; safecall;
    procedure Set_Icon(Value: Integer); safecall;
    function Get_BeginGroup: WordBool; safecall;
    procedure Set_BeginGroup(Value: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_ItemType: MenuItemTypes; safecall;
    function Get_MenuItemID: WideString; safecall;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    function GetItemByText(const AText: WideString): IMenuItem; safecall;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    procedure ClearMenuItems; safecall;
    procedure SetItemAlertStatus(Level: Integer; const Hint: WideString); safecall;
    procedure SetItemNewItemCount(Count: Integer; const Hint: WideString); safecall;
    function Get_ImageIndex: Integer; safecall;
    procedure Set_ImageIndex(Value: Integer); safecall;
    function Get_AvailableMenuItemCount: Integer; safecall;
    function GetAvailableMenuItem(aIndex: Integer): IMenuItem; safecall;
    function Get_ScriptName: WideString; safecall;
    procedure Set_ScriptName(const Value: WideString); safecall;
    function Get_ScriptFunctionName: WideString; safecall;
    procedure Set_ScriptFunctionName(const Value: WideString); safecall;
    function AddMenuItem2(const MenuItem: IMenuItem; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    function CreateMenuItem2(const MenuCaption: WideString; const Description: WideString; 
                             const MenuItemID: WideString; ActionCommand: Integer; 
                             const ScriptName: WideString; const ScriptFunction: WideString; 
                             CreateOnly: WordBool; Index: Integer; BeginGroup: WordBool; 
                             ATag: Integer): IMenuItem; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    procedure Set_Action(Value: Integer); safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    procedure DeleteChild(Index: Integer); safecall;
    property Caption: WideString read Get_Caption;
    property Action: Integer read Get_Action;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property MenuItemCount: Integer read Get_MenuItemCount;
    property Icon: Integer read Get_Icon write Set_Icon;
    property BeginGroup: WordBool read Get_BeginGroup write Set_BeginGroup;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property ItemType: MenuItemTypes read Get_ItemType;
    property MenuItemID: WideString read Get_MenuItemID;
    property ImageIndex: Integer read Get_ImageIndex write Set_ImageIndex;
    property AvailableMenuItemCount: Integer read Get_AvailableMenuItemCount;
    property ScriptName: WideString read Get_ScriptName write Set_ScriptName;
    property ScriptFunctionName: WideString read Get_ScriptFunctionName write Set_ScriptFunctionName;
    property Tag: Integer read Get_Tag write Set_Tag;
  end;

// *********************************************************************//
// DispIntf:  IMenuItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E778343E-D2DF-4698-B57F-C5377B6E1845}
// *********************************************************************//
  IMenuItemDisp = dispinterface
    ['{E778343E-D2DF-4698-B57F-C5377B6E1845}']
    property Caption: WideString readonly dispid 201;
    property Action: Integer readonly dispid 202;
    property Enabled: WordBool dispid 203;
    property MenuItemCount: Integer readonly dispid 204;
    function GetMenuItem(aIndex: Integer): IMenuItem; dispid 205;
    property Icon: Integer dispid 207;
    property BeginGroup: WordBool dispid 208;
    property Visible: WordBool dispid 209;
    property ItemType: MenuItemTypes readonly dispid 206;
    property MenuItemID: WideString readonly dispid 210;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 211;
    function GetItemByText(const AText: WideString): IMenuItem; dispid 212;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 213;
    procedure ClearMenuItems; dispid 214;
    procedure SetItemAlertStatus(Level: Integer; const Hint: WideString); dispid 215;
    procedure SetItemNewItemCount(Count: Integer; const Hint: WideString); dispid 216;
    property ImageIndex: Integer dispid 217;
    property AvailableMenuItemCount: Integer readonly dispid 218;
    function GetAvailableMenuItem(aIndex: Integer): IMenuItem; dispid 219;
    property ScriptName: WideString dispid 220;
    property ScriptFunctionName: WideString dispid 221;
    function AddMenuItem2(const MenuItem: IMenuItem; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 222;
    function CreateMenuItem2(const MenuCaption: WideString; const Description: WideString; 
                             const MenuItemID: WideString; ActionCommand: Integer; 
                             const ScriptName: WideString; const ScriptFunction: WideString; 
                             CreateOnly: WordBool; Index: Integer; BeginGroup: WordBool; 
                             ATag: Integer): IMenuItem; dispid 223;
    procedure Set_Caption(const Value: WideString); dispid 224;
    procedure Set_Action(Value: Integer); dispid 225;
    property Tag: Integer dispid 226;
    procedure DeleteChild(Index: Integer); dispid 227;
  end;

// *********************************************************************//
// Interface: ILoodsmanService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67927DBE-4A12-4785-9D36-F72E7299884B}
// *********************************************************************//
  ILoodsmanService = interface(IDispatch)
    ['{67927DBE-4A12-4785-9D36-F72E7299884B}']
    procedure OnBindService(const OwnerApplication: IDispatch); safecall;
    procedure OnUnbindService; safecall;
    procedure OnOpenDatabase(const Connection: IDispatch; const WBSSystem: IDispatch; 
                             const DataBase: IDataBase); safecall;
    procedure OnCloseDatabase(const DataBase: IDataBase); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67927DBE-4A12-4785-9D36-F72E7299884B}
// *********************************************************************//
  ILoodsmanServiceDisp = dispinterface
    ['{67927DBE-4A12-4785-9D36-F72E7299884B}']
    procedure OnBindService(const OwnerApplication: IDispatch); dispid 203;
    procedure OnUnbindService; dispid 204;
    procedure OnOpenDatabase(const Connection: IDispatch; const WBSSystem: IDispatch; 
                             const DataBase: IDataBase); dispid 205;
    procedure OnCloseDatabase(const DataBase: IDataBase); dispid 206;
  end;

// *********************************************************************//
// Interface: IServiceInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8409E9CD-B499-4C91-B06F-95741911B226}
// *********************************************************************//
  IServiceInfo = interface(IDispatch)
    ['{8409E9CD-B499-4C91-B06F-95741911B226}']
    function GetServiceName: WideString; safecall;
    function GetServiceDescription: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IServiceInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8409E9CD-B499-4C91-B06F-95741911B226}
// *********************************************************************//
  IServiceInfoDisp = dispinterface
    ['{8409E9CD-B499-4C91-B06F-95741911B226}']
    function GetServiceName: WideString; dispid 201;
    function GetServiceDescription: WideString; dispid 202;
  end;

// *********************************************************************//
// Interface: ILoodsmanClientUtils
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}
// *********************************************************************//
  ILoodsmanClientUtils = interface(IDispatch)
    ['{7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}']
    function ShowObjectPropertiesDialog(ForObjects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function ShowCreateObjectDialog(const AParent: IPDMData; const ALinks: WideString; 
                                    AInverse: WordBool; const NotiSrc: WideString): Integer; safecall;
    function ShowCreateProjectDialog(const NotiSrc: WideString): Integer; safecall;
    function ShowCreateVersionDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; safecall;
    function ShowCreateCopyDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; safecall;
    function ShowCreateRouteDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function ShowCreateTaskDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function OpenObjects(Objects: OleVariant): WordBool; safecall;
    function CutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function CopyObjects(Objects: OleVariant): WordBool; safecall;
    function UnlockObject(const Obj: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function CheckoutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function DeleteObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function GetHyperLink(Objects: OleVariant; ToClipboard: WordBool): WideString; safecall;
    function GetContextMenu(ObjectCode: Integer): IMenuItem; safecall;
    function GetEnabledActions(Objects: OleVariant; const LinkName: WideString; Inverse: WordBool): WideString; safecall;
    function GetEnabledActionsForNoSelected: WideString; safecall;
    function GetFileName(const stFileName: WideString; const stStartPath: WideString): WideString; safecall;
    function CreateFileByTemplate(const ParentObject: IPDMObject2; const ChildObject: IPDMObject2; 
                                  out outMacrosFileName: WideString): WideString; safecall;
    function ProxyUseCaseExists(const FileName: WideString; const ChildType: WideString; 
                                const ParentType: WideString): WordBool; safecall;
    procedure OpenFileWithTool(const AFileName: WideString; const AFilePath: WideString; 
                               const ADocument: IDispatch; const ALink: IDispatch); safecall;
    procedure GetFileInfo(const AFileName: WideString; const AFilePath: WideString; 
                          const ADocument: IDispatch; const ALink: IDispatch; 
                          const NotiSrc: WideString); safecall;
    function ChangeObjectsType(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function ChangeObjectsState(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function ChangeQuantity(const Link: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function GetVersionHintParams: IVersionHintParams; safecall;
    function ShowSubscriptionDialog(AObjectID: Integer): WordBool; safecall;
    function ShowCreateBODialog(const AParent: IPDMData; const ALinks: WideString; 
                                AInverse: WordBool; const NotiSrc: WideString): Integer; safecall;
    function ShowSearchDialog(ParentHandle: OLE_HANDLE; const SearchCondition: WideString; 
                              const SearchContext: IPDMObject2; HelpContext: Integer): WideString; safecall;
    function GetPDMObjFromVariant(Obj: OleVariant; AIntfID: TGUID; const Connection: ISimpleAPI): IDispatch; safecall;
    function GetIsTreesMultiline: Integer; safecall;
    function GetTreesNodeFixedHeight: Integer; safecall;
    function CreateFileByIntegrator(const Link: IPDMLink2; UseCase: Integer; 
                                    const FullFileName: WideString): WordBool; safecall;
    function CreateBOSelector(const TypeName: WideString; const BOClassName: WideString): ILoodsmanBOSelector; safecall;
    function GetMainFormPosition: LooRect; safecall;
    function GetProfileFileName(const Key: WideString): WideString; safecall;
    function ShowSubscriptionDialogForMultiselect(const AObjectIDs: WideString): WordBool; safecall;
    function CreateObjectDialogParams: IObjectDialogParams; safecall;
    function ShowCreateObjectDialog2(const AParent: IPDMData; const Params: IObjectDialogParams): Integer; safecall;
    function ShowSearchDialogByCondition(aParentHandle: OLE_HANDLE; const aWindowTitle: WideString; 
                                         aCheckSelectedButton: WordBool; aHelpContext: Integer; 
                                         var aXMLSearchCondition: WideString; 
                                         var aSearchResultObjectsIDs: WideString): Integer; safecall;
    function ShowSimpleSearchDialogByType(aParentHandle: OLE_HANDLE; aHelpContext: Integer; 
                                          var aTypeName: WideString; 
                                          var aSearchResultObjectsIDs: WideString): Integer; safecall;
    function CreateLocateParams: ILocateParams; safecall;
    function ShowCreateObjectDialog3(AParent: OleVariant; const Params: IObjectDialogParams): Integer; safecall;
    procedure AddObjectsToFavorites(const aObjectsIDs: WideString); safecall;
    function UnlockObjectEx(Objects: OleVariant; aUnlockMode: UnlockObjectMode; 
                            const NotiSrc: WideString): WordBool; safecall;
    function SelectedTypesDocumentsWindow(aSelectedTypesMode: TSelectedTypesMode; 
                                          aSelectedParams: Integer; const aWindowTitle: WideString; 
                                          aHelpContext: Integer; 
                                          var aSelectedTypesCollection: IBasePDMCollection): WordBool; safecall;
    function RequiredAttributesProc: IRequiredAttributesProc; safecall;
    function ShowCreateObjectDialogWithoutParent(const ALinks: WideString; AInverse: WordBool; 
                                                 const NotiSrc: WideString; 
                                                 const AConnection: ISimpleAPI2): Integer; safecall;
    function OpenSearch(const SearchCondition: WideString): WordBool; safecall;
    function BOProviderNetSession: IDispatch; safecall;
    function OpenLinkedStructuresWindow(const aSourceObject: IPDMObject2; 
                                        const aSourceLayout: WideString; aSourceEffMode: WordBool; 
                                        aSourceEffEndVersionId: Integer; aSourceEffRuleId: Integer; 
                                        aSourceEffQuickParams: OleVariant; 
                                        aSourceEffConfigurationId: Integer; 
                                        const aTargetObject: IPDMObject2; 
                                        const aTargetLayout: WideString; aTargetEffMode: WordBool; 
                                        aTargetEffEndVersionId: Integer; aTargetEffRuleId: Integer; 
                                        aTargetEffQuickParams: OleVariant; 
                                        aTargetEffConfigurationId: Integer; 
                                        aWindowDirection: TWindowDirection; 
                                        const ACheckOut: WideString; aCreateNewWindow: WordBool): IDBWindow; safecall;
    function OpenObjectsWithConfiguration(aConfigurationObjectId: Integer; 
                                          const aRootObjectsIDs: WideString; 
                                          const ACheckOut: WideString; aCreateNewWindow: WordBool): IDBWindow; safecall;
    function ShowConfigurationCreateObjectDialog: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanClientUtilsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}
// *********************************************************************//
  ILoodsmanClientUtilsDisp = dispinterface
    ['{7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}']
    function ShowObjectPropertiesDialog(ForObjects: OleVariant; const NotiSrc: WideString): WordBool; dispid 201;
    function ShowCreateObjectDialog(const AParent: IPDMData; const ALinks: WideString; 
                                    AInverse: WordBool; const NotiSrc: WideString): Integer; dispid 202;
    function ShowCreateProjectDialog(const NotiSrc: WideString): Integer; dispid 203;
    function ShowCreateVersionDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; dispid 204;
    function ShowCreateCopyDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; dispid 205;
    function ShowCreateRouteDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; dispid 206;
    function ShowCreateTaskDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; dispid 207;
    function OpenObjects(Objects: OleVariant): WordBool; dispid 208;
    function CutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 209;
    function CopyObjects(Objects: OleVariant): WordBool; dispid 210;
    function UnlockObject(const Obj: IPDMData; const NotiSrc: WideString): WordBool; dispid 211;
    function CheckoutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 212;
    function DeleteObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 213;
    function GetHyperLink(Objects: OleVariant; ToClipboard: WordBool): WideString; dispid 214;
    function GetContextMenu(ObjectCode: Integer): IMenuItem; dispid 215;
    function GetEnabledActions(Objects: OleVariant; const LinkName: WideString; Inverse: WordBool): WideString; dispid 216;
    function GetEnabledActionsForNoSelected: WideString; dispid 217;
    function GetFileName(const stFileName: WideString; const stStartPath: WideString): WideString; dispid 218;
    function CreateFileByTemplate(const ParentObject: IPDMObject2; const ChildObject: IPDMObject2; 
                                  out outMacrosFileName: WideString): WideString; dispid 219;
    function ProxyUseCaseExists(const FileName: WideString; const ChildType: WideString; 
                                const ParentType: WideString): WordBool; dispid 220;
    procedure OpenFileWithTool(const AFileName: WideString; const AFilePath: WideString; 
                               const ADocument: IDispatch; const ALink: IDispatch); dispid 221;
    procedure GetFileInfo(const AFileName: WideString; const AFilePath: WideString; 
                          const ADocument: IDispatch; const ALink: IDispatch; 
                          const NotiSrc: WideString); dispid 222;
    function ChangeObjectsType(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 223;
    function ChangeObjectsState(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 240;
    function ChangeQuantity(const Link: IPDMData; const NotiSrc: WideString): WordBool; dispid 241;
    function GetVersionHintParams: IVersionHintParams; dispid 242;
    function ShowSubscriptionDialog(AObjectID: Integer): WordBool; dispid 243;
    function ShowCreateBODialog(const AParent: IPDMData; const ALinks: WideString; 
                                AInverse: WordBool; const NotiSrc: WideString): Integer; dispid 244;
    function ShowSearchDialog(ParentHandle: OLE_HANDLE; const SearchCondition: WideString; 
                              const SearchContext: IPDMObject2; HelpContext: Integer): WideString; dispid 245;
    function GetPDMObjFromVariant(Obj: OleVariant; AIntfID: {NOT_OLEAUTO(TGUID)}OleVariant; 
                                  const Connection: ISimpleAPI): IDispatch; dispid 246;
    function GetIsTreesMultiline: Integer; dispid 247;
    function GetTreesNodeFixedHeight: Integer; dispid 248;
    function CreateFileByIntegrator(const Link: IPDMLink2; UseCase: Integer; 
                                    const FullFileName: WideString): WordBool; dispid 249;
    function CreateBOSelector(const TypeName: WideString; const BOClassName: WideString): ILoodsmanBOSelector; dispid 250;
    function GetMainFormPosition: {NOT_OLEAUTO(LooRect)}OleVariant; dispid 251;
    function GetProfileFileName(const Key: WideString): WideString; dispid 252;
    function ShowSubscriptionDialogForMultiselect(const AObjectIDs: WideString): WordBool; dispid 253;
    function CreateObjectDialogParams: IObjectDialogParams; dispid 254;
    function ShowCreateObjectDialog2(const AParent: IPDMData; const Params: IObjectDialogParams): Integer; dispid 255;
    function ShowSearchDialogByCondition(aParentHandle: OLE_HANDLE; const aWindowTitle: WideString; 
                                         aCheckSelectedButton: WordBool; aHelpContext: Integer; 
                                         var aXMLSearchCondition: WideString; 
                                         var aSearchResultObjectsIDs: WideString): Integer; dispid 256;
    function ShowSimpleSearchDialogByType(aParentHandle: OLE_HANDLE; aHelpContext: Integer; 
                                          var aTypeName: WideString; 
                                          var aSearchResultObjectsIDs: WideString): Integer; dispid 257;
    function CreateLocateParams: ILocateParams; dispid 258;
    function ShowCreateObjectDialog3(AParent: OleVariant; const Params: IObjectDialogParams): Integer; dispid 260;
    procedure AddObjectsToFavorites(const aObjectsIDs: WideString); dispid 261;
    function UnlockObjectEx(Objects: OleVariant; aUnlockMode: UnlockObjectMode; 
                            const NotiSrc: WideString): WordBool; dispid 264;
    function SelectedTypesDocumentsWindow(aSelectedTypesMode: TSelectedTypesMode; 
                                          aSelectedParams: Integer; const aWindowTitle: WideString; 
                                          aHelpContext: Integer; 
                                          var aSelectedTypesCollection: IBasePDMCollection): WordBool; dispid 265;
    function RequiredAttributesProc: IRequiredAttributesProc; dispid 266;
    function ShowCreateObjectDialogWithoutParent(const ALinks: WideString; AInverse: WordBool; 
                                                 const NotiSrc: WideString; 
                                                 const AConnection: ISimpleAPI2): Integer; dispid 224;
    function OpenSearch(const SearchCondition: WideString): WordBool; dispid 225;
    function BOProviderNetSession: IDispatch; dispid 226;
    function OpenLinkedStructuresWindow(const aSourceObject: IPDMObject2; 
                                        const aSourceLayout: WideString; aSourceEffMode: WordBool; 
                                        aSourceEffEndVersionId: Integer; aSourceEffRuleId: Integer; 
                                        aSourceEffQuickParams: OleVariant; 
                                        aSourceEffConfigurationId: Integer; 
                                        const aTargetObject: IPDMObject2; 
                                        const aTargetLayout: WideString; aTargetEffMode: WordBool; 
                                        aTargetEffEndVersionId: Integer; aTargetEffRuleId: Integer; 
                                        aTargetEffQuickParams: OleVariant; 
                                        aTargetEffConfigurationId: Integer; 
                                        aWindowDirection: TWindowDirection; 
                                        const ACheckOut: WideString; aCreateNewWindow: WordBool): IDBWindow; dispid 227;
    function OpenObjectsWithConfiguration(aConfigurationObjectId: Integer; 
                                          const aRootObjectsIDs: WideString; 
                                          const ACheckOut: WideString; aCreateNewWindow: WordBool): IDBWindow; dispid 228;
    function ShowConfigurationCreateObjectDialog: Integer; dispid 229;
  end;

// *********************************************************************//
// Interface: ILoodsmanDataBaseUtils
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B1ADD83-D2B5-4A79-93D0-69D54071EE9A}
// *********************************************************************//
  ILoodsmanDataBaseUtils = interface(IDispatch)
    ['{9B1ADD83-D2B5-4A79-93D0-69D54071EE9A}']
    function ANSIFieldNameToUNICODE(aDataSetData: OleVariant): OleVariant; safecall;
    function UNICODEFieldNameToANSI(aDataSetData: OleVariant): OleVariant; safecall;
    function GetLayoutList(aObjectCode: Integer): ILayoutList; safecall;
    function GetStructureComparsionRulesList: IStructureComparsionRulesList; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanDataBaseUtilsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B1ADD83-D2B5-4A79-93D0-69D54071EE9A}
// *********************************************************************//
  ILoodsmanDataBaseUtilsDisp = dispinterface
    ['{9B1ADD83-D2B5-4A79-93D0-69D54071EE9A}']
    function ANSIFieldNameToUNICODE(aDataSetData: OleVariant): OleVariant; dispid 201;
    function UNICODEFieldNameToANSI(aDataSetData: OleVariant): OleVariant; dispid 202;
    function GetLayoutList(aObjectCode: Integer): ILayoutList; dispid 203;
    function GetStructureComparsionRulesList: IStructureComparsionRulesList; dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMClipboard
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}
// *********************************************************************//
  IPDMClipboard = interface(IDispatch)
    ['{CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}']
    procedure AddObject(const PDMObject: IPDMObject); safecall;
    procedure AddObjectByID(ID: Integer); safecall;
    procedure Clear; safecall;
    function HasObjects: WordBool; safecall;
    procedure ToClipboard; safecall;
    function FromClipboard: WordBool; safecall;
    function Get_ObjectCount: Integer; safecall;
    function Get_ObjectID(Index: Integer): Integer; safecall;
    function Get_DBName: WideString; safecall;
    procedure Set_DBName(const Value: WideString); safecall;
    procedure AddItem(aObjectCode: Integer; const AValue: WideString); safecall;
    function HasItem(aObjectCode: Integer): WordBool; safecall;
    function Get_ItemCount(aObjectCode: Integer): Integer; safecall;
    function Get_Items(aObjectCode: Integer; aIndex: Integer): WideString; safecall;
    property ObjectCount: Integer read Get_ObjectCount;
    property ObjectID[Index: Integer]: Integer read Get_ObjectID;
    property DBName: WideString read Get_DBName write Set_DBName;
    property ItemCount[aObjectCode: Integer]: Integer read Get_ItemCount;
    property Items[aObjectCode: Integer; aIndex: Integer]: WideString read Get_Items;
  end;

// *********************************************************************//
// DispIntf:  IPDMClipboardDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}
// *********************************************************************//
  IPDMClipboardDisp = dispinterface
    ['{CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}']
    procedure AddObject(const PDMObject: IPDMObject); dispid 201;
    procedure AddObjectByID(ID: Integer); dispid 202;
    procedure Clear; dispid 203;
    function HasObjects: WordBool; dispid 204;
    procedure ToClipboard; dispid 205;
    function FromClipboard: WordBool; dispid 206;
    property ObjectCount: Integer readonly dispid 207;
    property ObjectID[Index: Integer]: Integer readonly dispid 208;
    property DBName: WideString dispid 209;
    procedure AddItem(aObjectCode: Integer; const AValue: WideString); dispid 210;
    function HasItem(aObjectCode: Integer): WordBool; dispid 211;
    property ItemCount[aObjectCode: Integer]: Integer readonly dispid 212;
    property Items[aObjectCode: Integer; aIndex: Integer]: WideString readonly dispid 213;
  end;

// *********************************************************************//
// Interface: IVersionHintParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}
// *********************************************************************//
  IVersionHintParams = interface(IDispatch)
    ['{825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}']
    function GetValue(AField: VersionHintFields): WordBool; safecall;
    procedure SetValue(AField: VersionHintFields; Value: WordBool); safecall;
    function ParamCount: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IVersionHintParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}
// *********************************************************************//
  IVersionHintParamsDisp = dispinterface
    ['{825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}']
    function GetValue(AField: VersionHintFields): WordBool; dispid 201;
    procedure SetValue(AField: VersionHintFields; Value: WordBool); dispid 202;
    function ParamCount: Integer; dispid 203;
  end;

// *********************************************************************//
// Interface: ICustomMenuItemDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {25EC029A-2DFC-4BEB-AAAA-A94D7E39FDF2}
// *********************************************************************//
  ICustomMenuItemDescription = interface(IDispatch)
    ['{25EC029A-2DFC-4BEB-AAAA-A94D7E39FDF2}']
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_MenuItemCount: Integer; safecall;
    function Get_MenuItem(aIndex: Integer): ICustomMenuItemDescription; safecall;
    function AddMenuItem(const MenuItem: ICustomMenuItemDescription; Index: Integer): Integer; safecall;
    function AddDivider(Index: Integer): Integer; safecall;
    procedure ClearMenuItems; safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    function Get_ItemType: MenuItemTypes; safecall;
    function Get_AllowCustomizing: WordBool; safecall;
    procedure Set_AllowCustomizing(Value: WordBool); safecall;
    function Get_CopyBehavior: CopyBehaviorType; safecall;
    function Clone: ICustomMenuItemDescription; safecall;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Name: WideString read Get_Name write Set_Name;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property MenuItemCount: Integer read Get_MenuItemCount;
    property MenuItem[aIndex: Integer]: ICustomMenuItemDescription read Get_MenuItem;
    property Tag: Integer read Get_Tag write Set_Tag;
    property ItemType: MenuItemTypes read Get_ItemType;
    property AllowCustomizing: WordBool read Get_AllowCustomizing write Set_AllowCustomizing;
    property CopyBehavior: CopyBehaviorType read Get_CopyBehavior;
  end;

// *********************************************************************//
// DispIntf:  ICustomMenuItemDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {25EC029A-2DFC-4BEB-AAAA-A94D7E39FDF2}
// *********************************************************************//
  ICustomMenuItemDescriptionDisp = dispinterface
    ['{25EC029A-2DFC-4BEB-AAAA-A94D7E39FDF2}']
    property Caption: WideString dispid 201;
    property Name: WideString dispid 202;
    property Visible: WordBool dispid 203;
    property MenuItemCount: Integer readonly dispid 204;
    property MenuItem[aIndex: Integer]: ICustomMenuItemDescription readonly dispid 205;
    function AddMenuItem(const MenuItem: ICustomMenuItemDescription; Index: Integer): Integer; dispid 206;
    function AddDivider(Index: Integer): Integer; dispid 207;
    procedure ClearMenuItems; dispid 208;
    property Tag: Integer dispid 209;
    property ItemType: MenuItemTypes readonly dispid 210;
    property AllowCustomizing: WordBool dispid 211;
    property CopyBehavior: CopyBehaviorType readonly dispid 212;
    function Clone: ICustomMenuItemDescription; dispid 213;
  end;

// *********************************************************************//
// Interface: IMenuItemDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E6890283-7F26-4376-9562-119493844754}
// *********************************************************************//
  IMenuItemDescription = interface(ICustomMenuItemDescription)
    ['{E6890283-7F26-4376-9562-119493844754}']
    function Get_Action: Integer; safecall;
    procedure Set_Action(Value: Integer); safecall;
    function Get_ExternalCommand: WideString; safecall;
    procedure Set_ExternalCommand(const Value: WideString); safecall;
    function Get_PluginName: WideString; safecall;
    procedure Set_PluginName(const Value: WideString); safecall;
    function Get_ScriptName: WideString; safecall;
    procedure Set_ScriptName(const Value: WideString); safecall;
    function Get_AddonGuid: WideString; safecall;
    procedure Set_AddonGuid(const Value: WideString); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_ImageIndex: Integer; safecall;
    procedure Set_ImageIndex(Value: Integer); safecall;
    function Get_BitmapHandle: Int64; safecall;
    procedure Set_BitmapHandle(Value: Int64); safecall;
    function Get_TransparentColor: Integer; safecall;
    procedure Set_TransparentColor(Value: Integer); safecall;
    function Get_ShortCut: Integer; safecall;
    procedure Set_ShortCut(Value: Integer); safecall;
    function Get_ViewStyle: MenuItemViewStyle; safecall;
    procedure Set_ViewStyle(Value: MenuItemViewStyle); safecall;
    property Action: Integer read Get_Action write Set_Action;
    property ExternalCommand: WideString read Get_ExternalCommand write Set_ExternalCommand;
    property PluginName: WideString read Get_PluginName write Set_PluginName;
    property ScriptName: WideString read Get_ScriptName write Set_ScriptName;
    property AddonGuid: WideString read Get_AddonGuid write Set_AddonGuid;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property ImageIndex: Integer read Get_ImageIndex write Set_ImageIndex;
    property BitmapHandle: Int64 read Get_BitmapHandle write Set_BitmapHandle;
    property TransparentColor: Integer read Get_TransparentColor write Set_TransparentColor;
    property ShortCut: Integer read Get_ShortCut write Set_ShortCut;
    property ViewStyle: MenuItemViewStyle read Get_ViewStyle write Set_ViewStyle;
  end;

// *********************************************************************//
// DispIntf:  IMenuItemDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E6890283-7F26-4376-9562-119493844754}
// *********************************************************************//
  IMenuItemDescriptionDisp = dispinterface
    ['{E6890283-7F26-4376-9562-119493844754}']
    property Action: Integer dispid 240;
    property ExternalCommand: WideString dispid 241;
    property PluginName: WideString dispid 242;
    property ScriptName: WideString dispid 243;
    property AddonGuid: WideString dispid 244;
    property Enabled: WordBool dispid 245;
    property ImageIndex: Integer dispid 246;
    property BitmapHandle: Int64 dispid 247;
    property TransparentColor: Integer dispid 248;
    property ShortCut: Integer dispid 249;
    property ViewStyle: MenuItemViewStyle dispid 250;
    property Caption: WideString dispid 201;
    property Name: WideString dispid 202;
    property Visible: WordBool dispid 203;
    property MenuItemCount: Integer readonly dispid 204;
    property MenuItem[aIndex: Integer]: ICustomMenuItemDescription readonly dispid 205;
    function AddMenuItem(const MenuItem: ICustomMenuItemDescription; Index: Integer): Integer; dispid 206;
    function AddDivider(Index: Integer): Integer; dispid 207;
    procedure ClearMenuItems; dispid 208;
    property Tag: Integer dispid 209;
    property ItemType: MenuItemTypes readonly dispid 210;
    property AllowCustomizing: WordBool dispid 211;
    property CopyBehavior: CopyBehaviorType readonly dispid 212;
    function Clone: ICustomMenuItemDescription; dispid 213;
  end;

// *********************************************************************//
// Interface: IMenuBarDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {18265186-75E8-492F-B9C2-EEDE05634743}
// *********************************************************************//
  IMenuBarDescription = interface(ICustomMenuItemDescription)
    ['{18265186-75E8-492F-B9C2-EEDE05634743}']
    function Get_OneOnRow: WordBool; safecall;
    procedure Set_OneOnRow(Value: WordBool); safecall;
    function Get_DockedLeft: Integer; safecall;
    procedure Set_DockedLeft(Value: Integer); safecall;
    function Get_DockedTop: Integer; safecall;
    procedure Set_DockedTop(Value: Integer); safecall;
    function Get_Row: Integer; safecall;
    procedure Set_Row(Value: Integer); safecall;
    function Get_FloatLeft: Integer; safecall;
    procedure Set_FloatLeft(Value: Integer); safecall;
    function Get_FloatTop: Integer; safecall;
    procedure Set_FloatTop(Value: Integer); safecall;
    function Get_FloatClientWidth: Integer; safecall;
    procedure Set_FloatClientWidth(Value: Integer); safecall;
    function Get_FloatClientHeight: Integer; safecall;
    procedure Set_FloatClientHeight(Value: Integer); safecall;
    function Get_DockingStyle: Integer; safecall;
    procedure Set_DockingStyle(Value: Integer); safecall;
    property OneOnRow: WordBool read Get_OneOnRow write Set_OneOnRow;
    property DockedLeft: Integer read Get_DockedLeft write Set_DockedLeft;
    property DockedTop: Integer read Get_DockedTop write Set_DockedTop;
    property Row: Integer read Get_Row write Set_Row;
    property FloatLeft: Integer read Get_FloatLeft write Set_FloatLeft;
    property FloatTop: Integer read Get_FloatTop write Set_FloatTop;
    property FloatClientWidth: Integer read Get_FloatClientWidth write Set_FloatClientWidth;
    property FloatClientHeight: Integer read Get_FloatClientHeight write Set_FloatClientHeight;
    property DockingStyle: Integer read Get_DockingStyle write Set_DockingStyle;
  end;

// *********************************************************************//
// DispIntf:  IMenuBarDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {18265186-75E8-492F-B9C2-EEDE05634743}
// *********************************************************************//
  IMenuBarDescriptionDisp = dispinterface
    ['{18265186-75E8-492F-B9C2-EEDE05634743}']
    property OneOnRow: WordBool dispid 240;
    property DockedLeft: Integer dispid 241;
    property DockedTop: Integer dispid 242;
    property Row: Integer dispid 243;
    property FloatLeft: Integer dispid 244;
    property FloatTop: Integer dispid 245;
    property FloatClientWidth: Integer dispid 246;
    property FloatClientHeight: Integer dispid 247;
    property DockingStyle: Integer dispid 248;
    property Caption: WideString dispid 201;
    property Name: WideString dispid 202;
    property Visible: WordBool dispid 203;
    property MenuItemCount: Integer readonly dispid 204;
    property MenuItem[aIndex: Integer]: ICustomMenuItemDescription readonly dispid 205;
    function AddMenuItem(const MenuItem: ICustomMenuItemDescription; Index: Integer): Integer; dispid 206;
    function AddDivider(Index: Integer): Integer; dispid 207;
    procedure ClearMenuItems; dispid 208;
    property Tag: Integer dispid 209;
    property ItemType: MenuItemTypes readonly dispid 210;
    property AllowCustomizing: WordBool dispid 211;
    property CopyBehavior: CopyBehaviorType readonly dispid 212;
    function Clone: ICustomMenuItemDescription; dispid 213;
  end;

// *********************************************************************//
// Interface: IMenuItemDescriptionFactory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6454266E-AD67-4094-B231-A97A9685F5A8}
// *********************************************************************//
  IMenuItemDescriptionFactory = interface(IDispatch)
    ['{6454266E-AD67-4094-B231-A97A9685F5A8}']
    function CreateMenuDescriptor: IMenuDescription; safecall;
    function CreateMenuSubItemDescriptor(const MenuCaption: WideString; 
                                         const MenuItemName: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreateMenuItemDescriptor(const MenuCaption: WideString; 
                                      const MenuItemName: WideString; ActionCommand: Integer; 
                                      ATag: Integer): IMenuItemDescription; safecall;
    function CreateScriptMenuItemDescriptor(const MenuCaption: WideString; 
                                            const MenuName: WideString; 
                                            const ScriptName: WideString; 
                                            const ScriptFunction: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreatePluginMenuItemDescriptor(const MenuCaption: WideString; 
                                            const MenuName: WideString; 
                                            const PluginPath: WideString; 
                                            const PluginCommand: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreateServiceMenuItemDescriptor(const MenuCaption: WideString; 
                                             const MenuName: WideString; 
                                             const ServiceGuid: WideString; 
                                             const ServiceFunction: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreateMenuBarDescriptor(const BarCaption: WideString; const BarName: WideString): IMenuBarDescription; safecall;
    function Get_CopyBehavior: CopyBehaviorType; safecall;
    procedure Set_CopyBehavior(Value: CopyBehaviorType); safecall;
    property CopyBehavior: CopyBehaviorType read Get_CopyBehavior write Set_CopyBehavior;
  end;

// *********************************************************************//
// DispIntf:  IMenuItemDescriptionFactoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6454266E-AD67-4094-B231-A97A9685F5A8}
// *********************************************************************//
  IMenuItemDescriptionFactoryDisp = dispinterface
    ['{6454266E-AD67-4094-B231-A97A9685F5A8}']
    function CreateMenuDescriptor: IMenuDescription; dispid 201;
    function CreateMenuSubItemDescriptor(const MenuCaption: WideString; 
                                         const MenuItemName: WideString; ATag: Integer): IMenuItemDescription; dispid 202;
    function CreateMenuItemDescriptor(const MenuCaption: WideString; 
                                      const MenuItemName: WideString; ActionCommand: Integer; 
                                      ATag: Integer): IMenuItemDescription; dispid 203;
    function CreateScriptMenuItemDescriptor(const MenuCaption: WideString; 
                                            const MenuName: WideString; 
                                            const ScriptName: WideString; 
                                            const ScriptFunction: WideString; ATag: Integer): IMenuItemDescription; dispid 204;
    function CreatePluginMenuItemDescriptor(const MenuCaption: WideString; 
                                            const MenuName: WideString; 
                                            const PluginPath: WideString; 
                                            const PluginCommand: WideString; ATag: Integer): IMenuItemDescription; dispid 205;
    function CreateServiceMenuItemDescriptor(const MenuCaption: WideString; 
                                             const MenuName: WideString; 
                                             const ServiceGuid: WideString; 
                                             const ServiceFunction: WideString; ATag: Integer): IMenuItemDescription; dispid 206;
    function CreateMenuBarDescriptor(const BarCaption: WideString; const BarName: WideString): IMenuBarDescription; dispid 207;
    property CopyBehavior: CopyBehaviorType dispid 208;
  end;

// *********************************************************************//
// Interface: IMenuDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F79FB98-6247-4A4E-9F71-E12CBEE0D4CE}
// *********************************************************************//
  IMenuDescription = interface(ICustomMenuItemDescription)
    ['{7F79FB98-6247-4A4E-9F71-E12CBEE0D4CE}']
    function Get_ShowRecentItemsFirst: WordBool; safecall;
    procedure Set_ShowRecentItemsFirst(Value: WordBool); safecall;
    function Get_ShowFullMenusAfterDelay: WordBool; safecall;
    procedure Set_ShowFullMenusAfterDelay(Value: WordBool); safecall;
    function Get_LargeIcons: WordBool; safecall;
    procedure Set_LargeIcons(Value: WordBool); safecall;
    function Get_MenuAnimations: Integer; safecall;
    procedure Set_MenuAnimations(Value: Integer); safecall;
    function Get_ShowHint: WordBool; safecall;
    procedure Set_ShowHint(Value: WordBool); safecall;
    function Get_ShowShortCutInHint: WordBool; safecall;
    procedure Set_ShowShortCutInHint(Value: WordBool); safecall;
    property ShowRecentItemsFirst: WordBool read Get_ShowRecentItemsFirst write Set_ShowRecentItemsFirst;
    property ShowFullMenusAfterDelay: WordBool read Get_ShowFullMenusAfterDelay write Set_ShowFullMenusAfterDelay;
    property LargeIcons: WordBool read Get_LargeIcons write Set_LargeIcons;
    property MenuAnimations: Integer read Get_MenuAnimations write Set_MenuAnimations;
    property ShowHint: WordBool read Get_ShowHint write Set_ShowHint;
    property ShowShortCutInHint: WordBool read Get_ShowShortCutInHint write Set_ShowShortCutInHint;
  end;

// *********************************************************************//
// DispIntf:  IMenuDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F79FB98-6247-4A4E-9F71-E12CBEE0D4CE}
// *********************************************************************//
  IMenuDescriptionDisp = dispinterface
    ['{7F79FB98-6247-4A4E-9F71-E12CBEE0D4CE}']
    property ShowRecentItemsFirst: WordBool dispid 240;
    property ShowFullMenusAfterDelay: WordBool dispid 241;
    property LargeIcons: WordBool dispid 242;
    property MenuAnimations: Integer dispid 243;
    property ShowHint: WordBool dispid 244;
    property ShowShortCutInHint: WordBool dispid 245;
    property Caption: WideString dispid 201;
    property Name: WideString dispid 202;
    property Visible: WordBool dispid 203;
    property MenuItemCount: Integer readonly dispid 204;
    property MenuItem[aIndex: Integer]: ICustomMenuItemDescription readonly dispid 205;
    function AddMenuItem(const MenuItem: ICustomMenuItemDescription; Index: Integer): Integer; dispid 206;
    function AddDivider(Index: Integer): Integer; dispid 207;
    procedure ClearMenuItems; dispid 208;
    property Tag: Integer dispid 209;
    property ItemType: MenuItemTypes readonly dispid 210;
    property AllowCustomizing: WordBool dispid 211;
    property CopyBehavior: CopyBehaviorType readonly dispid 212;
    function Clone: ICustomMenuItemDescription; dispid 213;
  end;

// *********************************************************************//
// Interface: ICreateDialogCall
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8E3D556-6060-4D76-8ED7-33D64B9A86B9}
// *********************************************************************//
  ICreateDialogCall = interface(IPluginCall)
    ['{F8E3D556-6060-4D76-8ED7-33D64B9A86B9}']
    function Get_PDMData: IPDMData; safecall;
    function Get_Links: WideString; safecall;
    function Get_LinksInverse: WordBool; safecall;
    function Get_AdditionalData: OleVariant; safecall;
    property PDMData: IPDMData read Get_PDMData;
    property Links: WideString read Get_Links;
    property LinksInverse: WordBool read Get_LinksInverse;
    property AdditionalData: OleVariant read Get_AdditionalData;
  end;

// *********************************************************************//
// DispIntf:  ICreateDialogCallDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8E3D556-6060-4D76-8ED7-33D64B9A86B9}
// *********************************************************************//
  ICreateDialogCallDisp = dispinterface
    ['{F8E3D556-6060-4D76-8ED7-33D64B9A86B9}']
    property PDMData: IPDMData readonly dispid 496;
    property Links: WideString readonly dispid 497;
    property LinksInverse: WordBool readonly dispid 498;
    property AdditionalData: OleVariant readonly dispid 499;
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant; dispid 1;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch; dispid 2;
    property DBName: WideString readonly dispid 3;
    property CheckOut: Integer readonly dispid 4;
    property AppHandle: OLE_HANDLE readonly dispid 5;
    property ClientHandle: OLE_HANDLE readonly dispid 6;
    property IdVersion: Integer readonly dispid 7;
    property stType: WideString readonly dispid 8;
    property stProduct: WideString readonly dispid 9;
    property stVersion: WideString readonly dispid 10;
    property IdParent: Integer readonly dispid 11;
    property stParentType: WideString readonly dispid 12;
    property stParentProduct: WideString readonly dispid 13;
    property stParentVersion: WideString readonly dispid 14;
    property IdLink: Integer readonly dispid 15;
    property SelectedParent: WordBool readonly dispid 16;
    property Selected: IPDMObject readonly dispid 201;
    property WFSelected: IWFObject readonly dispid 202;
    property AsyncTask: IDispatch readonly dispid 203;
    property MainHandle: OLE_HANDLE readonly dispid 204;
    property ServerName: WideString readonly dispid 205;
    property ParentObject: IPDMObject readonly dispid 206;
    property LinkName: WideString readonly dispid 207;
    property Content: IContent readonly dispid 208;
    property WBSSystem: IDispatch readonly dispid 209;
  end;

// *********************************************************************//
// Interface: IServiceProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E1BA0F9-5E7C-4500-B4E0-5D909388C3B9}
// *********************************************************************//
  IServiceProvider = interface(IDispatch)
    ['{1E1BA0F9-5E7C-4500-B4E0-5D909388C3B9}']
    function FindService(AIntfID: TGUID; BindedOnly: WordBool): IDispatch; safecall;
    function FindServiceByStrGuid(const AIntfID: WideString; BindedOnly: WordBool): IDispatch; safecall;
    function FindServiceByName(const AName: WideString; BindedOnly: WordBool): IDispatch; safecall;
  end;

// *********************************************************************//
// DispIntf:  IServiceProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E1BA0F9-5E7C-4500-B4E0-5D909388C3B9}
// *********************************************************************//
  IServiceProviderDisp = dispinterface
    ['{1E1BA0F9-5E7C-4500-B4E0-5D909388C3B9}']
    function FindService(AIntfID: {NOT_OLEAUTO(TGUID)}OleVariant; BindedOnly: WordBool): IDispatch; dispid 201;
    function FindServiceByStrGuid(const AIntfID: WideString; BindedOnly: WordBool): IDispatch; dispid 202;
    function FindServiceByName(const AName: WideString; BindedOnly: WordBool): IDispatch; dispid 203;
  end;

// *********************************************************************//
// Interface: IExternalService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A85272D-5C11-4071-9E10-A481F37811B3}
// *********************************************************************//
  IExternalService = interface(IDispatch)
    ['{4A85272D-5C11-4071-9E10-A481F37811B3}']
    function GetParams(Params: OleVariant): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IExternalServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A85272D-5C11-4071-9E10-A481F37811B3}
// *********************************************************************//
  IExternalServiceDisp = dispinterface
    ['{4A85272D-5C11-4071-9E10-A481F37811B3}']
    function GetParams(Params: OleVariant): OleVariant; dispid 201;
  end;

// *********************************************************************//
// Interface: ISelectionCallback
// Flags:     (320) Dual OleAutomation
// GUID:      {004FD75E-FB4D-4BD3-9F1E-99116423C8D2}
// *********************************************************************//
  ISelectionCallback = interface(IUnknown)
    ['{004FD75E-FB4D-4BD3-9F1E-99116423C8D2}']
    function OnGetSelectButtonEnabled(DATA: OleVariant): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISelectionCallbackDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {004FD75E-FB4D-4BD3-9F1E-99116423C8D2}
// *********************************************************************//
  ISelectionCallbackDisp = dispinterface
    ['{004FD75E-FB4D-4BD3-9F1E-99116423C8D2}']
    function OnGetSelectButtonEnabled(DATA: OleVariant): WordBool; dispid 201;
  end;

// *********************************************************************//
// Interface: IDBWindowState
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31F382D4-3BDB-4BB2-B4D0-3E94A1A73013}
// *********************************************************************//
  IDBWindowState = interface(IDispatch)
    ['{31F382D4-3BDB-4BB2-B4D0-3E94A1A73013}']
    function Get_Context: IDBContext; safecall;
    function Get_Location: WideString; safecall;
    procedure Set_Location(const Value: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Layout: WideString; safecall;
    procedure Set_Layout(const Value: WideString); safecall;
    function Get_LayoutFixed: WordBool; safecall;
    procedure Set_LayoutFixed(Value: WordBool); safecall;
    function Get_WindowKey: TGUID; safecall;
    function Get_CheckOut: WideString; safecall;
    property Context: IDBContext read Get_Context;
    property Location: WideString read Get_Location write Set_Location;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Layout: WideString read Get_Layout write Set_Layout;
    property LayoutFixed: WordBool read Get_LayoutFixed write Set_LayoutFixed;
    property WindowKey: TGUID read Get_WindowKey;
    property CheckOut: WideString read Get_CheckOut;
  end;

// *********************************************************************//
// DispIntf:  IDBWindowStateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31F382D4-3BDB-4BB2-B4D0-3E94A1A73013}
// *********************************************************************//
  IDBWindowStateDisp = dispinterface
    ['{31F382D4-3BDB-4BB2-B4D0-3E94A1A73013}']
    property Context: IDBContext readonly dispid 201;
    property Location: WideString dispid 202;
    property Caption: WideString dispid 203;
    property Layout: WideString dispid 204;
    property LayoutFixed: WordBool dispid 205;
    property WindowKey: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 206;
    property CheckOut: WideString readonly dispid 207;
  end;

// *********************************************************************//
// Interface: INotificationSender
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C0DC7374-8A30-4B38-BB1B-9DB0C95346E7}
// *********************************************************************//
  INotificationSender = interface(IDispatch)
    ['{C0DC7374-8A30-4B38-BB1B-9DB0C95346E7}']
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString; Lazy: WordBool; 
                               Flag: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  INotificationSenderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C0DC7374-8A30-4B38-BB1B-9DB0C95346E7}
// *********************************************************************//
  INotificationSenderDisp = dispinterface
    ['{C0DC7374-8A30-4B38-BB1B-9DB0C95346E7}']
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString; Lazy: WordBool; 
                               Flag: Integer); dispid 201;
  end;

// *********************************************************************//
// Interface: IObjectDialogFrame2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {869E1E7E-EA8E-4E13-8292-7FA4D6AB5AC3}
// *********************************************************************//
  IObjectDialogFrame2 = interface(IDispatch)
    ['{869E1E7E-EA8E-4E13-8292-7FA4D6AB5AC3}']
    procedure OnDialogFrameCreate2(const ObjectDialog: IObjectDialog2); safecall;
    procedure OnDialogFrameDestroy2; safecall;
    procedure SetDialogObjectAndLink(const DialogObject: IPDMObject2; const DialogLink: IPDMLink2); safecall;
    procedure OnChangeProduct; safecall;
    procedure OnDialogFrameDeactivate; safecall;
    procedure OnLoseFocus; safecall;
  end;

// *********************************************************************//
// DispIntf:  IObjectDialogFrame2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {869E1E7E-EA8E-4E13-8292-7FA4D6AB5AC3}
// *********************************************************************//
  IObjectDialogFrame2Disp = dispinterface
    ['{869E1E7E-EA8E-4E13-8292-7FA4D6AB5AC3}']
    procedure OnDialogFrameCreate2(const ObjectDialog: IObjectDialog2); dispid 203;
    procedure OnDialogFrameDestroy2; dispid 204;
    procedure SetDialogObjectAndLink(const DialogObject: IPDMObject2; const DialogLink: IPDMLink2); dispid 205;
    procedure OnChangeProduct; dispid 206;
    procedure OnDialogFrameDeactivate; dispid 207;
    procedure OnLoseFocus; dispid 208;
  end;

// *********************************************************************//
// Interface: IObjectDialog2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10B0FDA2-8408-4A3E-88EC-246F43B0994B}
// *********************************************************************//
  IObjectDialog2 = interface(IDispatch)
    ['{10B0FDA2-8408-4A3E-88EC-246F43B0994B}']
    function Get_Connection: ISimpleAPI2; safecall;
    function Get_OwnerApplication: ILoodsmanApplication; safecall;
    function Get_DialogObject: IPDMObject2; safecall;
    function Get_DialogLink: IPDMLink2; safecall;
    function ActivateView(ViewIndex: Integer): WordBool; safecall;
    procedure SetIntegratorParams(UseCase: Integer; const FullFileName: WideString); safecall;
    function Get_Width: Integer; safecall;
    procedure RunBeforeCreateDialogHandlers(Cause: Integer); safecall;
    procedure RunOnEditObjectPropertiesDialogHandlers(Cause: Integer); safecall;
    procedure RunOnEditAttrDialogHandlers(const AttrName: WideString; AttrOwnerKind: Integer); safecall;
    procedure RunOnEndEditTemplateDialogHandlers(const Template: ILooInputTemplate); safecall;
    function Get_DialogLinkEntry: IPDMLinkEntry; safecall;
    function Get_IsReadOnly: WordBool; safecall;
    property Connection: ISimpleAPI2 read Get_Connection;
    property OwnerApplication: ILoodsmanApplication read Get_OwnerApplication;
    property DialogObject: IPDMObject2 read Get_DialogObject;
    property DialogLink: IPDMLink2 read Get_DialogLink;
    property Width: Integer read Get_Width;
    property DialogLinkEntry: IPDMLinkEntry read Get_DialogLinkEntry;
    property IsReadOnly: WordBool read Get_IsReadOnly;
  end;

// *********************************************************************//
// DispIntf:  IObjectDialog2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10B0FDA2-8408-4A3E-88EC-246F43B0994B}
// *********************************************************************//
  IObjectDialog2Disp = dispinterface
    ['{10B0FDA2-8408-4A3E-88EC-246F43B0994B}']
    property Connection: ISimpleAPI2 readonly dispid 203;
    property OwnerApplication: ILoodsmanApplication readonly dispid 204;
    property DialogObject: IPDMObject2 readonly dispid 205;
    property DialogLink: IPDMLink2 readonly dispid 206;
    function ActivateView(ViewIndex: Integer): WordBool; dispid 207;
    procedure SetIntegratorParams(UseCase: Integer; const FullFileName: WideString); dispid 208;
    property Width: Integer readonly dispid 209;
    procedure RunBeforeCreateDialogHandlers(Cause: Integer); dispid 210;
    procedure RunOnEditObjectPropertiesDialogHandlers(Cause: Integer); dispid 211;
    procedure RunOnEditAttrDialogHandlers(const AttrName: WideString; AttrOwnerKind: Integer); dispid 212;
    procedure RunOnEndEditTemplateDialogHandlers(const Template: ILooInputTemplate); dispid 215;
    property DialogLinkEntry: IPDMLinkEntry readonly dispid 216;
    property IsReadOnly: WordBool readonly dispid 217;
  end;

// *********************************************************************//
// Interface: ILoodsmanBOSelector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67D43AC6-C555-4296-A99B-0A981AAC7425}
// *********************************************************************//
  ILoodsmanBOSelector = interface(IDispatch)
    ['{67D43AC6-C555-4296-A99B-0A981AAC7425}']
    function Select: WideString; safecall;
    function Locate(const Location: WideString): WordBool; safecall;
    function LocateAndSelect(const Location: WideString): WideString; safecall;
    function Get_OwnerHandle: OLE_HANDLE; safecall;
    procedure Set_OwnerHandle(Value: OLE_HANDLE); safecall;
    function Get_Modal: WordBool; safecall;
    procedure Set_Modal(Value: WordBool); safecall;
    function Get_TypeName: WideString; safecall;
    procedure Set_TypeName(const Value: WideString); safecall;
    function Get_BOClassName: WideString; safecall;
    procedure Set_BOClassName(const Value: WideString); safecall;
    function Get_BOSimpleProvider: OleVariant; safecall;
    property OwnerHandle: OLE_HANDLE read Get_OwnerHandle write Set_OwnerHandle;
    property Modal: WordBool read Get_Modal write Set_Modal;
    property TypeName: WideString read Get_TypeName write Set_TypeName;
    property BOClassName: WideString read Get_BOClassName write Set_BOClassName;
    property BOSimpleProvider: OleVariant read Get_BOSimpleProvider;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanBOSelectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67D43AC6-C555-4296-A99B-0A981AAC7425}
// *********************************************************************//
  ILoodsmanBOSelectorDisp = dispinterface
    ['{67D43AC6-C555-4296-A99B-0A981AAC7425}']
    function Select: WideString; dispid 201;
    function Locate(const Location: WideString): WordBool; dispid 202;
    function LocateAndSelect(const Location: WideString): WideString; dispid 203;
    property OwnerHandle: OLE_HANDLE dispid 204;
    property Modal: WordBool dispid 205;
    property TypeName: WideString dispid 206;
    property BOClassName: WideString dispid 207;
    property BOSimpleProvider: OleVariant readonly dispid 208;
  end;

// *********************************************************************//
// Interface: IApplicationMenuDescriptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8BBCF6A6-500C-4263-B83A-FCA9FD7EC3EA}
// *********************************************************************//
  IApplicationMenuDescriptions = interface(IDispatch)
    ['{8BBCF6A6-500C-4263-B83A-FCA9FD7EC3EA}']
    function GetMainMenuDescription: IMenuDescription; safecall;
    function GetFramePopupMenuDescription(const Frame: IFrameContainer): IMenuDescription; safecall;
    function GetMenuItemDescriptionByName(const Name: WideString): IMenuItemDescription; safecall;
    function CreateMenuDescription: IMenuDescription; safecall;
    function CreateMenuSubItemDescription(const MenuCaption: WideString; 
                                          const MenuItemName: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreateMenuItemDescription(const MenuCaption: WideString; 
                                       const MenuItemName: WideString; ActionCommand: Integer; 
                                       ATag: Integer): IMenuItemDescription; safecall;
    function CreateScriptMenuItemDescription(const MenuCaption: WideString; 
                                             const MenuName: WideString; 
                                             const ScriptName: WideString; 
                                             const ScriptFunction: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreatePluginMenuItemDescription(const MenuCaption: WideString; 
                                             const MenuName: WideString; 
                                             const PluginPath: WideString; 
                                             const PluginCommand: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreateServiceMenuItemDescription(const MenuCaption: WideString; 
                                              const MenuName: WideString; 
                                              const ServiceGuid: WideString; 
                                              const ServiceFunction: WideString; ATag: Integer): IMenuItemDescription; safecall;
    function CreateMenuBarDescription(const BarCaption: WideString; const BarName: WideString): IMenuBarDescription; safecall;
  end;

// *********************************************************************//
// DispIntf:  IApplicationMenuDescriptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8BBCF6A6-500C-4263-B83A-FCA9FD7EC3EA}
// *********************************************************************//
  IApplicationMenuDescriptionsDisp = dispinterface
    ['{8BBCF6A6-500C-4263-B83A-FCA9FD7EC3EA}']
    function GetMainMenuDescription: IMenuDescription; dispid 201;
    function GetFramePopupMenuDescription(const Frame: IFrameContainer): IMenuDescription; dispid 202;
    function GetMenuItemDescriptionByName(const Name: WideString): IMenuItemDescription; dispid 203;
    function CreateMenuDescription: IMenuDescription; dispid 204;
    function CreateMenuSubItemDescription(const MenuCaption: WideString; 
                                          const MenuItemName: WideString; ATag: Integer): IMenuItemDescription; dispid 205;
    function CreateMenuItemDescription(const MenuCaption: WideString; 
                                       const MenuItemName: WideString; ActionCommand: Integer; 
                                       ATag: Integer): IMenuItemDescription; dispid 206;
    function CreateScriptMenuItemDescription(const MenuCaption: WideString; 
                                             const MenuName: WideString; 
                                             const ScriptName: WideString; 
                                             const ScriptFunction: WideString; ATag: Integer): IMenuItemDescription; dispid 207;
    function CreatePluginMenuItemDescription(const MenuCaption: WideString; 
                                             const MenuName: WideString; 
                                             const PluginPath: WideString; 
                                             const PluginCommand: WideString; ATag: Integer): IMenuItemDescription; dispid 208;
    function CreateServiceMenuItemDescription(const MenuCaption: WideString; 
                                              const MenuName: WideString; 
                                              const ServiceGuid: WideString; 
                                              const ServiceFunction: WideString; ATag: Integer): IMenuItemDescription; dispid 209;
    function CreateMenuBarDescription(const BarCaption: WideString; const BarName: WideString): IMenuBarDescription; dispid 210;
  end;

// *********************************************************************//
// Interface: IPopupMenuHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6B2F838-FAD5-4782-A469-62E3835EAB1F}
// *********************************************************************//
  IPopupMenuHandler = interface(IDispatch)
    ['{D6B2F838-FAD5-4782-A469-62E3835EAB1F}']
    function GetPopupMenu(const Menu: IMenuDescription; const Content: IContent): IMenuDescription; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPopupMenuHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6B2F838-FAD5-4782-A469-62E3835EAB1F}
// *********************************************************************//
  IPopupMenuHandlerDisp = dispinterface
    ['{D6B2F838-FAD5-4782-A469-62E3835EAB1F}']
    function GetPopupMenu(const Menu: IMenuDescription; const Content: IContent): IMenuDescription; dispid 201;
  end;

// *********************************************************************//
// Interface: INetPluginLoader
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E6F902E-1A17-4C76-BF4F-DDD85EFA5E30}
// *********************************************************************//
  INetPluginLoader = interface(IDispatch)
    ['{1E6F902E-1A17-4C76-BF4F-DDD85EFA5E30}']
    function OnLoadPlugin(const PluginPath: WideString; lcpiCheck: WordBool): Integer; safecall;
    procedure OnUnLoadPlugin(const PluginPath: WideString); safecall;
    function GetPluginMenuDescription(const PluginPath: WideString): IMenuDescription; safecall;
    procedure ExecPluginCommand(const PluginPath: WideString; const PluginCommand: WideString; 
                                const PCall: IPluginCall); safecall;
    function CheckPluginCommand(const PluginPath: WideString; const PluginCommand: WideString; 
                                const PCall: IPluginCall): WordBool; safecall;
    function OnPluginOpenDataBase(const PluginPath: WideString; const PCall: IPluginCall): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  INetPluginLoaderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E6F902E-1A17-4C76-BF4F-DDD85EFA5E30}
// *********************************************************************//
  INetPluginLoaderDisp = dispinterface
    ['{1E6F902E-1A17-4C76-BF4F-DDD85EFA5E30}']
    function OnLoadPlugin(const PluginPath: WideString; lcpiCheck: WordBool): Integer; dispid 201;
    procedure OnUnLoadPlugin(const PluginPath: WideString); dispid 202;
    function GetPluginMenuDescription(const PluginPath: WideString): IMenuDescription; dispid 203;
    procedure ExecPluginCommand(const PluginPath: WideString; const PluginCommand: WideString; 
                                const PCall: IPluginCall); dispid 204;
    function CheckPluginCommand(const PluginPath: WideString; const PluginCommand: WideString; 
                                const PCall: IPluginCall): WordBool; dispid 205;
    function OnPluginOpenDataBase(const PluginPath: WideString; const PCall: IPluginCall): Integer; dispid 206;
  end;

// *********************************************************************//
// Interface: ILocationParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {246ED74B-64CE-4B1E-83EC-C165D754C940}
// *********************************************************************//
  ILocationParams = interface(IDispatch)
    ['{246ED74B-64CE-4B1E-83EC-C165D754C940}']
    function Get_Location: WideString; safecall;
    procedure Set_Location(const Value: WideString); safecall;
    function Get_RefreshFound: WordBool; safecall;
    procedure Set_RefreshFound(Value: WordBool); safecall;
    function Get_ScrollToCenter: WordBool; safecall;
    procedure Set_ScrollToCenter(Value: WordBool); safecall;
    property Location: WideString read Get_Location write Set_Location;
    property RefreshFound: WordBool read Get_RefreshFound write Set_RefreshFound;
    property ScrollToCenter: WordBool read Get_ScrollToCenter write Set_ScrollToCenter;
  end;

// *********************************************************************//
// DispIntf:  ILocationParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {246ED74B-64CE-4B1E-83EC-C165D754C940}
// *********************************************************************//
  ILocationParamsDisp = dispinterface
    ['{246ED74B-64CE-4B1E-83EC-C165D754C940}']
    property Location: WideString dispid 201;
    property RefreshFound: WordBool dispid 202;
    property ScrollToCenter: WordBool dispid 203;
  end;

// *********************************************************************//
// Interface: IObjectDialogParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAF9FC0D-2186-4DC9-BA10-7C08FF3165D0}
// *********************************************************************//
  IObjectDialogParams = interface(IDispatch)
    ['{BAF9FC0D-2186-4DC9-BA10-7C08FF3165D0}']
    function Get_TypeFilter: WideString; safecall;
    procedure Set_TypeFilter(const Value: WideString); safecall;
    function Get_StateFilter: WideString; safecall;
    procedure Set_StateFilter(const Value: WideString); safecall;
    function Get_LinkFilter: WideString; safecall;
    procedure Set_LinkFilter(const Value: WideString); safecall;
    function Get_DirectLinks: WordBool; safecall;
    procedure Set_DirectLinks(Value: WordBool); safecall;
    function Get_InverseLinks: WordBool; safecall;
    procedure Set_InverseLinks(Value: WordBool); safecall;
    function Get_DefaultKeyAttrValue: WideString; safecall;
    procedure Set_DefaultKeyAttrValue(const Value: WideString); safecall;
    function Get_EnabledFields: ObjectDialogFields; safecall;
    procedure Set_EnabledFields(Value: ObjectDialogFields); safecall;
    function Get_NotiSrc: WideString; safecall;
    procedure Set_NotiSrc(const Value: WideString); safecall;
    function Get_DirectLinkFilter: WideString; safecall;
    procedure Set_DirectLinkFilter(const Value: WideString); safecall;
    function Get_InverseLinkFilter: WideString; safecall;
    procedure Set_InverseLinkFilter(const Value: WideString); safecall;
    property TypeFilter: WideString read Get_TypeFilter write Set_TypeFilter;
    property StateFilter: WideString read Get_StateFilter write Set_StateFilter;
    property LinkFilter: WideString read Get_LinkFilter write Set_LinkFilter;
    property DirectLinks: WordBool read Get_DirectLinks write Set_DirectLinks;
    property InverseLinks: WordBool read Get_InverseLinks write Set_InverseLinks;
    property DefaultKeyAttrValue: WideString read Get_DefaultKeyAttrValue write Set_DefaultKeyAttrValue;
    property EnabledFields: ObjectDialogFields read Get_EnabledFields write Set_EnabledFields;
    property NotiSrc: WideString read Get_NotiSrc write Set_NotiSrc;
    property DirectLinkFilter: WideString read Get_DirectLinkFilter write Set_DirectLinkFilter;
    property InverseLinkFilter: WideString read Get_InverseLinkFilter write Set_InverseLinkFilter;
  end;

// *********************************************************************//
// DispIntf:  IObjectDialogParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAF9FC0D-2186-4DC9-BA10-7C08FF3165D0}
// *********************************************************************//
  IObjectDialogParamsDisp = dispinterface
    ['{BAF9FC0D-2186-4DC9-BA10-7C08FF3165D0}']
    property TypeFilter: WideString dispid 201;
    property StateFilter: WideString dispid 202;
    property LinkFilter: WideString dispid 203;
    property DirectLinks: WordBool dispid 204;
    property InverseLinks: WordBool dispid 205;
    property DefaultKeyAttrValue: WideString dispid 207;
    property EnabledFields: ObjectDialogFields dispid 208;
    property NotiSrc: WideString dispid 209;
    property DirectLinkFilter: WideString dispid 210;
    property InverseLinkFilter: WideString dispid 211;
  end;

// *********************************************************************//
// Interface: ILoodsmanWindows
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA92B9C0-84D4-433F-B7E9-7C700F5E875B}
// *********************************************************************//
  ILoodsmanWindows = interface(IDispatch)
    ['{AA92B9C0-84D4-433F-B7E9-7C700F5E875B}']
    procedure TileWindows(ATileMode: Integer); safecall;
    procedure CascadeWindows; safecall;
    function Get_ActiveWindow: IDBWindow; safecall;
    function Get_WindowCount: Integer; safecall;
    function GetWindow(Index: Integer): IDBWindow; safecall;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext; safecall;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    property ActiveWindow: IDBWindow read Get_ActiveWindow;
    property WindowCount: Integer read Get_WindowCount;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanWindowsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA92B9C0-84D4-433F-B7E9-7C700F5E875B}
// *********************************************************************//
  ILoodsmanWindowsDisp = dispinterface
    ['{AA92B9C0-84D4-433F-B7E9-7C700F5E875B}']
    procedure TileWindows(ATileMode: Integer); dispid 201;
    procedure CascadeWindows; dispid 202;
    property ActiveWindow: IDBWindow readonly dispid 203;
    property WindowCount: Integer readonly dispid 204;
    function GetWindow(Index: Integer): IDBWindow; dispid 205;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 206;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext; dispid 207;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 208;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 209;
  end;

// *********************************************************************//
// Interface: ILoodsmanExternalAPI
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A8910A2-C8C9-4831-8AB1-86F46A979EA1}
// *********************************************************************//
  ILoodsmanExternalAPI = interface(IDispatch)
    ['{7A8910A2-C8C9-4831-8AB1-86F46A979EA1}']
    function Get_Loodsman8: ILoodsman8; safecall;
    function Get_DataBase: IDataBase; safecall;
    function OpenDatabase(const DBName: WideString): OpenDataBaseStatus; safecall;
    function OpenDataBaseEx(const DBName: WideString; UseDBList: WordBool; 
                            const UserName: WideString; const Password: WideString): OpenDataBaseStatus; safecall;
    function Get_LoodsmanWindows: ILoodsmanWindows; safecall;
    function GetLastError: WideString; safecall;
    function SimpleLocate(CheckoutID: Integer; ObjectID: Integer; DocID: Integer): Integer; safecall;
    function SelectObjects(const Callback: ISelectionCallback; const Prompt: WideString; 
                           const OKButtonCaption: WideString; 
                           const CancelButtonCaption: WideString; DBChange: DBChangeMode; 
                           out SelectedObject: OleVariant): Integer; safecall;
    function ShowCreateDocumentDialog(const FileName: WideString; const Product: WideString; 
                                      const DocCode: WideString; const FullProduct: WideString; 
                                      ObjectID: Integer; var DocID: Integer; var CheckoutID: Integer): Integer; safecall;
    function QueryLooIntf(Obj: OleVariant; AIntfID: TGUID; const Connection: ISimpleAPI): IDispatch; safecall;
    procedure BringToFront; safecall;
    function ShowMainForm(ShowSplash: WordBool): WordBool; safecall;
    function Get_LoodsmanApplication: ILoodsmanApplication; safecall;
    property Loodsman8: ILoodsman8 read Get_Loodsman8;
    property DataBase: IDataBase read Get_DataBase;
    property LoodsmanWindows: ILoodsmanWindows read Get_LoodsmanWindows;
    property LoodsmanApplication: ILoodsmanApplication read Get_LoodsmanApplication;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanExternalAPIDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A8910A2-C8C9-4831-8AB1-86F46A979EA1}
// *********************************************************************//
  ILoodsmanExternalAPIDisp = dispinterface
    ['{7A8910A2-C8C9-4831-8AB1-86F46A979EA1}']
    property Loodsman8: ILoodsman8 readonly dispid 201;
    property DataBase: IDataBase readonly dispid 202;
    function OpenDatabase(const DBName: WideString): OpenDataBaseStatus; dispid 203;
    function OpenDataBaseEx(const DBName: WideString; UseDBList: WordBool; 
                            const UserName: WideString; const Password: WideString): OpenDataBaseStatus; dispid 204;
    property LoodsmanWindows: ILoodsmanWindows readonly dispid 205;
    function GetLastError: WideString; dispid 206;
    function SimpleLocate(CheckoutID: Integer; ObjectID: Integer; DocID: Integer): Integer; dispid 207;
    function SelectObjects(const Callback: ISelectionCallback; const Prompt: WideString; 
                           const OKButtonCaption: WideString; 
                           const CancelButtonCaption: WideString; DBChange: DBChangeMode; 
                           out SelectedObject: OleVariant): Integer; dispid 208;
    function ShowCreateDocumentDialog(const FileName: WideString; const Product: WideString; 
                                      const DocCode: WideString; const FullProduct: WideString; 
                                      ObjectID: Integer; var DocID: Integer; var CheckoutID: Integer): Integer; dispid 209;
    function QueryLooIntf(Obj: OleVariant; AIntfID: {NOT_OLEAUTO(TGUID)}OleVariant; 
                          const Connection: ISimpleAPI): IDispatch; dispid 210;
    procedure BringToFront; dispid 211;
    function ShowMainForm(ShowSplash: WordBool): WordBool; dispid 212;
    property LoodsmanApplication: ILoodsmanApplication readonly dispid 213;
  end;

// *********************************************************************//
// Interface: ILocatable
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {79D62D3E-E479-490A-90AF-D8A4E0679950}
// *********************************************************************//
  ILocatable = interface(IDispatch)
    ['{79D62D3E-E479-490A-90AF-D8A4E0679950}']
    function Locate(const Location: WideString; const Params: ILocateParams): Integer; safecall;
    function MultyLocate(Locations: OleVariant; const Params: ILocateParams): Integer; safecall;
    function LocateFromCurrent(const Location: WideString; const Params: ILocateParams): Integer; safecall;
    function GetObjectLocation(Obj: OleVariant): WideString; safecall;
    function SumLocations(const Location1: WideString; const Location2: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILocatableDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {79D62D3E-E479-490A-90AF-D8A4E0679950}
// *********************************************************************//
  ILocatableDisp = dispinterface
    ['{79D62D3E-E479-490A-90AF-D8A4E0679950}']
    function Locate(const Location: WideString; const Params: ILocateParams): Integer; dispid 201;
    function MultyLocate(Locations: OleVariant; const Params: ILocateParams): Integer; dispid 202;
    function LocateFromCurrent(const Location: WideString; const Params: ILocateParams): Integer; dispid 203;
    function GetObjectLocation(Obj: OleVariant): WideString; dispid 204;
    function SumLocations(const Location1: WideString; const Location2: WideString): WideString; dispid 205;
  end;

// *********************************************************************//
// Interface: ILocateParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9838E51C-5E5A-4179-AB26-5FC18BFB2530}
// *********************************************************************//
  ILocateParams = interface(IDispatch)
    ['{9838E51C-5E5A-4179-AB26-5FC18BFB2530}']
    function Get_RefreshFound: WordBool; safecall;
    procedure Set_RefreshFound(Value: WordBool); safecall;
    function Get_ScrollToCenter: WordBool; safecall;
    procedure Set_ScrollToCenter(Value: WordBool); safecall;
    function Get_FocusFirstLocation: WordBool; safecall;
    procedure Set_FocusFirstLocation(Value: WordBool); safecall;
    function Get_SendChangeContent: WordBool; safecall;
    procedure Set_SendChangeContent(Value: WordBool); safecall;
    property RefreshFound: WordBool read Get_RefreshFound write Set_RefreshFound;
    property ScrollToCenter: WordBool read Get_ScrollToCenter write Set_ScrollToCenter;
    property FocusFirstLocation: WordBool read Get_FocusFirstLocation write Set_FocusFirstLocation;
    property SendChangeContent: WordBool read Get_SendChangeContent write Set_SendChangeContent;
  end;

// *********************************************************************//
// DispIntf:  ILocateParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9838E51C-5E5A-4179-AB26-5FC18BFB2530}
// *********************************************************************//
  ILocateParamsDisp = dispinterface
    ['{9838E51C-5E5A-4179-AB26-5FC18BFB2530}']
    property RefreshFound: WordBool dispid 201;
    property ScrollToCenter: WordBool dispid 202;
    property FocusFirstLocation: WordBool dispid 203;
    property SendChangeContent: WordBool dispid 204;
  end;

// *********************************************************************//
// Interface: ILoodsmanClientEvents
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F80B2270-EDC8-40E4-831F-4F2814E661AA}
// *********************************************************************//
  ILoodsmanClientEvents = interface(IDispatch)
    ['{F80B2270-EDC8-40E4-831F-4F2814E661AA}']
    procedure RunBeforeCreateObjectHandler(const PDMObject: IPDMObject2; 
                                           const PDMLink: ILinkTypedPDMItem; 
                                           const TemplateControl: ILooInputTemplate; Cause: Integer); safecall;
    procedure RunAfterCreateObjectHandler(const PDMObject: IPDMObject2; 
                                          const PDMLink: ILinkTypedPDMItem); safecall;
    procedure RunAfterEditObjectHandler(const PDMObject: IPDMObject2; 
                                        const PDMLink: ILinkTypedPDMItem); safecall;
    procedure RunOnEditObjectPropertiesHandler(const PDMObject: IPDMObject2; 
                                               const PDMLink: ILinkTypedPDMItem; 
                                               const TemplateControl: ILooInputTemplate; 
                                               Cause: Integer); safecall;
    procedure RunOnEditAttrValueHandler(const PDMObject: IPDMObject2; 
                                        const PDMLink: ILinkTypedPDMItem; 
                                        const AttrName: WideString; AttrOwnerKind: Integer; 
                                        const TemplateControl: ILooInputTemplate); safecall;
    procedure RunOnInputTemplateBlockChanged(const PDMObject: IPDMObject2; 
                                             const PDMLink: ILinkTypedPDMItem; BlockIndex: Integer; 
                                             const TemplateControl: ILooInputTemplate); safecall;
    procedure Refresh; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanClientEventsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F80B2270-EDC8-40E4-831F-4F2814E661AA}
// *********************************************************************//
  ILoodsmanClientEventsDisp = dispinterface
    ['{F80B2270-EDC8-40E4-831F-4F2814E661AA}']
    procedure RunBeforeCreateObjectHandler(const PDMObject: IPDMObject2; 
                                           const PDMLink: ILinkTypedPDMItem; 
                                           const TemplateControl: ILooInputTemplate; Cause: Integer); dispid 201;
    procedure RunAfterCreateObjectHandler(const PDMObject: IPDMObject2; 
                                          const PDMLink: ILinkTypedPDMItem); dispid 202;
    procedure RunAfterEditObjectHandler(const PDMObject: IPDMObject2; 
                                        const PDMLink: ILinkTypedPDMItem); dispid 203;
    procedure RunOnEditObjectPropertiesHandler(const PDMObject: IPDMObject2; 
                                               const PDMLink: ILinkTypedPDMItem; 
                                               const TemplateControl: ILooInputTemplate; 
                                               Cause: Integer); dispid 204;
    procedure RunOnEditAttrValueHandler(const PDMObject: IPDMObject2; 
                                        const PDMLink: ILinkTypedPDMItem; 
                                        const AttrName: WideString; AttrOwnerKind: Integer; 
                                        const TemplateControl: ILooInputTemplate); dispid 205;
    procedure RunOnInputTemplateBlockChanged(const PDMObject: IPDMObject2; 
                                             const PDMLink: ILinkTypedPDMItem; BlockIndex: Integer; 
                                             const TemplateControl: ILooInputTemplate); dispid 206;
    procedure Refresh; dispid 207;
  end;

// *********************************************************************//
// Interface: IScriptParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B54215A4-0560-4664-9E49-924AFCAEF1A4}
// *********************************************************************//
  IScriptParams = interface(IDispatch)
    ['{B54215A4-0560-4664-9E49-924AFCAEF1A4}']
    function Get_Count: Integer; safecall;
    function Get_ParamByIndex(Index: Integer): OleVariant; safecall;
    procedure Set_ParamByIndex(Index: Integer; Value: OleVariant); safecall;
    function Get_Param(const Name: WideString): OleVariant; safecall;
    procedure Set_Param(const Name: WideString; Value: OleVariant); safecall;
    function HasParam(const Name: WideString): WordBool; safecall;
    function IndexOfParam(const Name: WideString): Integer; safecall;
    property Count: Integer read Get_Count;
    property ParamByIndex[Index: Integer]: OleVariant read Get_ParamByIndex write Set_ParamByIndex;
    property Param[const Name: WideString]: OleVariant read Get_Param write Set_Param;
  end;

// *********************************************************************//
// DispIntf:  IScriptParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B54215A4-0560-4664-9E49-924AFCAEF1A4}
// *********************************************************************//
  IScriptParamsDisp = dispinterface
    ['{B54215A4-0560-4664-9E49-924AFCAEF1A4}']
    property Count: Integer readonly dispid 201;
    property ParamByIndex[Index: Integer]: OleVariant dispid 202;
    property Param[const Name: WideString]: OleVariant dispid 203;
    function HasParam(const Name: WideString): WordBool; dispid 204;
    function IndexOfParam(const Name: WideString): Integer; dispid 205;
  end;

// *********************************************************************//
// Interface: ILooInputTemplate
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DCE202C-95C9-4FA0-87CF-17155ECCE6EB}
// *********************************************************************//
  ILooInputTemplate = interface(IDispatch)
    ['{7DCE202C-95C9-4FA0-87CF-17155ECCE6EB}']
    function Get_Name: WideString; safecall;
    function Get_Value: WideString; safecall;
    function Get_BlockCount: Integer; safecall;
    function Get_Block(Index: Integer): ILooInputTemplateBlock; safecall;
    function Get_BlockByID(const ID: WideString): ILooInputTemplateBlock; safecall;
    procedure SetTemplate(const Template: IAttrTemplate); safecall;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value;
    property BlockCount: Integer read Get_BlockCount;
    property Block[Index: Integer]: ILooInputTemplateBlock read Get_Block;
    property BlockByID[const ID: WideString]: ILooInputTemplateBlock read Get_BlockByID;
  end;

// *********************************************************************//
// DispIntf:  ILooInputTemplateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DCE202C-95C9-4FA0-87CF-17155ECCE6EB}
// *********************************************************************//
  ILooInputTemplateDisp = dispinterface
    ['{7DCE202C-95C9-4FA0-87CF-17155ECCE6EB}']
    property Name: WideString readonly dispid 201;
    property Value: WideString readonly dispid 202;
    property BlockCount: Integer readonly dispid 203;
    property Block[Index: Integer]: ILooInputTemplateBlock readonly dispid 204;
    property BlockByID[const ID: WideString]: ILooInputTemplateBlock readonly dispid 205;
    procedure SetTemplate(const Template: IAttrTemplate); dispid 206;
  end;

// *********************************************************************//
// Interface: ILooInputTemplateBlock
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1B6F220-E312-4783-8130-12992EE17B23}
// *********************************************************************//
  ILooInputTemplateBlock = interface(IDispatch)
    ['{B1B6F220-E312-4783-8130-12992EE17B23}']
    function Get_ControlType: Integer; safecall;
    function Get_ID: WideString; safecall;
    function Get_Value: WideString; safecall;
    procedure Set_Value(const Value: WideString); safecall;
    property ControlType: Integer read Get_ControlType;
    property ID: WideString read Get_ID;
    property Value: WideString read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  ILooInputTemplateBlockDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1B6F220-E312-4783-8130-12992EE17B23}
// *********************************************************************//
  ILooInputTemplateBlockDisp = dispinterface
    ['{B1B6F220-E312-4783-8130-12992EE17B23}']
    property ControlType: Integer readonly dispid 201;
    property ID: WideString readonly dispid 202;
    property Value: WideString dispid 203;
  end;

// *********************************************************************//
// Interface: ILooInputTemplateComboboxBlock
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E39D19D-039C-4332-8F70-8CBFE6185F31}
// *********************************************************************//
  ILooInputTemplateComboboxBlock = interface(ILooInputTemplateBlock)
    ['{9E39D19D-039C-4332-8F70-8CBFE6185F31}']
    function Get_ItemsCount: Integer; safecall;
    function Get_Item(Index: Integer): WideString; safecall;
    function Get_ItemIndex: Integer; safecall;
    procedure Set_ItemIndex(Value: Integer); safecall;
    property ItemsCount: Integer read Get_ItemsCount;
    property Item[Index: Integer]: WideString read Get_Item;
    property ItemIndex: Integer read Get_ItemIndex write Set_ItemIndex;
  end;

// *********************************************************************//
// DispIntf:  ILooInputTemplateComboboxBlockDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E39D19D-039C-4332-8F70-8CBFE6185F31}
// *********************************************************************//
  ILooInputTemplateComboboxBlockDisp = dispinterface
    ['{9E39D19D-039C-4332-8F70-8CBFE6185F31}']
    property ItemsCount: Integer readonly dispid 240;
    property Item[Index: Integer]: WideString readonly dispid 241;
    property ItemIndex: Integer dispid 242;
    property ControlType: Integer readonly dispid 201;
    property ID: WideString readonly dispid 202;
    property Value: WideString dispid 203;
  end;

// *********************************************************************//
// Interface: IBlockableChildFramesGUIDList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B55146C-52A5-47A5-85BA-6FD3EFDB1DC1}
// *********************************************************************//
  IBlockableChildFramesGUIDList = interface(IDispatch)
    ['{4B55146C-52A5-47A5-85BA-6FD3EFDB1DC1}']
    procedure Add(const aGUID: WideString); safecall;
    function IndexOf(const aGUID: WideString): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IBlockableChildFramesGUIDListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B55146C-52A5-47A5-85BA-6FD3EFDB1DC1}
// *********************************************************************//
  IBlockableChildFramesGUIDListDisp = dispinterface
    ['{4B55146C-52A5-47A5-85BA-6FD3EFDB1DC1}']
    procedure Add(const aGUID: WideString); dispid 201;
    function IndexOf(const aGUID: WideString): Integer; dispid 202;
  end;

// *********************************************************************//
// Interface: IBlockableChildFrames
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53E9E3FF-43B1-4159-887B-CADE9C252C0A}
// *********************************************************************//
  IBlockableChildFrames = interface(IDispatch)
    ['{53E9E3FF-43B1-4159-887B-CADE9C252C0A}']
    procedure OnBlockableChildFrames(const aBlockableChildFramesGUIDList: IBlockableChildFramesGUIDList); safecall;
  end;

// *********************************************************************//
// DispIntf:  IBlockableChildFramesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53E9E3FF-43B1-4159-887B-CADE9C252C0A}
// *********************************************************************//
  IBlockableChildFramesDisp = dispinterface
    ['{53E9E3FF-43B1-4159-887B-CADE9C252C0A}']
    procedure OnBlockableChildFrames(const aBlockableChildFramesGUIDList: IBlockableChildFramesGUIDList); dispid 201;
  end;

// *********************************************************************//
// Interface: IDBWindowEffectivityParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9A2DF0A5-19C6-4B21-AD73-7F8718CA37EC}
// *********************************************************************//
  IDBWindowEffectivityParams = interface(IDispatch)
    ['{9A2DF0A5-19C6-4B21-AD73-7F8718CA37EC}']
    function Get_RuleId: Integer; safecall;
    procedure Set_RuleId(AValue: Integer); safecall;
    function Get_EndVersionId: Integer; safecall;
    procedure Set_EndVersionId(AValue: Integer); safecall;
    function Get_FixedContextId: Integer; safecall;
    procedure Set_FixedContextId(AValue: Integer); safecall;
    function Get_QuickParams: OleVariant; safecall;
    procedure Set_QuickParams(AValue: OleVariant); safecall;
    procedure Update; safecall;
    function Get_ConfigurationVersionId: Integer; safecall;
    procedure Set_ConfigurationVersionId(AValue: Integer); safecall;
    property RuleId: Integer read Get_RuleId write Set_RuleId;
    property EndVersionId: Integer read Get_EndVersionId write Set_EndVersionId;
    property FixedContextId: Integer read Get_FixedContextId write Set_FixedContextId;
    property QuickParams: OleVariant read Get_QuickParams write Set_QuickParams;
    property ConfigurationVersionId: Integer read Get_ConfigurationVersionId write Set_ConfigurationVersionId;
  end;

// *********************************************************************//
// DispIntf:  IDBWindowEffectivityParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9A2DF0A5-19C6-4B21-AD73-7F8718CA37EC}
// *********************************************************************//
  IDBWindowEffectivityParamsDisp = dispinterface
    ['{9A2DF0A5-19C6-4B21-AD73-7F8718CA37EC}']
    property RuleId: Integer dispid 201;
    property EndVersionId: Integer dispid 202;
    property FixedContextId: Integer dispid 203;
    property QuickParams: OleVariant dispid 204;
    procedure Update; dispid 205;
    property ConfigurationVersionId: Integer dispid 206;
  end;

// *********************************************************************//
// Interface: ILinksInvokeService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AFDF0A6-29C7-1B21-AF73-7F8718CA37ED}
// *********************************************************************//
  ILinksInvokeService = interface(IDispatch)
    ['{9AFDF0A6-29C7-1B21-AF73-7F8718CA37ED}']
    procedure DoRun(const aParams: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ILinksInvokeServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AFDF0A6-29C7-1B21-AF73-7F8718CA37ED}
// *********************************************************************//
  ILinksInvokeServiceDisp = dispinterface
    ['{9AFDF0A6-29C7-1B21-AF73-7F8718CA37ED}']
    procedure DoRun(const aParams: WideString); dispid 201;
  end;

// *********************************************************************//
// Interface: IRequiredAttributesProc
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12344F40-9101-41CA-AAB3-FF176A044444}
// *********************************************************************//
  IRequiredAttributesProc = interface(IDispatch)
    ['{12344F40-9101-41CA-AAB3-FF176A044444}']
    function Get_AttributesMode: TRequiredProcMode; safecall;
    function Get_MeasureAttributesMode: TRequiredProcMode; safecall;
    function Get_MeasureLinkAttributesMode: TRequiredProcMode; safecall;
    function Get_MeasureQuantityMode: TRequiredProcMode; safecall;
    function GetMeasureAttributeOnList(const aAttributeName: WideString): WordBool; safecall;
    function GetMeasureLinkAttributeOnList(const aLinkAttributeName: WideString): WordBool; safecall;
    function Get_MeasureAttributesListIsEmpty: WordBool; safecall;
    function Get_MeasureLinkAttributesListIsEmpty: WordBool; safecall;
    property AttributesMode: TRequiredProcMode read Get_AttributesMode;
    property MeasureAttributesMode: TRequiredProcMode read Get_MeasureAttributesMode;
    property MeasureLinkAttributesMode: TRequiredProcMode read Get_MeasureLinkAttributesMode;
    property MeasureQuantityMode: TRequiredProcMode read Get_MeasureQuantityMode;
    property MeasureAttributesListIsEmpty: WordBool read Get_MeasureAttributesListIsEmpty;
    property MeasureLinkAttributesListIsEmpty: WordBool read Get_MeasureLinkAttributesListIsEmpty;
  end;

// *********************************************************************//
// DispIntf:  IRequiredAttributesProcDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12344F40-9101-41CA-AAB3-FF176A044444}
// *********************************************************************//
  IRequiredAttributesProcDisp = dispinterface
    ['{12344F40-9101-41CA-AAB3-FF176A044444}']
    property AttributesMode: TRequiredProcMode readonly dispid 201;
    property MeasureAttributesMode: TRequiredProcMode readonly dispid 202;
    property MeasureLinkAttributesMode: TRequiredProcMode readonly dispid 203;
    property MeasureQuantityMode: TRequiredProcMode readonly dispid 204;
    function GetMeasureAttributeOnList(const aAttributeName: WideString): WordBool; dispid 205;
    function GetMeasureLinkAttributeOnList(const aLinkAttributeName: WideString): WordBool; dispid 206;
    property MeasureAttributesListIsEmpty: WordBool readonly dispid 207;
    property MeasureLinkAttributesListIsEmpty: WordBool readonly dispid 208;
  end;

// *********************************************************************//
// Interface: ILayoutList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F561111-22A9-47A5-85BA-6FD3AAABADC6}
// *********************************************************************//
  ILayoutList = interface(IDispatch)
    ['{4F561111-22A9-47A5-85BA-6FD3AAABADC6}']
    function Count: Integer; safecall;
    function Layout(aIndex: Integer): WideString; safecall;
    function IndexOf(const aLayout: WideString): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILayoutListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F561111-22A9-47A5-85BA-6FD3AAABADC6}
// *********************************************************************//
  ILayoutListDisp = dispinterface
    ['{4F561111-22A9-47A5-85BA-6FD3AAABADC6}']
    function Count: Integer; dispid 201;
    function Layout(aIndex: Integer): WideString; dispid 202;
    function IndexOf(const aLayout: WideString): Integer; dispid 203;
  end;

// *********************************************************************//
// Interface: IStructureComparsionRulesItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43222329-17B7-42AB-15BC-6FD3000BEEE7}
// *********************************************************************//
  IStructureComparsionRulesItem = interface(IDispatch)
    ['{43222329-17B7-42AB-15BC-6FD3000BEEE7}']
    function Get_Caption: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_GUID: WideString; safecall;
    function Get_ReferenceModel: IStructureComparsionModel; safecall;
    function Get_CompareModel: IStructureComparsionModel; safecall;
    function GetAllowedByType(const aReferenceTypeName: WideString; 
                              const aCompareTypeName: WideString): WordBool; safecall;
    function IsEquivalType(const aGroup: IStructureComparsionGroup; const aTypeName: WideString): WordBool; safecall;
    property Caption: WideString read Get_Caption;
    property Description: WideString read Get_Description;
    property GUID: WideString read Get_GUID;
    property ReferenceModel: IStructureComparsionModel read Get_ReferenceModel;
    property CompareModel: IStructureComparsionModel read Get_CompareModel;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparsionRulesItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43222329-17B7-42AB-15BC-6FD3000BEEE7}
// *********************************************************************//
  IStructureComparsionRulesItemDisp = dispinterface
    ['{43222329-17B7-42AB-15BC-6FD3000BEEE7}']
    property Caption: WideString readonly dispid 1;
    property Description: WideString readonly dispid 2;
    property GUID: WideString readonly dispid 3;
    property ReferenceModel: IStructureComparsionModel readonly dispid 4;
    property CompareModel: IStructureComparsionModel readonly dispid 5;
    function GetAllowedByType(const aReferenceTypeName: WideString; 
                              const aCompareTypeName: WideString): WordBool; dispid 6;
    function IsEquivalType(const aGroup: IStructureComparsionGroup; const aTypeName: WideString): WordBool; dispid 7;
  end;

// *********************************************************************//
// Interface: IStructureComparsionRulesList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90002323-11BB-47A6-85BA-6FD3000BAAA1}
// *********************************************************************//
  IStructureComparsionRulesList = interface(IDispatch)
    ['{90002323-11BB-47A6-85BA-6FD3000BAAA1}']
    function Count: Integer; safecall;
    function Rule(aIndex: Integer): IStructureComparsionRulesItem; safecall;
    function IndexOf(const ACaption: WideString): Integer; safecall;
    function IndexOfByGUID(const aGUID: WideString): Integer; safecall;
    procedure Reload; safecall;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparsionRulesListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90002323-11BB-47A6-85BA-6FD3000BAAA1}
// *********************************************************************//
  IStructureComparsionRulesListDisp = dispinterface
    ['{90002323-11BB-47A6-85BA-6FD3000BAAA1}']
    function Count: Integer; dispid 201;
    function Rule(aIndex: Integer): IStructureComparsionRulesItem; dispid 202;
    function IndexOf(const ACaption: WideString): Integer; dispid 203;
    function IndexOfByGUID(const aGUID: WideString): Integer; dispid 204;
    procedure Reload; dispid 205;
  end;

// *********************************************************************//
// Interface: IAction
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D1D60373-04A5-4EF1-8BA3-B7103E230326}
// *********************************************************************//
  IAction = interface(IDispatch)
    ['{D1D60373-04A5-4EF1-8BA3-B7103E230326}']
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_ActionCommand: Integer; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Hint: WideString; safecall;
    function Get_ProcName: WideString; safecall;
    function Get_Module: WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_UniqueID: WideString; safecall;
    function Get_ActionType: TActionSettingsType; safecall;
    function Execute(ActionData: OleVariant; var ActionResultData: OleVariant): ActionResults; safecall;
    procedure AddHandler(const ActionHandler: IActionHandler; Priority: Integer; 
                         DataDependent: WordBool); safecall;
    procedure RemoveHandler(const ActionHandler: IActionHandler); safecall;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property ActionCommand: Integer read Get_ActionCommand;
    property Caption: WideString read Get_Caption;
    property Hint: WideString read Get_Hint;
    property ProcName: WideString read Get_ProcName;
    property Module: WideString read Get_Module;
    property Name: WideString read Get_Name;
    property UniqueID: WideString read Get_UniqueID;
    property ActionType: TActionSettingsType read Get_ActionType;
  end;

// *********************************************************************//
// DispIntf:  IActionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D1D60373-04A5-4EF1-8BA3-B7103E230326}
// *********************************************************************//
  IActionDisp = dispinterface
    ['{D1D60373-04A5-4EF1-8BA3-B7103E230326}']
    property Enabled: WordBool dispid 201;
    property Visible: WordBool dispid 202;
    property ActionCommand: Integer readonly dispid 203;
    property Caption: WideString readonly dispid 204;
    property Hint: WideString readonly dispid 205;
    property ProcName: WideString readonly dispid 206;
    property Module: WideString readonly dispid 207;
    property Name: WideString readonly dispid 208;
    property UniqueID: WideString readonly dispid 209;
    property ActionType: TActionSettingsType readonly dispid 210;
    function Execute(ActionData: OleVariant; var ActionResultData: OleVariant): ActionResults; dispid 211;
    procedure AddHandler(const ActionHandler: IActionHandler; Priority: Integer; 
                         DataDependent: WordBool); dispid 212;
    procedure RemoveHandler(const ActionHandler: IActionHandler); dispid 213;
  end;

// *********************************************************************//
// Interface: IComparisonParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA332728-B743-4658-BD0B-ED51FA6CBFD7}
// *********************************************************************//
  IComparisonParams = interface(IDispatch)
    ['{EA332728-B743-4658-BD0B-ED51FA6CBFD7}']
    function Get_ComparisonResult: IDispatch; safecall;
    function Get_SettingVisualization: IDispatch; safecall;
    function Get_Rule: IStructureComparsionRulesItem; safecall;
    function Get_TypeWindow(const ADBWindow: IDBWindow): TCompareItemType; safecall;
    function Get_EtalonWindow: IDBWindow; safecall;
    function Get_CompareWindow: IDBWindow; safecall;
    function Get_RootWindow: IDBWindow; safecall;
    procedure OpenLog(const aLog: WideString); safecall;
    function Get_SynchNodeInitiator: TCompareItemType; safecall;
    procedure Set_SynchNodeInitiator(Value: TCompareItemType); safecall;
    property ComparisonResult: IDispatch read Get_ComparisonResult;
    property SettingVisualization: IDispatch read Get_SettingVisualization;
    property Rule: IStructureComparsionRulesItem read Get_Rule;
    property TypeWindow[const ADBWindow: IDBWindow]: TCompareItemType read Get_TypeWindow;
    property EtalonWindow: IDBWindow read Get_EtalonWindow;
    property CompareWindow: IDBWindow read Get_CompareWindow;
    property RootWindow: IDBWindow read Get_RootWindow;
    property SynchNodeInitiator: TCompareItemType read Get_SynchNodeInitiator write Set_SynchNodeInitiator;
  end;

// *********************************************************************//
// DispIntf:  IComparisonParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA332728-B743-4658-BD0B-ED51FA6CBFD7}
// *********************************************************************//
  IComparisonParamsDisp = dispinterface
    ['{EA332728-B743-4658-BD0B-ED51FA6CBFD7}']
    property ComparisonResult: IDispatch readonly dispid 1;
    property SettingVisualization: IDispatch readonly dispid 2;
    property Rule: IStructureComparsionRulesItem readonly dispid 3;
    property TypeWindow[const ADBWindow: IDBWindow]: TCompareItemType readonly dispid 4;
    property EtalonWindow: IDBWindow readonly dispid 5;
    property CompareWindow: IDBWindow readonly dispid 6;
    property RootWindow: IDBWindow readonly dispid 7;
    procedure OpenLog(const aLog: WideString); dispid 8;
    property SynchNodeInitiator: TCompareItemType dispid 9;
  end;

// *********************************************************************//
// Interface: IStructureComparsionModel
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63E7A47C-2C64-4773-BE30-CF5A950AABED}
// *********************************************************************//
  IStructureComparsionModel = interface(IDispatch)
    ['{63E7A47C-2C64-4773-BE30-CF5A950AABED}']
    function Get_Layout: WideString; safecall;
    function Get_TreeOpeningLevel: Integer; safecall;
    function Get_CompareGroup: IStructureComparsionGroup; safecall;
    property Layout: WideString read Get_Layout;
    property TreeOpeningLevel: Integer read Get_TreeOpeningLevel;
    property CompareGroup: IStructureComparsionGroup read Get_CompareGroup;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparsionModelDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63E7A47C-2C64-4773-BE30-CF5A950AABED}
// *********************************************************************//
  IStructureComparsionModelDisp = dispinterface
    ['{63E7A47C-2C64-4773-BE30-CF5A950AABED}']
    property Layout: WideString readonly dispid 1;
    property TreeOpeningLevel: Integer readonly dispid 2;
    property CompareGroup: IStructureComparsionGroup readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IStructureComparsionGroup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4AE39C96-DA95-419D-8A0F-BA94F88CD5EE}
// *********************************************************************//
  IStructureComparsionGroup = interface(IDispatch)
    ['{4AE39C96-DA95-419D-8A0F-BA94F88CD5EE}']
    function Get_Name: WideString; safecall;
    function Get_Type_: TStructureComparsionGroupType; safecall;
    function Get_CompareLink: IStructureComparsionLinkList; safecall;
    function Get_Attributes: IStructureComparisonAttributeList; safecall;
    property Name: WideString read Get_Name;
    property Type_: TStructureComparsionGroupType read Get_Type_;
    property CompareLink: IStructureComparsionLinkList read Get_CompareLink;
    property Attributes: IStructureComparisonAttributeList read Get_Attributes;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparsionGroupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4AE39C96-DA95-419D-8A0F-BA94F88CD5EE}
// *********************************************************************//
  IStructureComparsionGroupDisp = dispinterface
    ['{4AE39C96-DA95-419D-8A0F-BA94F88CD5EE}']
    property Name: WideString readonly dispid 1;
    property Type_: TStructureComparsionGroupType readonly dispid 2;
    property CompareLink: IStructureComparsionLinkList readonly dispid 3;
    property Attributes: IStructureComparisonAttributeList readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IStructureComparsionLinkList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5D02AB26-2BA0-4536-88A8-77B7CACD025A}
// *********************************************************************//
  IStructureComparsionLinkList = interface(IDispatch)
    ['{5D02AB26-2BA0-4536-88A8-77B7CACD025A}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IStructureComparsionLink; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IStructureComparsionLink read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparsionLinkListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5D02AB26-2BA0-4536-88A8-77B7CACD025A}
// *********************************************************************//
  IStructureComparsionLinkListDisp = dispinterface
    ['{5D02AB26-2BA0-4536-88A8-77B7CACD025A}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: IStructureComparsionLink readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IStructureComparsionLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28D69EE5-19CC-4235-A304-D46BD182223F}
// *********************************************************************//
  IStructureComparsionLink = interface(IDispatch)
    ['{28D69EE5-19CC-4235-A304-D46BD182223F}']
    function Get_Name: WideString; safecall;
    function Get_InverseLink: Integer; safecall;
    function Get_ChildCount: Integer; safecall;
    function Get_ChildItem(Index: Integer): IStructureComparsionGroup; safecall;
    property Name: WideString read Get_Name;
    property InverseLink: Integer read Get_InverseLink;
    property ChildCount: Integer read Get_ChildCount;
    property ChildItem[Index: Integer]: IStructureComparsionGroup read Get_ChildItem;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparsionLinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28D69EE5-19CC-4235-A304-D46BD182223F}
// *********************************************************************//
  IStructureComparsionLinkDisp = dispinterface
    ['{28D69EE5-19CC-4235-A304-D46BD182223F}']
    property Name: WideString readonly dispid 1;
    property InverseLink: Integer readonly dispid 2;
    property ChildCount: Integer readonly dispid 3;
    property ChildItem[Index: Integer]: IStructureComparsionGroup readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IDockPanel
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {956E8BFB-FB08-45BB-9478-6059701B6540}
// *********************************************************************//
  IDockPanel = interface(IDispatch)
    ['{956E8BFB-FB08-45BB-9478-6059701B6540}']
    function Get_MustLoadData: WordBool; safecall;
    function Get_CanBeVisible: WordBool; safecall;
    procedure Activate; safecall;
    property MustLoadData: WordBool read Get_MustLoadData;
    property CanBeVisible: WordBool read Get_CanBeVisible;
  end;

// *********************************************************************//
// DispIntf:  IDockPanelDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {956E8BFB-FB08-45BB-9478-6059701B6540}
// *********************************************************************//
  IDockPanelDisp = dispinterface
    ['{956E8BFB-FB08-45BB-9478-6059701B6540}']
    property MustLoadData: WordBool readonly dispid 1;
    property CanBeVisible: WordBool readonly dispid 2;
    procedure Activate; dispid 3;
  end;

// *********************************************************************//
// Interface: ILinkedStructuresParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC431728-B429-C6A8-0D0B-E0543A7CBFD0}
// *********************************************************************//
  ILinkedStructuresParams = interface(IDispatch)
    ['{FC431728-B429-C6A8-0D0B-E0543A7CBFD0}']
    function Get_SourceRootObject: IPDMObject2; safecall;
    function Get_TargetRootObject: IPDMObject2; safecall;
    function Get_SourceWindow: IDBWindow; safecall;
    function Get_TargetWindow: IDBWindow; safecall;
    function Get_RootWindow: IDBWindow; safecall;
    function Get_ShowEquivalence: WordBool; safecall;
    function Get_EnableLinkedStructures: WordBool; safecall;
    property SourceRootObject: IPDMObject2 read Get_SourceRootObject;
    property TargetRootObject: IPDMObject2 read Get_TargetRootObject;
    property SourceWindow: IDBWindow read Get_SourceWindow;
    property TargetWindow: IDBWindow read Get_TargetWindow;
    property RootWindow: IDBWindow read Get_RootWindow;
    property ShowEquivalence: WordBool read Get_ShowEquivalence;
    property EnableLinkedStructures: WordBool read Get_EnableLinkedStructures;
  end;

// *********************************************************************//
// DispIntf:  ILinkedStructuresParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC431728-B429-C6A8-0D0B-E0543A7CBFD0}
// *********************************************************************//
  ILinkedStructuresParamsDisp = dispinterface
    ['{FC431728-B429-C6A8-0D0B-E0543A7CBFD0}']
    property SourceRootObject: IPDMObject2 readonly dispid 1;
    property TargetRootObject: IPDMObject2 readonly dispid 2;
    property SourceWindow: IDBWindow readonly dispid 3;
    property TargetWindow: IDBWindow readonly dispid 4;
    property RootWindow: IDBWindow readonly dispid 5;
    property ShowEquivalence: WordBool readonly dispid 6;
    property EnableLinkedStructures: WordBool readonly dispid 7;
  end;

// *********************************************************************//
// Interface: IStructureComparisonAttribute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CCC5D7F4-3F52-4D1E-BD74-0AD324B27581}
// *********************************************************************//
  IStructureComparisonAttribute = interface(IDispatch)
    ['{CCC5D7F4-3F52-4D1E-BD74-0AD324B27581}']
    function Get_Name: WideString; safecall;
    function Get_AttrType: Integer; safecall;
    function Get_Entity: WideString; safecall;
    function Get_EntityType: Integer; safecall;
    function Get_ComparedValues: Integer; safecall;
    property Name: WideString read Get_Name;
    property AttrType: Integer read Get_AttrType;
    property Entity: WideString read Get_Entity;
    property EntityType: Integer read Get_EntityType;
    property ComparedValues: Integer read Get_ComparedValues;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparisonAttributeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CCC5D7F4-3F52-4D1E-BD74-0AD324B27581}
// *********************************************************************//
  IStructureComparisonAttributeDisp = dispinterface
    ['{CCC5D7F4-3F52-4D1E-BD74-0AD324B27581}']
    property Name: WideString readonly dispid 1;
    property AttrType: Integer readonly dispid 2;
    property Entity: WideString readonly dispid 3;
    property EntityType: Integer readonly dispid 4;
    property ComparedValues: Integer readonly dispid 5;
  end;

// *********************************************************************//
// Interface: IStructureComparisonAttributeList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E2EFC315-5F2D-482B-B4A7-6D165AEAB7DF}
// *********************************************************************//
  IStructureComparisonAttributeList = interface(IDispatch)
    ['{E2EFC315-5F2D-482B-B4A7-6D165AEAB7DF}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IStructureComparisonAttribute; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IStructureComparisonAttribute read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  IStructureComparisonAttributeListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E2EFC315-5F2D-482B-B4A7-6D165AEAB7DF}
// *********************************************************************//
  IStructureComparisonAttributeListDisp = dispinterface
    ['{E2EFC315-5F2D-482B-B4A7-6D165AEAB7DF}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: IStructureComparisonAttribute readonly dispid 2;
  end;

// *********************************************************************//
// The Class CoBOLoodsmanSimpleProvider provides a Create and CreateRemote method to          
// create instances of the default interface IBOSimpleProvider exposed by              
// the CoClass BOLoodsmanSimpleProvider. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOLoodsmanSimpleProvider = class
    class function Create: IBOSimpleProvider;
    class function CreateRemote(const MachineName: string): IBOSimpleProvider;
  end;

// *********************************************************************//
// The Class CoBOAttribute provides a Create and CreateRemote method to          
// create instances of the default interface IBOAttribute exposed by              
// the CoClass BOAttribute. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOAttribute = class
    class function Create: IBOAttribute;
    class function CreateRemote(const MachineName: string): IBOAttribute;
  end;

// *********************************************************************//
// The Class CoBOAttributeCollection provides a Create and CreateRemote method to          
// create instances of the default interface IBOAttributeCollection exposed by              
// the CoClass BOAttributeCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOAttributeCollection = class
    class function Create: IBOAttributeCollection;
    class function CreateRemote(const MachineName: string): IBOAttributeCollection;
  end;

// *********************************************************************//
// The Class CoBOItem provides a Create and CreateRemote method to          
// create instances of the default interface IBOItem exposed by              
// the CoClass BOItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOItem = class
    class function Create: IBOItem;
    class function CreateRemote(const MachineName: string): IBOItem;
  end;

// *********************************************************************//
// The Class CoBOItemCollection provides a Create and CreateRemote method to          
// create instances of the default interface IBOItemCollection exposed by              
// the CoClass BOItemCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOItemCollection = class
    class function Create: IBOItemCollection;
    class function CreateRemote(const MachineName: string): IBOItemCollection;
  end;

// *********************************************************************//
// The Class CoBOKernel provides a Create and CreateRemote method to          
// create instances of the default interface IBOKernel exposed by              
// the CoClass BOKernel. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOKernel = class
    class function Create: IBOKernel;
    class function CreateRemote(const MachineName: string): IBOKernel;
  end;

// *********************************************************************//
// The Class CoBOObject provides a Create and CreateRemote method to          
// create instances of the default interface IBOObject exposed by              
// the CoClass BOObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOObject = class
    class function Create: IBOObject;
    class function CreateRemote(const MachineName: string): IBOObject;
  end;

// *********************************************************************//
// The Class CoBOObjectCollection provides a Create and CreateRemote method to          
// create instances of the default interface IBOObjectCollection exposed by              
// the CoClass BOObjectCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOObjectCollection = class
    class function Create: IBOObjectCollection;
    class function CreateRemote(const MachineName: string): IBOObjectCollection;
  end;

// *********************************************************************//
// The Class CoBORequest provides a Create and CreateRemote method to          
// create instances of the default interface IBORequest exposed by              
// the CoClass BORequest. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBORequest = class
    class function Create: IBORequest;
    class function CreateRemote(const MachineName: string): IBORequest;
  end;

// *********************************************************************//
// The Class CoBOResponse provides a Create and CreateRemote method to          
// create instances of the default interface IBOResponse exposed by              
// the CoClass BOResponse. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOResponse = class
    class function Create: IBOResponse;
    class function CreateRemote(const MachineName: string): IBOResponse;
  end;

// *********************************************************************//
// The Class CoLoodsmanObject provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsman8 exposed by              
// the CoClass LoodsmanObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanObject = class
    class function Create: ILoodsman8;
    class function CreateRemote(const MachineName: string): ILoodsman8;
  end;

// *********************************************************************//
// The Class CoPluginCall provides a Create and CreateRemote method to          
// create instances of the default interface IPluginCall exposed by              
// the CoClass PluginCall. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPluginCall = class
    class function Create: IPluginCall;
    class function CreateRemote(const MachineName: string): IPluginCall;
  end;

// *********************************************************************//
// The Class CoURL provides a Create and CreateRemote method to          
// create instances of the default interface ICommand exposed by              
// the CoClass URL. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoURL = class
    class function Create: ICommand;
    class function CreateRemote(const MachineName: string): ICommand;
  end;

// *********************************************************************//
// The Class CoCDataBase provides a Create and CreateRemote method to          
// create instances of the default interface IDataBase exposed by              
// the CoClass CDataBase. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCDataBase = class
    class function Create: IDataBase;
    class function CreateRemote(const MachineName: string): IDataBase;
  end;

// *********************************************************************//
// The Class CoCoLooPlugin provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanPlugin exposed by              
// the CoClass CoLooPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoLooPlugin = class
    class function Create: ILoodsmanPlugin;
    class function CreateRemote(const MachineName: string): ILoodsmanPlugin;
  end;

// *********************************************************************//
// The Class CoCDBWindow provides a Create and CreateRemote method to          
// create instances of the default interface IDBWindow exposed by              
// the CoClass CDBWindow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCDBWindow = class
    class function Create: IDBWindow;
    class function CreateRemote(const MachineName: string): IDBWindow;
  end;

// *********************************************************************//
// The Class CoCoSimpleAPI provides a Create and CreateRemote method to          
// create instances of the default interface ISimpleAPI2 exposed by              
// the CoClass CoSimpleAPI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoSimpleAPI = class
    class function Create: ISimpleAPI2;
    class function CreateRemote(const MachineName: string): ISimpleAPI2;
  end;

// *********************************************************************//
// The Class CoCoDataSet provides a Create and CreateRemote method to          
// create instances of the default interface IDataSet exposed by              
// the CoClass CoDataSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoDataSet = class
    class function Create: IDataSet;
    class function CreateRemote(const MachineName: string): IDataSet;
  end;

// *********************************************************************//
// The Class CoCoClientAsyncTask provides a Create and CreateRemote method to          
// create instances of the default interface IAsyncTask exposed by              
// the CoClass CoClientAsyncTask. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoClientAsyncTask = class
    class function Create: IAsyncTask;
    class function CreateRemote(const MachineName: string): IAsyncTask;
  end;

// *********************************************************************//
// The Class CoCoOptions provides a Create and CreateRemote method to          
// create instances of the default interface IOptions exposed by              
// the CoClass CoOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoOptions = class
    class function Create: IOptions;
    class function CreateRemote(const MachineName: string): IOptions;
  end;

// *********************************************************************//
// The Class CoCoDBContext provides a Create and CreateRemote method to          
// create instances of the default interface IDBContext exposed by              
// the CoClass CoDBContext. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoDBContext = class
    class function Create: IDBContext;
    class function CreateRemote(const MachineName: string): IDBContext;
  end;

// *********************************************************************//
// The Class CoCoFrameContainer provides a Create and CreateRemote method to          
// create instances of the default interface IFrameContainer exposed by              
// the CoClass CoFrameContainer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoFrameContainer = class
    class function Create: IFrameContainer;
    class function CreateRemote(const MachineName: string): IFrameContainer;
  end;

// *********************************************************************//
// The Class CoCoNotification provides a Create and CreateRemote method to          
// create instances of the default interface INotification exposed by              
// the CoClass CoNotification. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoNotification = class
    class function Create: INotification;
    class function CreateRemote(const MachineName: string): INotification;
  end;

// *********************************************************************//
// The Class CoCoMenuBar provides a Create and CreateRemote method to          
// create instances of the default interface IMenuBar exposed by              
// the CoClass CoMenuBar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoMenuBar = class
    class function Create: IMenuBar;
    class function CreateRemote(const MachineName: string): IMenuBar;
  end;

// *********************************************************************//
// The Class CoCoMenuItem provides a Create and CreateRemote method to          
// create instances of the default interface IMenuItem exposed by              
// the CoClass CoMenuItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoMenuItem = class
    class function Create: IMenuItem;
    class function CreateRemote(const MachineName: string): IMenuItem;
  end;

// *********************************************************************//
// The Class CoCoActions provides a Create and CreateRemote method to          
// create instances of the default interface IActions exposed by              
// the CoClass CoActions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoActions = class
    class function Create: IActions;
    class function CreateRemote(const MachineName: string): IActions;
  end;

// *********************************************************************//
// The Class CoLooApplication provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanApplication exposed by              
// the CoClass LooApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLooApplication = class
    class function Create: ILoodsmanApplication;
    class function CreateRemote(const MachineName: string): ILoodsmanApplication;
  end;

// *********************************************************************//
// The Class CoCoApplicationMenu provides a Create and CreateRemote method to          
// create instances of the default interface IApplicationMenu exposed by              
// the CoClass CoApplicationMenu. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoApplicationMenu = class
    class function Create: IApplicationMenu;
    class function CreateRemote(const MachineName: string): IApplicationMenu;
  end;

// *********************************************************************//
// The Class CoLoodsmanExternalAPI provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanExternalAPI exposed by              
// the CoClass LoodsmanExternalAPI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanExternalAPI = class
    class function Create: ILoodsmanExternalAPI;
    class function CreateRemote(const MachineName: string): ILoodsmanExternalAPI;
  end;

// *********************************************************************//
// The Class CoCoBlockableChildFramesGUIDList provides a Create and CreateRemote method to          
// create instances of the default interface IBlockableChildFramesGUIDList exposed by              
// the CoClass CoBlockableChildFramesGUIDList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoBlockableChildFramesGUIDList = class
    class function Create: IBlockableChildFramesGUIDList;
    class function CreateRemote(const MachineName: string): IBlockableChildFramesGUIDList;
  end;

// *********************************************************************//
// The Class CoCRequiredAttributesProc provides a Create and CreateRemote method to          
// create instances of the default interface IRequiredAttributesProc exposed by              
// the CoClass CRequiredAttributesProc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRequiredAttributesProc = class
    class function Create: IRequiredAttributesProc;
    class function CreateRemote(const MachineName: string): IRequiredAttributesProc;
  end;

// *********************************************************************//
// The Class CoCoAction provides a Create and CreateRemote method to          
// create instances of the default interface IAction exposed by              
// the CoClass CoAction. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoAction = class
    class function Create: IAction;
    class function CreateRemote(const MachineName: string): IAction;
  end;

// *********************************************************************//
// The Class CoSvcProvider provides a Create and CreateRemote method to          
// create instances of the default interface IServiceProvider exposed by              
// the CoClass SvcProvider. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSvcProvider = class
    class function Create: IServiceProvider;
    class function CreateRemote(const MachineName: string): IServiceProvider;
  end;

// *********************************************************************//
// The Class CoCoLCImageList provides a Create and CreateRemote method to          
// create instances of the default interface IImageList exposed by              
// the CoClass CoLCImageList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoLCImageList = class
    class function Create: IImageList;
    class function CreateRemote(const MachineName: string): IImageList;
  end;

implementation

uses System.Win.ComObj;

class function CoBOLoodsmanSimpleProvider.Create: IBOSimpleProvider;
begin
  Result := CreateComObject(CLASS_BOLoodsmanSimpleProvider) as IBOSimpleProvider;
end;

class function CoBOLoodsmanSimpleProvider.CreateRemote(const MachineName: string): IBOSimpleProvider;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOLoodsmanSimpleProvider) as IBOSimpleProvider;
end;

class function CoBOAttribute.Create: IBOAttribute;
begin
  Result := CreateComObject(CLASS_BOAttribute) as IBOAttribute;
end;

class function CoBOAttribute.CreateRemote(const MachineName: string): IBOAttribute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOAttribute) as IBOAttribute;
end;

class function CoBOAttributeCollection.Create: IBOAttributeCollection;
begin
  Result := CreateComObject(CLASS_BOAttributeCollection) as IBOAttributeCollection;
end;

class function CoBOAttributeCollection.CreateRemote(const MachineName: string): IBOAttributeCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOAttributeCollection) as IBOAttributeCollection;
end;

class function CoBOItem.Create: IBOItem;
begin
  Result := CreateComObject(CLASS_BOItem) as IBOItem;
end;

class function CoBOItem.CreateRemote(const MachineName: string): IBOItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOItem) as IBOItem;
end;

class function CoBOItemCollection.Create: IBOItemCollection;
begin
  Result := CreateComObject(CLASS_BOItemCollection) as IBOItemCollection;
end;

class function CoBOItemCollection.CreateRemote(const MachineName: string): IBOItemCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOItemCollection) as IBOItemCollection;
end;

class function CoBOKernel.Create: IBOKernel;
begin
  Result := CreateComObject(CLASS_BOKernel) as IBOKernel;
end;

class function CoBOKernel.CreateRemote(const MachineName: string): IBOKernel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOKernel) as IBOKernel;
end;

class function CoBOObject.Create: IBOObject;
begin
  Result := CreateComObject(CLASS_BOObject) as IBOObject;
end;

class function CoBOObject.CreateRemote(const MachineName: string): IBOObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOObject) as IBOObject;
end;

class function CoBOObjectCollection.Create: IBOObjectCollection;
begin
  Result := CreateComObject(CLASS_BOObjectCollection) as IBOObjectCollection;
end;

class function CoBOObjectCollection.CreateRemote(const MachineName: string): IBOObjectCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOObjectCollection) as IBOObjectCollection;
end;

class function CoBORequest.Create: IBORequest;
begin
  Result := CreateComObject(CLASS_BORequest) as IBORequest;
end;

class function CoBORequest.CreateRemote(const MachineName: string): IBORequest;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BORequest) as IBORequest;
end;

class function CoBOResponse.Create: IBOResponse;
begin
  Result := CreateComObject(CLASS_BOResponse) as IBOResponse;
end;

class function CoBOResponse.CreateRemote(const MachineName: string): IBOResponse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOResponse) as IBOResponse;
end;

class function CoLoodsmanObject.Create: ILoodsman8;
begin
  Result := CreateComObject(CLASS_LoodsmanObject) as ILoodsman8;
end;

class function CoLoodsmanObject.CreateRemote(const MachineName: string): ILoodsman8;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanObject) as ILoodsman8;
end;

class function CoPluginCall.Create: IPluginCall;
begin
  Result := CreateComObject(CLASS_PluginCall) as IPluginCall;
end;

class function CoPluginCall.CreateRemote(const MachineName: string): IPluginCall;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PluginCall) as IPluginCall;
end;

class function CoURL.Create: ICommand;
begin
  Result := CreateComObject(CLASS_URL) as ICommand;
end;

class function CoURL.CreateRemote(const MachineName: string): ICommand;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_URL) as ICommand;
end;

class function CoCDataBase.Create: IDataBase;
begin
  Result := CreateComObject(CLASS_CDataBase) as IDataBase;
end;

class function CoCDataBase.CreateRemote(const MachineName: string): IDataBase;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CDataBase) as IDataBase;
end;

class function CoCoLooPlugin.Create: ILoodsmanPlugin;
begin
  Result := CreateComObject(CLASS_CoLooPlugin) as ILoodsmanPlugin;
end;

class function CoCoLooPlugin.CreateRemote(const MachineName: string): ILoodsmanPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoLooPlugin) as ILoodsmanPlugin;
end;

class function CoCDBWindow.Create: IDBWindow;
begin
  Result := CreateComObject(CLASS_CDBWindow) as IDBWindow;
end;

class function CoCDBWindow.CreateRemote(const MachineName: string): IDBWindow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CDBWindow) as IDBWindow;
end;

class function CoCoSimpleAPI.Create: ISimpleAPI2;
begin
  Result := CreateComObject(CLASS_CoSimpleAPI) as ISimpleAPI2;
end;

class function CoCoSimpleAPI.CreateRemote(const MachineName: string): ISimpleAPI2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoSimpleAPI) as ISimpleAPI2;
end;

class function CoCoDataSet.Create: IDataSet;
begin
  Result := CreateComObject(CLASS_CoDataSet) as IDataSet;
end;

class function CoCoDataSet.CreateRemote(const MachineName: string): IDataSet;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoDataSet) as IDataSet;
end;

class function CoCoClientAsyncTask.Create: IAsyncTask;
begin
  Result := CreateComObject(CLASS_CoClientAsyncTask) as IAsyncTask;
end;

class function CoCoClientAsyncTask.CreateRemote(const MachineName: string): IAsyncTask;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoClientAsyncTask) as IAsyncTask;
end;

class function CoCoOptions.Create: IOptions;
begin
  Result := CreateComObject(CLASS_CoOptions) as IOptions;
end;

class function CoCoOptions.CreateRemote(const MachineName: string): IOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoOptions) as IOptions;
end;

class function CoCoDBContext.Create: IDBContext;
begin
  Result := CreateComObject(CLASS_CoDBContext) as IDBContext;
end;

class function CoCoDBContext.CreateRemote(const MachineName: string): IDBContext;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoDBContext) as IDBContext;
end;

class function CoCoFrameContainer.Create: IFrameContainer;
begin
  Result := CreateComObject(CLASS_CoFrameContainer) as IFrameContainer;
end;

class function CoCoFrameContainer.CreateRemote(const MachineName: string): IFrameContainer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoFrameContainer) as IFrameContainer;
end;

class function CoCoNotification.Create: INotification;
begin
  Result := CreateComObject(CLASS_CoNotification) as INotification;
end;

class function CoCoNotification.CreateRemote(const MachineName: string): INotification;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoNotification) as INotification;
end;

class function CoCoMenuBar.Create: IMenuBar;
begin
  Result := CreateComObject(CLASS_CoMenuBar) as IMenuBar;
end;

class function CoCoMenuBar.CreateRemote(const MachineName: string): IMenuBar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoMenuBar) as IMenuBar;
end;

class function CoCoMenuItem.Create: IMenuItem;
begin
  Result := CreateComObject(CLASS_CoMenuItem) as IMenuItem;
end;

class function CoCoMenuItem.CreateRemote(const MachineName: string): IMenuItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoMenuItem) as IMenuItem;
end;

class function CoCoActions.Create: IActions;
begin
  Result := CreateComObject(CLASS_CoActions) as IActions;
end;

class function CoCoActions.CreateRemote(const MachineName: string): IActions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoActions) as IActions;
end;

class function CoLooApplication.Create: ILoodsmanApplication;
begin
  Result := CreateComObject(CLASS_LooApplication) as ILoodsmanApplication;
end;

class function CoLooApplication.CreateRemote(const MachineName: string): ILoodsmanApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LooApplication) as ILoodsmanApplication;
end;

class function CoCoApplicationMenu.Create: IApplicationMenu;
begin
  Result := CreateComObject(CLASS_CoApplicationMenu) as IApplicationMenu;
end;

class function CoCoApplicationMenu.CreateRemote(const MachineName: string): IApplicationMenu;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoApplicationMenu) as IApplicationMenu;
end;

class function CoLoodsmanExternalAPI.Create: ILoodsmanExternalAPI;
begin
  Result := CreateComObject(CLASS_LoodsmanExternalAPI) as ILoodsmanExternalAPI;
end;

class function CoLoodsmanExternalAPI.CreateRemote(const MachineName: string): ILoodsmanExternalAPI;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanExternalAPI) as ILoodsmanExternalAPI;
end;

class function CoCoBlockableChildFramesGUIDList.Create: IBlockableChildFramesGUIDList;
begin
  Result := CreateComObject(CLASS_CoBlockableChildFramesGUIDList) as IBlockableChildFramesGUIDList;
end;

class function CoCoBlockableChildFramesGUIDList.CreateRemote(const MachineName: string): IBlockableChildFramesGUIDList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoBlockableChildFramesGUIDList) as IBlockableChildFramesGUIDList;
end;

class function CoCRequiredAttributesProc.Create: IRequiredAttributesProc;
begin
  Result := CreateComObject(CLASS_CRequiredAttributesProc) as IRequiredAttributesProc;
end;

class function CoCRequiredAttributesProc.CreateRemote(const MachineName: string): IRequiredAttributesProc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRequiredAttributesProc) as IRequiredAttributesProc;
end;

class function CoCoAction.Create: IAction;
begin
  Result := CreateComObject(CLASS_CoAction) as IAction;
end;

class function CoCoAction.CreateRemote(const MachineName: string): IAction;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoAction) as IAction;
end;

class function CoSvcProvider.Create: IServiceProvider;
begin
  Result := CreateComObject(CLASS_SvcProvider) as IServiceProvider;
end;

class function CoSvcProvider.CreateRemote(const MachineName: string): IServiceProvider;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SvcProvider) as IServiceProvider;
end;

class function CoCoLCImageList.Create: IImageList;
begin
  Result := CreateComObject(CLASS_CoLCImageList) as IImageList;
end;

class function CoCoLCImageList.CreateRemote(const MachineName: string): IImageList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoLCImageList) as IImageList;
end;

end.
