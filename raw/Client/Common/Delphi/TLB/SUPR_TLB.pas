unit SUPR_TLB;

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
// File generated on 03.10.2024 12:03:19 from Type Library described below.

// ************************************************************************  //
// Type Lib: ..\SUPR.tlb (1)
// LIBID: {363B1BF1-C0F5-4E26-93D1-4DD9EFFFBD53}
// LCID: 0
// Helpfile: 
// HelpString: SUPR Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 PDMObjects, (C:\Program Files (x86)\ASCON\Loodsman\Client\PDMObjects.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, PDMObjects_TLB, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SUPRMajorVersion = 1;
  SUPRMinorVersion = 0;

  LIBID_SUPR: TGUID = '{363B1BF1-C0F5-4E26-93D1-4DD9EFFFBD53}';

  IID_IWBSSystem: TGUID = '{DAFC5833-5159-4B5B-ABEC-E5AA835B1DF2}';
  CLASS_WBSSystem: TGUID = '{4F223968-2D7D-4995-8CD8-0B9B68AD255D}';
  IID_ITasks: TGUID = '{D2CC8A62-0FEB-4573-8A37-6142F5ED1CA3}';
  IID_ITask: TGUID = '{856931B3-C26C-46D6-AFAF-5F64AB8DF63E}';
  IID_ITaskLink: TGUID = '{639E8605-406D-48D1-B4AF-16D37596775C}';
  IID_ITaskLinks: TGUID = '{00916179-905E-44BE-91F6-2758E7AA80A1}';
  IID_IUser: TGUID = '{B65D3F30-697F-4FD4-BB6B-D9CA307A8AE6}';
  IID_IUsers: TGUID = '{48AF8A13-9FB3-4B63-8A30-CD7A0C09833F}';
  IID_ICondition: TGUID = '{497EEA36-119E-449F-9CE6-4AD27A213698}';
  IID_IConditions: TGUID = '{A9991AD4-C57E-45F0-9C25-8789531EAAA2}';
  IID_IConditionUnits: TGUID = '{08101787-A237-47E4-B555-BBA06B83D3FE}';
  IID_IConditionUnit: TGUID = '{C334A4EB-7102-4ECF-A5FF-EE0006453384}';
  IID_IConditionItems: TGUID = '{BDA3BF63-B438-4A0E-ADA8-0CDE9854FEE2}';
  IID_IConditionItem: TGUID = '{7282D387-1CA3-4767-9A12-C4FA3015F870}';
  IID_IResultField: TGUID = '{981D2346-0B02-4318-A041-69D27B86D981}';
  IID_IResultFields: TGUID = '{0E27C0FD-6360-4F8C-864C-012E84A8546B}';
  CLASS_Tasks: TGUID = '{8E4D7A3D-5F76-4CB0-9F4C-C1BA5D09AC0E}';
  CLASS_TaskLinks: TGUID = '{94B20F98-72F8-4D14-AE14-45DD26FC6A2F}';
  CLASS_TaskLink: TGUID = '{07734B50-C558-4CD6-B499-908CCDB6B384}';
  CLASS_Task: TGUID = '{C331C614-BFB9-4087-B68C-66C1B1C94AD9}';
  CLASS_User: TGUID = '{AFAAC38A-09E0-4823-8ACF-A9BFA75AC1A4}';
  IID_ISubtasks: TGUID = '{37B2C0E0-5DA1-4DA5-88AB-91F20A5F584E}';
  CLASS_Subtasks: TGUID = '{221C5C73-3184-4DE5-BE2D-4EC4C844B94F}';
  CLASS_Users: TGUID = '{2CEFEFD9-5E6B-4A0E-92BF-C90BA26D7D4A}';
  IID_IAuthority: TGUID = '{6F7C5E61-D27A-4648-B02F-91DFD6D78440}';
  CLASS_Authority: TGUID = '{4087F271-71FB-48F2-B4E9-F3A3418C43BC}';
  IID_IAttachment: TGUID = '{DDA82554-F2AC-4D7D-A59A-1FAE1633EB49}';
  CLASS_Attachment: TGUID = '{B348A2D8-4B1D-49BF-A819-CE2E7A290687}';
  IID_IAttachments: TGUID = '{812423A8-5BDF-439D-8249-B4632A73B0A7}';
  CLASS_Attachments: TGUID = '{C7CCC6D7-3F92-4F02-82AF-9FA246C79468}';
  IID_ITraceResults: TGUID = '{79A546DF-C5B7-4087-AC54-ADDD11EA52E4}';
  IID_IConflicts: TGUID = '{88C4EE8C-F3D8-48B0-BEC9-044C2B79EE81}';
  IID_IConflict: TGUID = '{BA715EEA-B870-4B2D-A1C0-38EEBC0A6E15}';
  CLASS_TraceResults: TGUID = '{1B39DA35-FCD5-4F60-B8F4-73E3B2F7DC9F}';
  CLASS_Conflicts: TGUID = '{BBEDC3FF-9B5D-4958-B10F-E9EF92582098}';
  CLASS_Conflict: TGUID = '{F000FD63-1D95-41F7-BD09-D5152A1DF8EE}';
  IID_IPlan: TGUID = '{08DEFFF0-9361-46E4-80B3-5ADA728C9EB5}';
  IID_IPlanVersion: TGUID = '{DE09FF07-FF91-49F7-96A9-9D9F97E6D2CA}';
  IID_IPlanVersions: TGUID = '{859753F4-E910-478D-8C03-1FDC125F6CCD}';
  IID_IPlans: TGUID = '{53F7EE0B-76A5-422B-8AAE-4DCD9F98881D}';
  IID_IPlanVersionLine: TGUID = '{AA118660-BF6F-4328-BF61-D157D9F97067}';
  IID_IPlanVersionLines: TGUID = '{B7979ADF-3EE0-439D-A7F3-268EFC1D56D5}';
  CLASS_Plans: TGUID = '{E746D283-72C6-4D0B-9EF2-78590B8EF0E0}';
  CLASS_Plan: TGUID = '{C1039041-230B-457E-A3F7-863556923355}';
  CLASS_PlanVersions: TGUID = '{08808E16-14E9-46F2-BC78-E698E913C680}';
  CLASS_PlanVersion: TGUID = '{36C6951D-CAC9-4462-AFE9-C0D24EE977C1}';
  CLASS_PlanVersionLines: TGUID = '{F38E3B21-D73F-48FA-BF90-E75A2BD2C348}';
  CLASS_PlanVersionLine: TGUID = '{2098BC17-2F77-4CBA-87BA-85A4996AFAC2}';
  IID_INotificationList: TGUID = '{6513526F-0EC8-4EA7-9BDC-427A6EAB78E6}';
  CLASS_NotificationList: TGUID = '{4854C5FE-9C14-4172-B639-85EA9E746DCF}';
  IID_INotificationItem: TGUID = '{17E11592-DC52-4D46-9869-5F30526404E0}';
  CLASS_NotificationItem: TGUID = '{FC9989A7-7EC5-4C89-8EF2-9480BE49E1E5}';
  IID_ITraceEvents: TGUID = '{80586348-0F57-44C5-AC54-55DE03509BD0}';
  IID_ITraceEvent: TGUID = '{2029B5B5-9E43-4AC2-AE20-3EFADDE0FDDD}';
  CLASS_TraceEvent: TGUID = '{344561E6-3D6A-48C4-B570-A3B4C870312A}';
  CLASS_TraceEvents: TGUID = '{FDC3513B-26FB-46BA-B04F-A654B51A618D}';
  IID_IActualWork: TGUID = '{F0CDB724-9E12-47A1-95E6-6C1C044131D0}';
  IID_IActualWorks: TGUID = '{CEC07278-CA50-4EFF-8ECF-5A484F34D588}';
  IID_IAttribute: TGUID = '{30365ECE-C4A0-4C23-BFDD-4803EFDF68FA}';
  IID_IAttributes: TGUID = '{0934BB80-5049-4768-9806-1464D07FCA4B}';
  CLASS_ActualWork: TGUID = '{711BF1D3-6198-4F49-859E-0462339A6431}';
  CLASS_ActualWorks: TGUID = '{431371BB-6D43-4D58-BA11-433992694BF4}';
  CLASS_Attribute: TGUID = '{E6FA8E98-C294-402E-9006-DF036859A433}';
  CLASS_Attributes: TGUID = '{4541CA09-84B3-4815-A2EF-EC83AF23FFDC}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TTaskState
type
  TTaskState = TOleEnum;
const
  tsNew = $00000000;
  tsIssued = $00000001;
  tsPerformed = $00000002;
  tsPaused = $00000003;
  tsCompleted = $00000004;
  tsArchive = $00000005;
  tsCancelled = $00000006;
  tsScheduled = $00000007;
  tsReached = $00000008;
  tsChecking = $00000009;

// Constants for enum TCalcDirection
type
  TCalcDirection = TOleEnum;
const
  cdAsSoonAsPossible = $00000000;
  cdAsLateAsPossible = $00000001;

// Constants for enum TDeadlineRestriction
type
  TDeadlineRestriction = TOleEnum;
const
  drNone = $00000000;
  drFixed = $00000001;

// Constants for enum TTaskLinkType
type
  TTaskLinkType = TOleEnum;
const
  ltEndBegin = $00000000;
  ltBeginBegin = $00000001;

// Constants for enum TSelectionCriteriaKind
type
  TSelectionCriteriaKind = TOleEnum;
const
  scNative = $00000000;
  scJoinCustomAttribute = $00000001;
  scJoinUser = $00000002;
  scJoinSubscriber = $00000003;
  scJoinExternalObject = $00000004;

// Constants for enum TCollectionKind
type
  TCollectionKind = TOleEnum;
const
  ckEmpty = $00000000;
  ckIncomingTasks = $00000001;
  ckOutcomingTasks = $00000002;
  ckSubscribedTasks = $00000003;
  ckArchivedTasks = $00000004;
  ckCancelledTasks = $00000005;
  ckFavoriteTasks = $00000006;
  ckNewTasks = $00000007;
  ckCompletedTasks = $00000008;
  ckCheckingTasks = $00000009;

// Constants for enum TCollectionAction
type
  TCollectionAction = TOleEnum;
const
  taRead = $00000000;
  taChange = $00000001;
  taAdd = $00000002;
  taDelete = $00000004;

// Constants for enum TLinkDirection
type
  TLinkDirection = TOleEnum;
const
  ldForward = $00000001;
  ldReverse = $00000000;

// Constants for enum TShiftDirection
type
  TShiftDirection = TOleEnum;
const
  sdLeft = $00000000;
  sdRight = $00000001;

// Constants for enum TConflictType
type
  TConflictType = TOleEnum;
const
  ckByResource = $00000000;
  ckByPlanDates = $00000001;
  ckByTerms = $00000002;

// Constants for enum TSaveMode
type
  TSaveMode = TOleEnum;
const
  smOnlyOneTask = $00000000;
  smWithLinkedTasks = $00000001;

// Constants for enum TDeleteMode
type
  TDeleteMode = TOleEnum;
const
  dmOnlyOneTask = $00000000;
  dmWithSubtasks = $00000001;

// Constants for enum TActualFilters
type
  TActualFilters = TOleEnum;
const
  afAll = $00000000;
  afActual = $00000001;
  afNonactual = $00000002;

// Constants for enum TPlanVersionState
type
  TPlanVersionState = TOleEnum;
const
  pvNew = $00000001;
  pvCoordination = $00000002;
  pvApproved = $00000004;
  pvCancelled = $00000008;

// Constants for enum TPlanUserRoles
type
  TPlanUserRoles = TOleEnum;
const
  puOwner = $00000001;
  puCoordinator = $00000002;
  puApprover = $00000004;
  puSubscriber = $00000008;

// Constants for enum TEventTypes
type
  TEventTypes = TOleEnum;
const
  etCreate = $00000000;
  etChange = $00000001;
  etDelete = $00000002;

// Constants for enum TFailureCode
type
  TFailureCode = TOleEnum;
const
  fcAlreadyLinked = $00000001;
  fcDoubleLink = $00000002;
  fcRelative = $00000003;
  fcChain = $00000004;
  fcNoRight = $00000005;
  fcNoFailure = $00000000;

// Constants for enum TEventCode
type
  TEventCode = TOleEnum;
const
  ecState = $00000000;
  ecChecker = $00000001;

// Constants for enum TUserStatus
type
  TUserStatus = TOleEnum;
const
  usAvailabled = $00000000;
  usNotAvailabled = $00000001;
  usFired = $00000002;

// Constants for enum TFixedProperty
type
  TFixedProperty = TOleEnum;
const
  fpWorkload = $00000000;
  fpDuration = $00000001;
  fpPlanWork = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IWBSSystem = interface;
  IWBSSystemDisp = dispinterface;
  ITasks = interface;
  ITasksDisp = dispinterface;
  ITask = interface;
  ITaskDisp = dispinterface;
  ITaskLink = interface;
  ITaskLinkDisp = dispinterface;
  ITaskLinks = interface;
  ITaskLinksDisp = dispinterface;
  IUser = interface;
  IUserDisp = dispinterface;
  IUsers = interface;
  IUsersDisp = dispinterface;
  ICondition = interface;
  IConditionDisp = dispinterface;
  IConditions = interface;
  IConditionsDisp = dispinterface;
  IConditionUnits = interface;
  IConditionUnitsDisp = dispinterface;
  IConditionUnit = interface;
  IConditionUnitDisp = dispinterface;
  IConditionItems = interface;
  IConditionItemsDisp = dispinterface;
  IConditionItem = interface;
  IConditionItemDisp = dispinterface;
  IResultField = interface;
  IResultFieldDisp = dispinterface;
  IResultFields = interface;
  IResultFieldsDisp = dispinterface;
  ISubtasks = interface;
  ISubtasksDisp = dispinterface;
  IAuthority = interface;
  IAuthorityDisp = dispinterface;
  IAttachment = interface;
  IAttachmentDisp = dispinterface;
  IAttachments = interface;
  IAttachmentsDisp = dispinterface;
  ITraceResults = interface;
  ITraceResultsDisp = dispinterface;
  IConflicts = interface;
  IConflictsDisp = dispinterface;
  IConflict = interface;
  IConflictDisp = dispinterface;
  IPlan = interface;
  IPlanDisp = dispinterface;
  IPlanVersion = interface;
  IPlanVersionDisp = dispinterface;
  IPlanVersions = interface;
  IPlanVersionsDisp = dispinterface;
  IPlans = interface;
  IPlansDisp = dispinterface;
  IPlanVersionLine = interface;
  IPlanVersionLineDisp = dispinterface;
  IPlanVersionLines = interface;
  IPlanVersionLinesDisp = dispinterface;
  INotificationList = interface;
  INotificationListDisp = dispinterface;
  INotificationItem = interface;
  INotificationItemDisp = dispinterface;
  ITraceEvents = interface;
  ITraceEventsDisp = dispinterface;
  ITraceEvent = interface;
  ITraceEventDisp = dispinterface;
  IActualWork = interface;
  IActualWorkDisp = dispinterface;
  IActualWorks = interface;
  IActualWorksDisp = dispinterface;
  IAttribute = interface;
  IAttributeDisp = dispinterface;
  IAttributes = interface;
  IAttributesDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  WBSSystem = IWBSSystem;
  Tasks = ITasks;
  TaskLinks = ITaskLinks;
  TaskLink = ITaskLink;
  Task = ITask;
  User = IUser;
  Subtasks = ISubtasks;
  Users = IUsers;
  Authority = IAuthority;
  Attachment = IAttachment;
  Attachments = IAttachments;
  TraceResults = ITraceResults;
  Conflicts = IConflicts;
  Conflict = IConflict;
  Plans = IPlans;
  Plan = IPlan;
  PlanVersions = IPlanVersions;
  PlanVersion = IPlanVersion;
  PlanVersionLines = IPlanVersionLines;
  PlanVersionLine = IPlanVersionLine;
  NotificationList = INotificationList;
  NotificationItem = INotificationItem;
  TraceEvent = ITraceEvent;
  TraceEvents = ITraceEvents;
  ActualWork = IActualWork;
  ActualWorks = IActualWorks;
  Attribute = IAttribute;
  Attributes = IAttributes;


// *********************************************************************//
// Interface: IWBSSystem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DAFC5833-5159-4B5B-ABEC-E5AA835B1DF2}
// *********************************************************************//
  IWBSSystem = interface(IDispatch)
    ['{DAFC5833-5159-4B5B-ABEC-E5AA835B1DF2}']
    function NewTask: ITask; safecall;
    function GetTaskCollection(Kind: TCollectionKind; Param1: OleVariant; Param2: OleVariant): ITasks; safecall;
    function NewCondition: ICondition; safecall;
    function RunMethod(const MethodName: WideString; Params: OleVariant): OleVariant; safecall;
    procedure DeleteTask(TaskID: Integer; Cascade: Integer); safecall;
    procedure CheckModel; safecall;
    function Get_Connected: Integer; safecall;
    function ImportFromMSProjectXML(const FileName: WideString): ITasks; safecall;
    function GetUserList: IUsers; safecall;
    function Get_Connection: OleVariant; safecall;
    procedure Set_Connection(Value: OleVariant); safecall;
    function GetTask(TaskID: Integer): ITask; safecall;
    function Get_CurrentUser: IUser; safecall;
    function Get_MainWindowHandle: LongWord; safecall;
    procedure Set_MainWindowHandle(Value: LongWord); safecall;
    procedure CleanCache; safecall;
    function RefreshTasks(TaskIDs: OleVariant): Integer; safecall;
    procedure RefreshCache; safecall;
    procedure PrefetchLinks(const Tasks: ITasks); safecall;
    function Get_AutoCleanCache: WordBool; safecall;
    procedure Set_AutoCleanCache(Value: WordBool); safecall;
    function NewTrace: Integer; safecall;
    function SaveTrace(IDTrace: Integer): ITraceResults; safecall;
    function DiscardTrace(IDTrace: Integer): ITraceResults; safecall;
    function GetTrace(IDTrace: Integer): ITraceResults; safecall;
    procedure PrefetchWBS(TaskID: Integer); safecall;
    procedure PrefetchProject(ProjectID: Integer); safecall;
    function Get_CalculateConflicts: WordBool; safecall;
    procedure Set_CalculateConflicts(Value: WordBool); safecall;
    procedure SwapTasks(PredecessorID: Integer; SuccessorID: Integer); safecall;
    function NewSubtask(ParentID: Integer): ITask; safecall;
    procedure CopyTo(const SrcCollection: ITasks; const DstTask: ITask); safecall;
    function NewMilestone: ITask; safecall;
    procedure CalculateProject(ProjectID: Integer); safecall;
    function GetPlans(ActualFilter: Integer): IPlans; safecall;
    function NewPlan: ITask; safecall;
    function GetPlan(ID: Integer): IPlan; safecall;
    procedure CalculateCritical(ProjectID: Integer); safecall;
    procedure DeletePlan(IDPlan: Integer); safecall;
    function Dataset2Tasks(Data: OleVariant): ITasks; safecall;
    function GetUserCalendar(inIDUser: Integer): Integer; safecall;
    function GetExceptionList(inIDCalendar: Integer): OleVariant; safecall;
    function GetIinfoAboutCalendar(inIDCalendar: Integer): OleVariant; safecall;
    function TaskInTrace(TaskID: Integer): WordBool; safecall;
    function Get_ReadOnlyDB: WordBool; safecall;
    procedure Set_ReadOnlyDB(Value: WordBool); safecall;
    function FindTasksSimple(const stPattern: WideString; boTopic: WordBool; 
                             boDescription: WordBool; boWorkerName: WordBool; 
                             boAuthorName: WordBool; boAttachments: WordBool; Context: OleVariant; 
                             mode: Integer; attrList: OleVariant): ITasks; safecall;
    procedure PrefetchAtributes(TaskIDs: OleVariant; AtrIDs: OleVariant); safecall;
    function GetPlanCollection(UserID: Integer; inInitiatorRole: Integer; inExecutorRole: Integer; 
                               inSubscriberRole: Integer; StateList: OleVariant; 
                               showArchive: Integer): ITasks; safecall;
    function Get_IssueMode: Integer; safecall;
    procedure Set_IssueMode(Value: Integer); safecall;
    function Get_IssueModeParam1: Integer; safecall;
    procedure Set_IssueModeParam1(Value: Integer); safecall;
    function Copy(const SrcCollection: ITasks): ITasks; safecall;
    procedure CleanCalendarCache; safecall;
    function Get_AuthorityEnabled: WordBool; safecall;
    procedure Set_AuthorityEnabled(Value: WordBool); safecall;
    function Get_RecalcEnabled: WordBool; safecall;
    procedure Set_RecalcEnabled(Value: WordBool); safecall;
    property Connected: Integer read Get_Connected;
    property Connection: OleVariant read Get_Connection write Set_Connection;
    property CurrentUser: IUser read Get_CurrentUser;
    property MainWindowHandle: LongWord read Get_MainWindowHandle write Set_MainWindowHandle;
    property AutoCleanCache: WordBool read Get_AutoCleanCache write Set_AutoCleanCache;
    property CalculateConflicts: WordBool read Get_CalculateConflicts write Set_CalculateConflicts;
    property ReadOnlyDB: WordBool read Get_ReadOnlyDB write Set_ReadOnlyDB;
    property IssueMode: Integer read Get_IssueMode write Set_IssueMode;
    property IssueModeParam1: Integer read Get_IssueModeParam1 write Set_IssueModeParam1;
    property AuthorityEnabled: WordBool read Get_AuthorityEnabled write Set_AuthorityEnabled;
    property RecalcEnabled: WordBool read Get_RecalcEnabled write Set_RecalcEnabled;
  end;

// *********************************************************************//
// DispIntf:  IWBSSystemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DAFC5833-5159-4B5B-ABEC-E5AA835B1DF2}
// *********************************************************************//
  IWBSSystemDisp = dispinterface
    ['{DAFC5833-5159-4B5B-ABEC-E5AA835B1DF2}']
    function NewTask: ITask; dispid 101;
    function GetTaskCollection(Kind: TCollectionKind; Param1: OleVariant; Param2: OleVariant): ITasks; dispid 102;
    function NewCondition: ICondition; dispid 201;
    function RunMethod(const MethodName: WideString; Params: OleVariant): OleVariant; dispid 202;
    procedure DeleteTask(TaskID: Integer; Cascade: Integer); dispid 204;
    procedure CheckModel; dispid 206;
    property Connected: Integer readonly dispid 203;
    function ImportFromMSProjectXML(const FileName: WideString): ITasks; dispid 208;
    function GetUserList: IUsers; dispid 210;
    property Connection: OleVariant dispid 212;
    function GetTask(TaskID: Integer): ITask; dispid 214;
    property CurrentUser: IUser readonly dispid 205;
    property MainWindowHandle: LongWord dispid 207;
    procedure CleanCache; dispid 209;
    function RefreshTasks(TaskIDs: OleVariant): Integer; dispid 211;
    procedure RefreshCache; dispid 213;
    procedure PrefetchLinks(const Tasks: ITasks); dispid 215;
    property AutoCleanCache: WordBool dispid 216;
    function NewTrace: Integer; dispid 218;
    function SaveTrace(IDTrace: Integer): ITraceResults; dispid 219;
    function DiscardTrace(IDTrace: Integer): ITraceResults; dispid 220;
    function GetTrace(IDTrace: Integer): ITraceResults; dispid 221;
    procedure PrefetchWBS(TaskID: Integer); dispid 222;
    procedure PrefetchProject(ProjectID: Integer); dispid 224;
    property CalculateConflicts: WordBool dispid 217;
    procedure SwapTasks(PredecessorID: Integer; SuccessorID: Integer); dispid 223;
    function NewSubtask(ParentID: Integer): ITask; dispid 225;
    procedure CopyTo(const SrcCollection: ITasks; const DstTask: ITask); dispid 226;
    function NewMilestone: ITask; dispid 227;
    procedure CalculateProject(ProjectID: Integer); dispid 228;
    function GetPlans(ActualFilter: Integer): IPlans; dispid 229;
    function NewPlan: ITask; dispid 230;
    function GetPlan(ID: Integer): IPlan; dispid 231;
    procedure CalculateCritical(ProjectID: Integer); dispid 232;
    procedure DeletePlan(IDPlan: Integer); dispid 233;
    function Dataset2Tasks(Data: OleVariant): ITasks; dispid 234;
    function GetUserCalendar(inIDUser: Integer): Integer; dispid 235;
    function GetExceptionList(inIDCalendar: Integer): OleVariant; dispid 236;
    function GetIinfoAboutCalendar(inIDCalendar: Integer): OleVariant; dispid 237;
    function TaskInTrace(TaskID: Integer): WordBool; dispid 238;
    property ReadOnlyDB: WordBool dispid 239;
    function FindTasksSimple(const stPattern: WideString; boTopic: WordBool; 
                             boDescription: WordBool; boWorkerName: WordBool; 
                             boAuthorName: WordBool; boAttachments: WordBool; Context: OleVariant; 
                             mode: Integer; attrList: OleVariant): ITasks; dispid 240;
    procedure PrefetchAtributes(TaskIDs: OleVariant; AtrIDs: OleVariant); dispid 241;
    function GetPlanCollection(UserID: Integer; inInitiatorRole: Integer; inExecutorRole: Integer; 
                               inSubscriberRole: Integer; StateList: OleVariant; 
                               showArchive: Integer): ITasks; dispid 242;
    property IssueMode: Integer dispid 243;
    property IssueModeParam1: Integer dispid 244;
    function Copy(const SrcCollection: ITasks): ITasks; dispid 245;
    procedure CleanCalendarCache; dispid 246;
    property AuthorityEnabled: WordBool dispid 247;
    property RecalcEnabled: WordBool dispid 248;
  end;

// *********************************************************************//
// Interface: ITasks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D2CC8A62-0FEB-4573-8A37-6142F5ED1CA3}
// *********************************************************************//
  ITasks = interface(IDispatch)
    ['{D2CC8A62-0FEB-4573-8A37-6142F5ED1CA3}']
    function Add(const Task: ITask): Integer; safecall;
    procedure Remove(const Task: ITask); safecall;
    function Get_Count: Integer; safecall;
    function Get_Items(Index: Integer): ITask; safecall;
    procedure Set_Items(Index: Integer; const Value: ITask); safecall;
    procedure Clear; safecall;
    procedure Delete(Index: Integer); safecall;
    function Get_Capacity: Integer; safecall;
    procedure Set_Capacity(Value: Integer); safecall;
    function Get_WBSSystem: IWBSSystem; safecall;
    procedure Set_WBSSystem(const Value: IWBSSystem); safecall;
    procedure Exchange(Index1: Integer; Index2: Integer); safecall;
    function FindByTaskID(TaskID: Integer): ITask; safecall;
    procedure SaveChanges(Cascade: Integer); safecall;
    property Count: Integer read Get_Count;
    property Items[Index: Integer]: ITask read Get_Items write Set_Items;
    property Capacity: Integer read Get_Capacity write Set_Capacity;
    property WBSSystem: IWBSSystem read Get_WBSSystem write Set_WBSSystem;
  end;

// *********************************************************************//
// DispIntf:  ITasksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D2CC8A62-0FEB-4573-8A37-6142F5ED1CA3}
// *********************************************************************//
  ITasksDisp = dispinterface
    ['{D2CC8A62-0FEB-4573-8A37-6142F5ED1CA3}']
    function Add(const Task: ITask): Integer; dispid 202;
    procedure Remove(const Task: ITask); dispid 203;
    property Count: Integer readonly dispid 204;
    property Items[Index: Integer]: ITask dispid 201;
    procedure Clear; dispid 205;
    procedure Delete(Index: Integer); dispid 207;
    property Capacity: Integer dispid 208;
    property WBSSystem: IWBSSystem dispid 209;
    procedure Exchange(Index1: Integer; Index2: Integer); dispid 210;
    function FindByTaskID(TaskID: Integer): ITask; dispid 206;
    procedure SaveChanges(Cascade: Integer); dispid 211;
  end;

// *********************************************************************//
// Interface: ITask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {856931B3-C26C-46D6-AFAF-5F64AB8DF63E}
// *********************************************************************//
  ITask = interface(IDispatch)
    ['{856931B3-C26C-46D6-AFAF-5F64AB8DF63E}']
    function Get_State: TTaskState; safecall;
    procedure Set_State(Value: TTaskState); safecall;
    function Get_Completion: Integer; safecall;
    procedure Set_Completion(Value: Integer); safecall;
    function Get_Topic: WideString; safecall;
    procedure Set_Topic(const Value: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const Value: WideString); safecall;
    function Get_Duration: Double; safecall;
    procedure Set_Duration(Value: Double); safecall;
    function Get_PlanDateStart: TDateTime; safecall;
    procedure Set_PlanDateStart(Value: TDateTime); safecall;
    function Get_PlanDateFinish: TDateTime; safecall;
    procedure Set_PlanDateFinish(Value: TDateTime); safecall;
    function Get_CalcDirection: TCalcDirection; safecall;
    procedure Set_CalcDirection(Value: TCalcDirection); safecall;
    function Get_Deadline: TDateTime; safecall;
    procedure Set_Deadline(Value: TDateTime); safecall;
    function Get_PlanStartRestriction: TDeadlineRestriction; safecall;
    procedure Set_PlanStartRestriction(Value: TDeadlineRestriction); safecall;
    function Get_PlanFinishRestriction: TDeadlineRestriction; safecall;
    procedure Set_PlanFinishRestriction(Value: TDeadlineRestriction); safecall;
    function Get_Priority: Integer; safecall;
    procedure Set_Priority(Value: Integer); safecall;
    function Get_DateStart: TDateTime; safecall;
    procedure Set_DateStart(Value: TDateTime); safecall;
    function Get_DateFinish: TDateTime; safecall;
    procedure Set_DateFinish(Value: TDateTime); safecall;
    function Get_IsMilestone: WordBool; safecall;
    function Get_TakeWorkloadUser: Integer; safecall;
    procedure Set_TakeWorkloadUser(Value: Integer); safecall;
    function Get_UserWorkload: Integer; safecall;
    procedure Set_UserWorkload(Value: Integer); safecall;
    function Get_Parent: ITask; safecall;
    procedure Set_Parent(const Value: ITask); safecall;
    function Get_Subtasks: ITasks; safecall;
    function Get_NextTasks: ITaskLinks; safecall;
    function Get_PreviousTasks: ITaskLinks; safecall;
    function Get_Author: IUser; safecall;
    procedure Set_Author(const Value: IUser); safecall;
    function Get_Worker: IUser; safecall;
    procedure Set_Worker(const Value: IUser); safecall;
    function Get_ID: Integer; safecall;
    function Get_GUID: TGUID; safecall;
    procedure Set_GUID(Value: TGUID); safecall;
    function Bind(LinkType: TTaskLinkType; const DestinationTask: ITask): ITaskLink; safecall;
    procedure Unbind(const Task: ITask); safecall;
    procedure SaveChanges(Cascade: Integer); safecall;
    function Refresh: WordBool; safecall;
    function Get_WBSSystem: IWBSSystem; safecall;
    procedure Set_WBSSystem(const Value: IWBSSystem); safecall;
    function Get_WBSIndex: Integer; safecall;
    procedure Set_WBSIndex(Value: Integer); safecall;
    procedure AddSubTask(const Task: ITask); safecall;
    procedure RemoveSubTask(const Task: ITask); safecall;
    function Get_PlanDuration: Double; safecall;
    procedure Set_PlanDuration(Value: Double); safecall;
    function Get_Changed: WordBool; safecall;
    function Get_UserData: OleVariant; safecall;
    procedure Set_UserData(Value: OleVariant); safecall;
    function Get_Summary: Integer; safecall;
    function GetAuthority: IAuthority; safecall;
    function Get_ParentExists: WordBool; safecall;
    function Get_WorkerIsTrusted: WordBool; safecall;
    procedure Set_WorkerIsTrusted(Value: WordBool); safecall;
    procedure SetPlanPeriod(Start: TDateTime; Finish: TDateTime); safecall;
    function Get_Subscribers: IUsers; safecall;
    function Get_Attachments: IAttachments; safecall;
    procedure AddSubscriber(const Subscriber: IUser); safecall;
    procedure RemoveSubscriber(const Subscriber: IUser); safecall;
    procedure TrustSubscriber(const Subscriber: IUser; Trusted: WordBool); safecall;
    function NewAttachment(const Name: WideString; const URL: WideString; ObjID: Integer; 
                           ObjType: Integer; Semantics: Integer): Integer; safecall;
    procedure RemoveAttachment(AttachmentID: Integer); safecall;
    procedure RenameAttachment(AttachmentID: Integer; const Name: WideString); safecall;
    procedure UpdateLinkLag(LinkID: Integer; inLag: Integer); safecall;
    procedure UpdateLinkType(LinkID: Integer; inLinkType: TTaskLinkType); safecall;
    function Get_ExpandedSubtasks: ITasks; safecall;
    function IncWBSPosition: Integer; safecall;
    function DecWBSPosition: Integer; safecall;
    function NextSiebling: ITask; safecall;
    function PrevSiebling: ITask; safecall;
    function IsDescendantOf(const Ancestor: ITask): Integer; safecall;
    function IsPredecessorOf(const FollowerTask: ITask): Integer; safecall;
    procedure AddToFavorites; safecall;
    procedure RemoveFromFavorites; safecall;
    function Get_IsFavorite: WordBool; safecall;
    procedure Set_IsFavorite(Value: WordBool); safecall;
    function Get_ListOfAncestors: ITasks; safecall;
    procedure Stub(Hwnd: Integer); safecall;
    function Get_ProjectID: Integer; safecall;
    procedure Set_ProjectID(Value: Integer); safecall;
    function GetProjectID: Integer; safecall;
    function Get_TimeConflict: WordBool; safecall;
    procedure Set_TimeConflict(Value: WordBool); safecall;
    function Get_DeadlineConflict: WordBool; safecall;
    procedure Set_DeadlineConflict(Value: WordBool); safecall;
    function Get_ResourceConflict: WordBool; safecall;
    procedure Set_ResourceConflict(Value: WordBool); safecall;
    function GetConflicts: IConflicts; safecall;
    function Get_ParentID: Integer; safecall;
    procedure Set_ParentID(Value: Integer); safecall;
    function CheckLinksLoop(const SuccTask: ITask): Integer; safecall;
    procedure Calculate; safecall;
    function Get_IsAttachmentExist: WordBool; safecall;
    function Get_IsCriticalTask: Integer; safecall;
    procedure Set_IsCriticalTask(Value: Integer); safecall;
    function Get_ChangeComment: WideString; safecall;
    procedure Set_ChangeComment(const Value: WideString); safecall;
    function GetFullPath: WideString; safecall;
    function Get_EstimatedDateFinish: TDateTime; safecall;
    function Get_PathDelimiter: WideString; safecall;
    procedure Set_PathDelimiter(const Value: WideString); safecall;
    function ConservativeRefresh: WordBool; safecall;
    function Get_TypicalBP: Integer; safecall;
    procedure Set_TypicalBP(Value: Integer); safecall;
    function Get_WorkingBP: Integer; safecall;
    procedure Set_WorkingBP(Value: Integer); safecall;
    function Get_BPStartMode: Integer; safecall;
    procedure Set_BPStartMode(Value: Integer); safecall;
    function Get_BPObjectID: Integer; safecall;
    procedure Set_BPObjectID(Value: Integer); safecall;
    function Get_BPStartPoint: Integer; safecall;
    procedure Set_BPStartPoint(Value: Integer); safecall;
    function IsPossibleLink(const SuccTask: ITask; var FailureCode: TFailureCode; 
                            var stFailureReason: WideString; var ChainTasks: ITasks): Integer; safecall;
    function Get_Checker: IUser; safecall;
    procedure Set_Checker(const Value: IUser); safecall;
    procedure SetStateWithComment(State: TTaskState; const Comment: WideString); safecall;
    function Get_CheckerReceived: Integer; safecall;
    procedure Set_CheckerReceived(Value: Integer); safecall;
    function Get_WorkerReceived: Integer; safecall;
    procedure Set_WorkerReceived(Value: Integer); safecall;
    function Get_PlanWork: Double; safecall;
    procedure Set_PlanWork(Value: Double); safecall;
    function Get_ActualWork: Double; safecall;
    procedure Set_ActualWork(Value: Double); safecall;
    function Get_FixedProperty: TFixedProperty; safecall;
    procedure Set_FixedProperty(Value: TFixedProperty); safecall;
    function Get_ActualWorks: IActualWorks; safecall;
    procedure Set_ActualWorks(const Value: IActualWorks); safecall;
    function NewActualWorkRecord(Work: Double; aDate: TDateTime; const Comment: WideString): Integer; safecall;
    procedure RemoveActualWorkRecord(ActualWorkID: Integer); safecall;
    procedure UpdateActualWorkRecord(ActualWorkID: Integer; Work: Double; aDate: TDateTime; 
                                     const Comment: WideString); safecall;
    function Get_Attributes: IAttributes; safecall;
    function Get_IsPlan: WordBool; safecall;
    procedure Set_IsPlan(Value: WordBool); safecall;
    function Get_IsArchive: WordBool; safecall;
    procedure Set_IsArchive(Value: WordBool); safecall;
    function Get_Plan: ITask; safecall;
    property State: TTaskState read Get_State write Set_State;
    property Completion: Integer read Get_Completion write Set_Completion;
    property Topic: WideString read Get_Topic write Set_Topic;
    property Description: WideString read Get_Description write Set_Description;
    property Duration: Double read Get_Duration write Set_Duration;
    property PlanDateStart: TDateTime read Get_PlanDateStart write Set_PlanDateStart;
    property PlanDateFinish: TDateTime read Get_PlanDateFinish write Set_PlanDateFinish;
    property CalcDirection: TCalcDirection read Get_CalcDirection write Set_CalcDirection;
    property Deadline: TDateTime read Get_Deadline write Set_Deadline;
    property PlanStartRestriction: TDeadlineRestriction read Get_PlanStartRestriction write Set_PlanStartRestriction;
    property PlanFinishRestriction: TDeadlineRestriction read Get_PlanFinishRestriction write Set_PlanFinishRestriction;
    property Priority: Integer read Get_Priority write Set_Priority;
    property DateStart: TDateTime read Get_DateStart write Set_DateStart;
    property DateFinish: TDateTime read Get_DateFinish write Set_DateFinish;
    property IsMilestone: WordBool read Get_IsMilestone;
    property TakeWorkloadUser: Integer read Get_TakeWorkloadUser write Set_TakeWorkloadUser;
    property UserWorkload: Integer read Get_UserWorkload write Set_UserWorkload;
    property Parent: ITask read Get_Parent write Set_Parent;
    property Subtasks: ITasks read Get_Subtasks;
    property NextTasks: ITaskLinks read Get_NextTasks;
    property PreviousTasks: ITaskLinks read Get_PreviousTasks;
    property Author: IUser read Get_Author write Set_Author;
    property Worker: IUser read Get_Worker write Set_Worker;
    property ID: Integer read Get_ID;
    property GUID: TGUID read Get_GUID write Set_GUID;
    property WBSSystem: IWBSSystem read Get_WBSSystem write Set_WBSSystem;
    property WBSIndex: Integer read Get_WBSIndex write Set_WBSIndex;
    property PlanDuration: Double read Get_PlanDuration write Set_PlanDuration;
    property Changed: WordBool read Get_Changed;
    property UserData: OleVariant read Get_UserData write Set_UserData;
    property Summary: Integer read Get_Summary;
    property ParentExists: WordBool read Get_ParentExists;
    property WorkerIsTrusted: WordBool read Get_WorkerIsTrusted write Set_WorkerIsTrusted;
    property Subscribers: IUsers read Get_Subscribers;
    property Attachments: IAttachments read Get_Attachments;
    property ExpandedSubtasks: ITasks read Get_ExpandedSubtasks;
    property IsFavorite: WordBool read Get_IsFavorite write Set_IsFavorite;
    property ListOfAncestors: ITasks read Get_ListOfAncestors;
    property ProjectID: Integer read Get_ProjectID write Set_ProjectID;
    property TimeConflict: WordBool read Get_TimeConflict write Set_TimeConflict;
    property DeadlineConflict: WordBool read Get_DeadlineConflict write Set_DeadlineConflict;
    property ResourceConflict: WordBool read Get_ResourceConflict write Set_ResourceConflict;
    property ParentID: Integer read Get_ParentID write Set_ParentID;
    property IsAttachmentExist: WordBool read Get_IsAttachmentExist;
    property IsCriticalTask: Integer read Get_IsCriticalTask write Set_IsCriticalTask;
    property ChangeComment: WideString read Get_ChangeComment write Set_ChangeComment;
    property EstimatedDateFinish: TDateTime read Get_EstimatedDateFinish;
    property PathDelimiter: WideString read Get_PathDelimiter write Set_PathDelimiter;
    property TypicalBP: Integer read Get_TypicalBP write Set_TypicalBP;
    property WorkingBP: Integer read Get_WorkingBP write Set_WorkingBP;
    property BPStartMode: Integer read Get_BPStartMode write Set_BPStartMode;
    property BPObjectID: Integer read Get_BPObjectID write Set_BPObjectID;
    property BPStartPoint: Integer read Get_BPStartPoint write Set_BPStartPoint;
    property Checker: IUser read Get_Checker write Set_Checker;
    property CheckerReceived: Integer read Get_CheckerReceived write Set_CheckerReceived;
    property WorkerReceived: Integer read Get_WorkerReceived write Set_WorkerReceived;
    property PlanWork: Double read Get_PlanWork write Set_PlanWork;
    property ActualWork: Double read Get_ActualWork write Set_ActualWork;
    property FixedProperty: TFixedProperty read Get_FixedProperty write Set_FixedProperty;
    property ActualWorks: IActualWorks read Get_ActualWorks write Set_ActualWorks;
    property Attributes: IAttributes read Get_Attributes;
    property IsPlan: WordBool read Get_IsPlan write Set_IsPlan;
    property IsArchive: WordBool read Get_IsArchive write Set_IsArchive;
    property Plan: ITask read Get_Plan;
  end;

// *********************************************************************//
// DispIntf:  ITaskDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {856931B3-C26C-46D6-AFAF-5F64AB8DF63E}
// *********************************************************************//
  ITaskDisp = dispinterface
    ['{856931B3-C26C-46D6-AFAF-5F64AB8DF63E}']
    property State: TTaskState dispid 201;
    property Completion: Integer dispid 203;
    property Topic: WideString dispid 204;
    property Description: WideString dispid 205;
    property Duration: Double dispid 206;
    property PlanDateStart: TDateTime dispid 207;
    property PlanDateFinish: TDateTime dispid 208;
    property CalcDirection: TCalcDirection dispid 209;
    property Deadline: TDateTime dispid 210;
    property PlanStartRestriction: TDeadlineRestriction dispid 211;
    property PlanFinishRestriction: TDeadlineRestriction dispid 212;
    property Priority: Integer dispid 213;
    property DateStart: TDateTime dispid 214;
    property DateFinish: TDateTime dispid 215;
    property IsMilestone: WordBool readonly dispid 216;
    property TakeWorkloadUser: Integer dispid 217;
    property UserWorkload: Integer dispid 218;
    property Parent: ITask dispid 219;
    property Subtasks: ITasks readonly dispid 220;
    property NextTasks: ITaskLinks readonly dispid 221;
    property PreviousTasks: ITaskLinks readonly dispid 222;
    property Author: IUser dispid 223;
    property Worker: IUser dispid 224;
    property ID: Integer readonly dispid 225;
    property GUID: {??TGUID}OleVariant dispid 226;
    function Bind(LinkType: TTaskLinkType; const DestinationTask: ITask): ITaskLink; dispid 227;
    procedure Unbind(const Task: ITask); dispid 228;
    procedure SaveChanges(Cascade: Integer); dispid 229;
    function Refresh: WordBool; dispid 234;
    property WBSSystem: IWBSSystem dispid 235;
    property WBSIndex: Integer dispid 236;
    procedure AddSubTask(const Task: ITask); dispid 237;
    procedure RemoveSubTask(const Task: ITask); dispid 238;
    property PlanDuration: Double dispid 239;
    property Changed: WordBool readonly dispid 230;
    property UserData: OleVariant dispid 231;
    property Summary: Integer readonly dispid 232;
    function GetAuthority: IAuthority; dispid 233;
    property ParentExists: WordBool readonly dispid 240;
    property WorkerIsTrusted: WordBool dispid 241;
    procedure SetPlanPeriod(Start: TDateTime; Finish: TDateTime); dispid 242;
    property Subscribers: IUsers readonly dispid 243;
    property Attachments: IAttachments readonly dispid 244;
    procedure AddSubscriber(const Subscriber: IUser); dispid 245;
    procedure RemoveSubscriber(const Subscriber: IUser); dispid 246;
    procedure TrustSubscriber(const Subscriber: IUser; Trusted: WordBool); dispid 247;
    function NewAttachment(const Name: WideString; const URL: WideString; ObjID: Integer; 
                           ObjType: Integer; Semantics: Integer): Integer; dispid 248;
    procedure RemoveAttachment(AttachmentID: Integer); dispid 249;
    procedure RenameAttachment(AttachmentID: Integer; const Name: WideString); dispid 250;
    procedure UpdateLinkLag(LinkID: Integer; inLag: Integer); dispid 251;
    procedure UpdateLinkType(LinkID: Integer; inLinkType: TTaskLinkType); dispid 252;
    property ExpandedSubtasks: ITasks readonly dispid 253;
    function IncWBSPosition: Integer; dispid 254;
    function DecWBSPosition: Integer; dispid 255;
    function NextSiebling: ITask; dispid 256;
    function PrevSiebling: ITask; dispid 257;
    function IsDescendantOf(const Ancestor: ITask): Integer; dispid 258;
    function IsPredecessorOf(const FollowerTask: ITask): Integer; dispid 259;
    procedure AddToFavorites; dispid 261;
    procedure RemoveFromFavorites; dispid 262;
    property IsFavorite: WordBool dispid 260;
    property ListOfAncestors: ITasks readonly dispid 264;
    procedure Stub(Hwnd: Integer); dispid 265;
    property ProjectID: Integer dispid 266;
    function GetProjectID: Integer; dispid 267;
    property TimeConflict: WordBool dispid 263;
    property DeadlineConflict: WordBool dispid 268;
    property ResourceConflict: WordBool dispid 269;
    function GetConflicts: IConflicts; dispid 270;
    property ParentID: Integer dispid 271;
    function CheckLinksLoop(const SuccTask: ITask): Integer; dispid 272;
    procedure Calculate; dispid 273;
    property IsAttachmentExist: WordBool readonly dispid 274;
    property IsCriticalTask: Integer dispid 202;
    property ChangeComment: WideString dispid 275;
    function GetFullPath: WideString; dispid 276;
    property EstimatedDateFinish: TDateTime readonly dispid 277;
    property PathDelimiter: WideString dispid 278;
    function ConservativeRefresh: WordBool; dispid 279;
    property TypicalBP: Integer dispid 280;
    property WorkingBP: Integer dispid 281;
    property BPStartMode: Integer dispid 282;
    property BPObjectID: Integer dispid 283;
    property BPStartPoint: Integer dispid 284;
    function IsPossibleLink(const SuccTask: ITask; var FailureCode: TFailureCode; 
                            var stFailureReason: WideString; var ChainTasks: ITasks): Integer; dispid 285;
    property Checker: IUser dispid 286;
    procedure SetStateWithComment(State: TTaskState; const Comment: WideString); dispid 287;
    property CheckerReceived: Integer dispid 288;
    property WorkerReceived: Integer dispid 289;
    property PlanWork: Double dispid 290;
    property ActualWork: Double dispid 291;
    property FixedProperty: TFixedProperty dispid 292;
    property ActualWorks: IActualWorks dispid 293;
    function NewActualWorkRecord(Work: Double; aDate: TDateTime; const Comment: WideString): Integer; dispid 294;
    procedure RemoveActualWorkRecord(ActualWorkID: Integer); dispid 295;
    procedure UpdateActualWorkRecord(ActualWorkID: Integer; Work: Double; aDate: TDateTime; 
                                     const Comment: WideString); dispid 296;
    property Attributes: IAttributes readonly dispid 297;
    property IsPlan: WordBool dispid 298;
    property IsArchive: WordBool dispid 299;
    property Plan: ITask readonly dispid 300;
  end;

// *********************************************************************//
// Interface: ITaskLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {639E8605-406D-48D1-B4AF-16D37596775C}
// *********************************************************************//
  ITaskLink = interface(IDispatch)
    ['{639E8605-406D-48D1-B4AF-16D37596775C}']
    function Get_LinkType: TTaskLinkType; safecall;
    function Get_LinkedTask: ITask; safecall;
    function Get_Lag: Integer; safecall;
    function Get_Owner: ITask; safecall;
    function Get_WBSSystem: IWBSSystem; safecall;
    procedure Set_WBSSystem(const Value: IWBSSystem); safecall;
    function Get_IDLink: Integer; safecall;
    function Get_LinkedTaskID: Integer; safecall;
    function Get_OwnerID: Integer; safecall;
    property LinkType: TTaskLinkType read Get_LinkType;
    property LinkedTask: ITask read Get_LinkedTask;
    property Lag: Integer read Get_Lag;
    property Owner: ITask read Get_Owner;
    property WBSSystem: IWBSSystem read Get_WBSSystem write Set_WBSSystem;
    property IDLink: Integer read Get_IDLink;
    property LinkedTaskID: Integer read Get_LinkedTaskID;
    property OwnerID: Integer read Get_OwnerID;
  end;

// *********************************************************************//
// DispIntf:  ITaskLinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {639E8605-406D-48D1-B4AF-16D37596775C}
// *********************************************************************//
  ITaskLinkDisp = dispinterface
    ['{639E8605-406D-48D1-B4AF-16D37596775C}']
    property LinkType: TTaskLinkType readonly dispid 201;
    property LinkedTask: ITask readonly dispid 202;
    property Lag: Integer readonly dispid 203;
    property Owner: ITask readonly dispid 204;
    property WBSSystem: IWBSSystem dispid 205;
    property IDLink: Integer readonly dispid 206;
    property LinkedTaskID: Integer readonly dispid 207;
    property OwnerID: Integer readonly dispid 208;
  end;

// *********************************************************************//
// Interface: ITaskLinks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00916179-905E-44BE-91F6-2758E7AA80A1}
// *********************************************************************//
  ITaskLinks = interface(IDispatch)
    ['{00916179-905E-44BE-91F6-2758E7AA80A1}']
    function Get_Count: Integer; safecall;
    function Get_Items(Index: Integer): ITaskLink; safecall;
    procedure Set_Items(Index: Integer; const Value: ITaskLink); safecall;
    function Get_WBSSystem: IWBSSystem; safecall;
    procedure Set_WBSSystem(const Value: IWBSSystem); safecall;
    property Count: Integer read Get_Count;
    property Items[Index: Integer]: ITaskLink read Get_Items write Set_Items;
    property WBSSystem: IWBSSystem read Get_WBSSystem write Set_WBSSystem;
  end;

// *********************************************************************//
// DispIntf:  ITaskLinksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00916179-905E-44BE-91F6-2758E7AA80A1}
// *********************************************************************//
  ITaskLinksDisp = dispinterface
    ['{00916179-905E-44BE-91F6-2758E7AA80A1}']
    property Count: Integer readonly dispid 204;
    property Items[Index: Integer]: ITaskLink dispid 201;
    property WBSSystem: IWBSSystem dispid 207;
  end;

// *********************************************************************//
// Interface: IUser
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B65D3F30-697F-4FD4-BB6B-D9CA307A8AE6}
// *********************************************************************//
  IUser = interface(IDispatch)
    ['{B65D3F30-697F-4FD4-BB6B-D9CA307A8AE6}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const Value: WideString); safecall;
    function Get_Trusted: WordBool; safecall;
    procedure Set_Trusted(Value: WordBool); safecall;
    function Get_EMail: WideString; safecall;
    procedure Set_EMail(const Value: WideString); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Index(Value: Integer); safecall;
    function Get_UserGUID: WideString; safecall;
    procedure Set_UserGUID(const Value: WideString); safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    function Get_Status: TUserStatus; safecall;
    procedure Set_Status(Value: TUserStatus); safecall;
    property Name: WideString read Get_Name write Set_Name;
    property ID: Integer read Get_ID write Set_ID;
    property FullName: WideString read Get_FullName write Set_FullName;
    property Trusted: WordBool read Get_Trusted write Set_Trusted;
    property EMail: WideString read Get_EMail write Set_EMail;
    property Index: Integer read Get_Index write Set_Index;
    property UserGUID: WideString read Get_UserGUID write Set_UserGUID;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
    property Status: TUserStatus read Get_Status write Set_Status;
  end;

// *********************************************************************//
// DispIntf:  IUserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B65D3F30-697F-4FD4-BB6B-D9CA307A8AE6}
// *********************************************************************//
  IUserDisp = dispinterface
    ['{B65D3F30-697F-4FD4-BB6B-D9CA307A8AE6}']
    property Name: WideString dispid 201;
    property ID: Integer dispid 202;
    property FullName: WideString dispid 203;
    property Trusted: WordBool dispid 204;
    property EMail: WideString dispid 205;
    property Index: Integer dispid 206;
    property UserGUID: WideString dispid 207;
    property SysObj: IWBSSystem dispid 208;
    property Status: TUserStatus dispid 209;
  end;

// *********************************************************************//
// Interface: IUsers
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48AF8A13-9FB3-4B63-8A30-CD7A0C09833F}
// *********************************************************************//
  IUsers = interface(IDispatch)
    ['{48AF8A13-9FB3-4B63-8A30-CD7A0C09833F}']
    function Get_Items(Index: Integer): IUser; safecall;
    procedure Set_Items(Index: Integer; const Value: IUser); safecall;
    function Get_Count: Integer; safecall;
    function Add(const User: IUser): Integer; safecall;
    procedure Remove(const User: IUser); safecall;
    function FindByFullName(const FullName: WideString): Integer; safecall;
    function FindByName(const Name: WideString): IUser; safecall;
    function FindByID(ID: Integer): IUser; safecall;
    function IndexOf(const User: IUser): Integer; safecall;
    property Items[Index: Integer]: IUser read Get_Items write Set_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IUsersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48AF8A13-9FB3-4B63-8A30-CD7A0C09833F}
// *********************************************************************//
  IUsersDisp = dispinterface
    ['{48AF8A13-9FB3-4B63-8A30-CD7A0C09833F}']
    property Items[Index: Integer]: IUser dispid 201;
    property Count: Integer readonly dispid 202;
    function Add(const User: IUser): Integer; dispid 203;
    procedure Remove(const User: IUser); dispid 204;
    function FindByFullName(const FullName: WideString): Integer; dispid 205;
    function FindByName(const Name: WideString): IUser; dispid 206;
    function FindByID(ID: Integer): IUser; dispid 207;
    function IndexOf(const User: IUser): Integer; dispid 208;
  end;

// *********************************************************************//
// Interface: ICondition
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {497EEA36-119E-449F-9CE6-4AD27A213698}
// *********************************************************************//
  ICondition = interface(IDispatch)
    ['{497EEA36-119E-449F-9CE6-4AD27A213698}']
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_Units: IConditionUnits; safecall;
    procedure Set_Units(const Value: IConditionUnits); safecall;
    function Get_ConditionType: Integer; safecall;
    procedure Set_ConditionType(Value: Integer); safecall;
    function Get_ResultFields: IResultFields; safecall;
    procedure Set_ResultFields(const Value: IResultFields); safecall;
    procedure SaveChanges; safecall;
    property ID: Integer read Get_ID write Set_ID;
    property Name: WideString read Get_Name write Set_Name;
    property Units: IConditionUnits read Get_Units write Set_Units;
    property ConditionType: Integer read Get_ConditionType write Set_ConditionType;
    property ResultFields: IResultFields read Get_ResultFields write Set_ResultFields;
  end;

// *********************************************************************//
// DispIntf:  IConditionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {497EEA36-119E-449F-9CE6-4AD27A213698}
// *********************************************************************//
  IConditionDisp = dispinterface
    ['{497EEA36-119E-449F-9CE6-4AD27A213698}']
    property ID: Integer dispid 201;
    property Name: WideString dispid 202;
    property Units: IConditionUnits dispid 203;
    property ConditionType: Integer dispid 204;
    property ResultFields: IResultFields dispid 205;
    procedure SaveChanges; dispid 206;
  end;

// *********************************************************************//
// Interface: IConditions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9991AD4-C57E-45F0-9C25-8789531EAAA2}
// *********************************************************************//
  IConditions = interface(IDispatch)
    ['{A9991AD4-C57E-45F0-9C25-8789531EAAA2}']
    function Get_Items(Index: Integer): ICondition; safecall;
    procedure Set_Items(Index: Integer; const Value: ICondition); safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    procedure Add(const Condition: ICondition); safecall;
    procedure Remove(const Condition: ICondition); safecall;
    property Items[Index: Integer]: ICondition read Get_Items write Set_Items;
    property Count: Integer read Get_Count write Set_Count;
  end;

// *********************************************************************//
// DispIntf:  IConditionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9991AD4-C57E-45F0-9C25-8789531EAAA2}
// *********************************************************************//
  IConditionsDisp = dispinterface
    ['{A9991AD4-C57E-45F0-9C25-8789531EAAA2}']
    property Items[Index: Integer]: ICondition dispid 201;
    property Count: Integer dispid 202;
    procedure Add(const Condition: ICondition); dispid 203;
    procedure Remove(const Condition: ICondition); dispid 204;
  end;

// *********************************************************************//
// Interface: IConditionUnits
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08101787-A237-47E4-B555-BBA06B83D3FE}
// *********************************************************************//
  IConditionUnits = interface(IDispatch)
    ['{08101787-A237-47E4-B555-BBA06B83D3FE}']
    function Get_Items(Index: Integer): IConditionUnit; safecall;
    procedure Set_Items(Index: Integer; const Value: IConditionUnit); safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    function Add: IConditionUnit; safecall;
    procedure Remove(const ConditionUnit: IConditionUnit); safecall;
    property Items[Index: Integer]: IConditionUnit read Get_Items write Set_Items;
    property Count: Integer read Get_Count write Set_Count;
  end;

// *********************************************************************//
// DispIntf:  IConditionUnitsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08101787-A237-47E4-B555-BBA06B83D3FE}
// *********************************************************************//
  IConditionUnitsDisp = dispinterface
    ['{08101787-A237-47E4-B555-BBA06B83D3FE}']
    property Items[Index: Integer]: IConditionUnit dispid 201;
    property Count: Integer dispid 202;
    function Add: IConditionUnit; dispid 203;
    procedure Remove(const ConditionUnit: IConditionUnit); dispid 204;
  end;

// *********************************************************************//
// Interface: IConditionUnit
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C334A4EB-7102-4ECF-A5FF-EE0006453384}
// *********************************************************************//
  IConditionUnit = interface(IDispatch)
    ['{C334A4EB-7102-4ECF-A5FF-EE0006453384}']
    function Get_IsOperation: Integer; safecall;
    procedure Set_IsOperation(Value: Integer); safecall;
    function Get_LogicalOperation: Integer; safecall;
    procedure Set_LogicalOperation(Value: Integer); safecall;
    function Get_ConditionItems: IConditionItems; safecall;
    procedure Set_ConditionItems(const Value: IConditionItems); safecall;
    property IsOperation: Integer read Get_IsOperation write Set_IsOperation;
    property LogicalOperation: Integer read Get_LogicalOperation write Set_LogicalOperation;
    property ConditionItems: IConditionItems read Get_ConditionItems write Set_ConditionItems;
  end;

// *********************************************************************//
// DispIntf:  IConditionUnitDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C334A4EB-7102-4ECF-A5FF-EE0006453384}
// *********************************************************************//
  IConditionUnitDisp = dispinterface
    ['{C334A4EB-7102-4ECF-A5FF-EE0006453384}']
    property IsOperation: Integer dispid 201;
    property LogicalOperation: Integer dispid 202;
    property ConditionItems: IConditionItems dispid 203;
  end;

// *********************************************************************//
// Interface: IConditionItems
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDA3BF63-B438-4A0E-ADA8-0CDE9854FEE2}
// *********************************************************************//
  IConditionItems = interface(IDispatch)
    ['{BDA3BF63-B438-4A0E-ADA8-0CDE9854FEE2}']
    function Get_Items(Index: Integer): IConditionItem; safecall;
    procedure Set_Items(Index: Integer; const Value: IConditionItem); safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    function Add: IConditionItem; safecall;
    procedure Remove(const ConditionItem: IConditionItem); safecall;
    property Items[Index: Integer]: IConditionItem read Get_Items write Set_Items;
    property Count: Integer read Get_Count write Set_Count;
  end;

// *********************************************************************//
// DispIntf:  IConditionItemsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDA3BF63-B438-4A0E-ADA8-0CDE9854FEE2}
// *********************************************************************//
  IConditionItemsDisp = dispinterface
    ['{BDA3BF63-B438-4A0E-ADA8-0CDE9854FEE2}']
    property Items[Index: Integer]: IConditionItem dispid 201;
    property Count: Integer dispid 202;
    function Add: IConditionItem; dispid 203;
    procedure Remove(const ConditionItem: IConditionItem); dispid 204;
  end;

// *********************************************************************//
// Interface: IConditionItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7282D387-1CA3-4767-9A12-C4FA3015F870}
// *********************************************************************//
  IConditionItem = interface(IDispatch)
    ['{7282D387-1CA3-4767-9A12-C4FA3015F870}']
    function Get_IsOperation: Integer; safecall;
    procedure Set_IsOperation(Value: Integer); safecall;
    function Get_LogicalOperation: Integer; safecall;
    procedure Set_LogicalOperation(Value: Integer); safecall;
    function Get_AttrID: Integer; safecall;
    procedure Set_AttrID(Value: Integer); safecall;
    function Get_AttrName: WideString; safecall;
    procedure Set_AttrName(const Value: WideString); safecall;
    function Get_AttrKind: TSelectionCriteriaKind; safecall;
    procedure Set_AttrKind(Value: TSelectionCriteriaKind); safecall;
    function Get_CompareOperation: Integer; safecall;
    procedure Set_CompareOperation(Value: Integer); safecall;
    function Get_AttrValue: OleVariant; safecall;
    procedure Set_AttrValue(Value: OleVariant); safecall;
    function Get_AttrType: Integer; safecall;
    procedure Set_AttrType(Value: Integer); safecall;
    property IsOperation: Integer read Get_IsOperation write Set_IsOperation;
    property LogicalOperation: Integer read Get_LogicalOperation write Set_LogicalOperation;
    property AttrID: Integer read Get_AttrID write Set_AttrID;
    property AttrName: WideString read Get_AttrName write Set_AttrName;
    property AttrKind: TSelectionCriteriaKind read Get_AttrKind write Set_AttrKind;
    property CompareOperation: Integer read Get_CompareOperation write Set_CompareOperation;
    property AttrValue: OleVariant read Get_AttrValue write Set_AttrValue;
    property AttrType: Integer read Get_AttrType write Set_AttrType;
  end;

// *********************************************************************//
// DispIntf:  IConditionItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7282D387-1CA3-4767-9A12-C4FA3015F870}
// *********************************************************************//
  IConditionItemDisp = dispinterface
    ['{7282D387-1CA3-4767-9A12-C4FA3015F870}']
    property IsOperation: Integer dispid 201;
    property LogicalOperation: Integer dispid 202;
    property AttrID: Integer dispid 203;
    property AttrName: WideString dispid 204;
    property AttrKind: TSelectionCriteriaKind dispid 205;
    property CompareOperation: Integer dispid 206;
    property AttrValue: OleVariant dispid 207;
    property AttrType: Integer dispid 208;
  end;

// *********************************************************************//
// Interface: IResultField
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {981D2346-0B02-4318-A041-69D27B86D981}
// *********************************************************************//
  IResultField = interface(IDispatch)
    ['{981D2346-0B02-4318-A041-69D27B86D981}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_FieldKind: TSelectionCriteriaKind; safecall;
    procedure Set_FieldKind(Value: TSelectionCriteriaKind); safecall;
    property Name: WideString read Get_Name write Set_Name;
    property FieldKind: TSelectionCriteriaKind read Get_FieldKind write Set_FieldKind;
  end;

// *********************************************************************//
// DispIntf:  IResultFieldDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {981D2346-0B02-4318-A041-69D27B86D981}
// *********************************************************************//
  IResultFieldDisp = dispinterface
    ['{981D2346-0B02-4318-A041-69D27B86D981}']
    property Name: WideString dispid 201;
    property FieldKind: TSelectionCriteriaKind dispid 202;
  end;

// *********************************************************************//
// Interface: IResultFields
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0E27C0FD-6360-4F8C-864C-012E84A8546B}
// *********************************************************************//
  IResultFields = interface(IDispatch)
    ['{0E27C0FD-6360-4F8C-864C-012E84A8546B}']
    function Get_Items(Index: Integer): IResultField; safecall;
    procedure Set_Items(Index: Integer; const Value: IResultField); safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    function Add: IResultField; safecall;
    procedure Remove(const ResultField: IResultField); safecall;
    property Items[Index: Integer]: IResultField read Get_Items write Set_Items;
    property Count: Integer read Get_Count write Set_Count;
  end;

// *********************************************************************//
// DispIntf:  IResultFieldsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0E27C0FD-6360-4F8C-864C-012E84A8546B}
// *********************************************************************//
  IResultFieldsDisp = dispinterface
    ['{0E27C0FD-6360-4F8C-864C-012E84A8546B}']
    property Items[Index: Integer]: IResultField dispid 201;
    property Count: Integer dispid 202;
    function Add: IResultField; dispid 203;
    procedure Remove(const ResultField: IResultField); dispid 204;
  end;

// *********************************************************************//
// Interface: ISubtasks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {37B2C0E0-5DA1-4DA5-88AB-91F20A5F584E}
// *********************************************************************//
  ISubtasks = interface(IDispatch)
    ['{37B2C0E0-5DA1-4DA5-88AB-91F20A5F584E}']
    function Get_Items(Index: Integer): ITask; safecall;
    procedure Set_Items(Index: Integer; const Value: ITask); safecall;
    function Get_Count: Integer; safecall;
    property Items[Index: Integer]: ITask read Get_Items write Set_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ISubtasksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {37B2C0E0-5DA1-4DA5-88AB-91F20A5F584E}
// *********************************************************************//
  ISubtasksDisp = dispinterface
    ['{37B2C0E0-5DA1-4DA5-88AB-91F20A5F584E}']
    property Items[Index: Integer]: ITask dispid 201;
    property Count: Integer readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IAuthority
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6F7C5E61-D27A-4648-B02F-91DFD6D78440}
// *********************************************************************//
  IAuthority = interface(IDispatch)
    ['{6F7C5E61-D27A-4648-B02F-91DFD6D78440}']
    function GetNextTaskStates: OleVariant; safecall;
    function IsValidPropValue(const PropName: WideString; PropValue: OleVariant; 
                              out ErrText: WideString; out ErrCode: Integer): WordBool; safecall;
    function Get_TaskID: Integer; safecall;
    function Get_WBSSystem: IWBSSystem; safecall;
    function CanISetProperty(const PropName: WideString): WordBool; safecall;
    procedure Init(const WBSSystem: IWBSSystem; const Task: ITask); safecall;
    function CanDeleteTask: WordBool; safecall;
    function CanChangeCollection(const CollectionName: WideString; const CollectionItem: IDispatch; 
                                 Action: TCollectionAction): WordBool; safecall;
    property TaskID: Integer read Get_TaskID;
    property WBSSystem: IWBSSystem read Get_WBSSystem;
  end;

// *********************************************************************//
// DispIntf:  IAuthorityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6F7C5E61-D27A-4648-B02F-91DFD6D78440}
// *********************************************************************//
  IAuthorityDisp = dispinterface
    ['{6F7C5E61-D27A-4648-B02F-91DFD6D78440}']
    function GetNextTaskStates: OleVariant; dispid 202;
    function IsValidPropValue(const PropName: WideString; PropValue: OleVariant; 
                              out ErrText: WideString; out ErrCode: Integer): WordBool; dispid 203;
    property TaskID: Integer readonly dispid 204;
    property WBSSystem: IWBSSystem readonly dispid 205;
    function CanISetProperty(const PropName: WideString): WordBool; dispid 201;
    procedure Init(const WBSSystem: IWBSSystem; const Task: ITask); dispid 206;
    function CanDeleteTask: WordBool; dispid 207;
    function CanChangeCollection(const CollectionName: WideString; const CollectionItem: IDispatch; 
                                 Action: TCollectionAction): WordBool; dispid 208;
  end;

// *********************************************************************//
// Interface: IAttachment
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DDA82554-F2AC-4D7D-A59A-1FAE1633EB49}
// *********************************************************************//
  IAttachment = interface(IDispatch)
    ['{DDA82554-F2AC-4D7D-A59A-1FAE1633EB49}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_IDObject: Integer; safecall;
    procedure Set_IDObject(Value: Integer); safecall;
    function Get_ObjectType: Integer; safecall;
    procedure Set_ObjectType(Value: Integer); safecall;
    function Get_Semantics: Integer; safecall;
    procedure Set_Semantics(Value: Integer); safecall;
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    function Get_OwnerID: Integer; safecall;
    procedure Set_OwnerID(Value: Integer); safecall;
    property Name: WideString read Get_Name write Set_Name;
    property URL: WideString read Get_URL write Set_URL;
    property IDObject: Integer read Get_IDObject write Set_IDObject;
    property ObjectType: Integer read Get_ObjectType write Set_ObjectType;
    property Semantics: Integer read Get_Semantics write Set_Semantics;
    property ID: Integer read Get_ID write Set_ID;
    property OwnerID: Integer read Get_OwnerID write Set_OwnerID;
  end;

// *********************************************************************//
// DispIntf:  IAttachmentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DDA82554-F2AC-4D7D-A59A-1FAE1633EB49}
// *********************************************************************//
  IAttachmentDisp = dispinterface
    ['{DDA82554-F2AC-4D7D-A59A-1FAE1633EB49}']
    property Name: WideString dispid 201;
    property URL: WideString dispid 204;
    property IDObject: Integer dispid 205;
    property ObjectType: Integer dispid 206;
    property Semantics: Integer dispid 203;
    property ID: Integer dispid 202;
    property OwnerID: Integer dispid 207;
  end;

// *********************************************************************//
// Interface: IAttachments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {812423A8-5BDF-439D-8249-B4632A73B0A7}
// *********************************************************************//
  IAttachments = interface(IDispatch)
    ['{812423A8-5BDF-439D-8249-B4632A73B0A7}']
    function Get_Count: Integer; safecall;
    function Get_Items(Index: Integer): IAttachment; safecall;
    procedure Set_Items(Index: Integer; const Value: IAttachment); safecall;
    function Add(const Attachment: IAttachment): Integer; safecall;
    procedure Remove(const Attachment: IAttachment); safecall;
    function FindByName(const stName: WideString): IAttachment; safecall;
    function FindByID(inID: Integer): IAttachment; safecall;
    property Count: Integer read Get_Count;
    property Items[Index: Integer]: IAttachment read Get_Items write Set_Items;
  end;

// *********************************************************************//
// DispIntf:  IAttachmentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {812423A8-5BDF-439D-8249-B4632A73B0A7}
// *********************************************************************//
  IAttachmentsDisp = dispinterface
    ['{812423A8-5BDF-439D-8249-B4632A73B0A7}']
    property Count: Integer readonly dispid 201;
    property Items[Index: Integer]: IAttachment dispid 202;
    function Add(const Attachment: IAttachment): Integer; dispid 203;
    procedure Remove(const Attachment: IAttachment); dispid 204;
    function FindByName(const stName: WideString): IAttachment; dispid 205;
    function FindByID(inID: Integer): IAttachment; dispid 206;
  end;

// *********************************************************************//
// Interface: ITraceResults
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {79A546DF-C5B7-4087-AC54-ADDD11EA52E4}
// *********************************************************************//
  ITraceResults = interface(IDispatch)
    ['{79A546DF-C5B7-4087-AC54-ADDD11EA52E4}']
    function Get_ChangedTasks: ITasks; safecall;
    procedure Set_ChangedTasks(const Value: ITasks); safecall;
    function Get_DeletedTasks: OleVariant; safecall;
    procedure Set_DeletedTasks(Value: OleVariant); safecall;
    function Get_IDTrace: Integer; safecall;
    procedure Set_IDTrace(Value: Integer); safecall;
    function Get_ErrCode: Integer; safecall;
    procedure Set_ErrCode(Value: Integer); safecall;
    function Get_errMessage: WideString; safecall;
    procedure Set_errMessage(const Value: WideString); safecall;
    function Get_Notifications: INotificationList; safecall;
    procedure Set_Notifications(const Value: INotificationList); safecall;
    function Get_TraceEvents: ITraceEvents; safecall;
    procedure Set_TraceEvents(const Value: ITraceEvents); safecall;
    property ChangedTasks: ITasks read Get_ChangedTasks write Set_ChangedTasks;
    property DeletedTasks: OleVariant read Get_DeletedTasks write Set_DeletedTasks;
    property IDTrace: Integer read Get_IDTrace write Set_IDTrace;
    property ErrCode: Integer read Get_ErrCode write Set_ErrCode;
    property errMessage: WideString read Get_errMessage write Set_errMessage;
    property Notifications: INotificationList read Get_Notifications write Set_Notifications;
    property TraceEvents: ITraceEvents read Get_TraceEvents write Set_TraceEvents;
  end;

// *********************************************************************//
// DispIntf:  ITraceResultsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {79A546DF-C5B7-4087-AC54-ADDD11EA52E4}
// *********************************************************************//
  ITraceResultsDisp = dispinterface
    ['{79A546DF-C5B7-4087-AC54-ADDD11EA52E4}']
    property ChangedTasks: ITasks dispid 201;
    property DeletedTasks: OleVariant dispid 202;
    property IDTrace: Integer dispid 204;
    property ErrCode: Integer dispid 203;
    property errMessage: WideString dispid 205;
    property Notifications: INotificationList dispid 206;
    property TraceEvents: ITraceEvents dispid 207;
  end;

// *********************************************************************//
// Interface: IConflicts
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88C4EE8C-F3D8-48B0-BEC9-044C2B79EE81}
// *********************************************************************//
  IConflicts = interface(IDispatch)
    ['{88C4EE8C-F3D8-48B0-BEC9-044C2B79EE81}']
    function Get_Items(Index: Integer): IConflict; safecall;
    procedure Set_Items(Index: Integer; const Value: IConflict); safecall;
    function Get_Count: Integer; safecall;
    property Items[Index: Integer]: IConflict read Get_Items write Set_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IConflictsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88C4EE8C-F3D8-48B0-BEC9-044C2B79EE81}
// *********************************************************************//
  IConflictsDisp = dispinterface
    ['{88C4EE8C-F3D8-48B0-BEC9-044C2B79EE81}']
    property Items[Index: Integer]: IConflict dispid 201;
    property Count: Integer readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IConflict
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA715EEA-B870-4B2D-A1C0-38EEBC0A6E15}
// *********************************************************************//
  IConflict = interface(IDispatch)
    ['{BA715EEA-B870-4B2D-A1C0-38EEBC0A6E15}']
    function Get_ConflictKind: Integer; safecall;
    procedure Set_ConflictKind(Value: Integer); safecall;
    function Get_FirstTask: ITask; safecall;
    procedure Set_FirstTask(const Value: ITask); safecall;
    function Get_SecondTask: ITask; safecall;
    procedure Set_SecondTask(const Value: ITask); safecall;
    function Get_ConflictType: TConflictType; safecall;
    procedure Set_ConflictType(Value: TConflictType); safecall;
    property ConflictKind: Integer read Get_ConflictKind write Set_ConflictKind;
    property FirstTask: ITask read Get_FirstTask write Set_FirstTask;
    property SecondTask: ITask read Get_SecondTask write Set_SecondTask;
    property ConflictType: TConflictType read Get_ConflictType write Set_ConflictType;
  end;

// *********************************************************************//
// DispIntf:  IConflictDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA715EEA-B870-4B2D-A1C0-38EEBC0A6E15}
// *********************************************************************//
  IConflictDisp = dispinterface
    ['{BA715EEA-B870-4B2D-A1C0-38EEBC0A6E15}']
    property ConflictKind: Integer dispid 201;
    property FirstTask: ITask dispid 202;
    property SecondTask: ITask dispid 203;
    property ConflictType: TConflictType dispid 204;
  end;

// *********************************************************************//
// Interface: IPlan
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08DEFFF0-9361-46E4-80B3-5ADA728C9EB5}
// *********************************************************************//
  IPlan = interface(IDispatch)
    ['{08DEFFF0-9361-46E4-80B3-5ADA728C9EB5}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const Value: WideString); safecall;
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    function NewVersion(dtStart: TDateTime; dtFinish: TDateTime): IPlanVersion; safecall;
    procedure DeleteVersion(VersionID: Integer); safecall;
    procedure Update; safecall;
    procedure Refresh; safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    function GetVersions: IPlanVersions; safecall;
    function Get_Actual: WordBool; safecall;
    procedure Set_Actual(Value: WordBool); safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Description: WideString read Get_Description write Set_Description;
    property ID: Integer read Get_ID write Set_ID;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
    property Actual: WordBool read Get_Actual write Set_Actual;
  end;

// *********************************************************************//
// DispIntf:  IPlanDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08DEFFF0-9361-46E4-80B3-5ADA728C9EB5}
// *********************************************************************//
  IPlanDisp = dispinterface
    ['{08DEFFF0-9361-46E4-80B3-5ADA728C9EB5}']
    property Name: WideString dispid 201;
    property Description: WideString dispid 202;
    property ID: Integer dispid 203;
    function NewVersion(dtStart: TDateTime; dtFinish: TDateTime): IPlanVersion; dispid 205;
    procedure DeleteVersion(VersionID: Integer); dispid 206;
    procedure Update; dispid 207;
    procedure Refresh; dispid 208;
    property SysObj: IWBSSystem dispid 209;
    function GetVersions: IPlanVersions; dispid 204;
    property Actual: WordBool dispid 210;
  end;

// *********************************************************************//
// Interface: IPlanVersion
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE09FF07-FF91-49F7-96A9-9D9F97E6D2CA}
// *********************************************************************//
  IPlanVersion = interface(IDispatch)
    ['{DE09FF07-FF91-49F7-96A9-9D9F97E6D2CA}']
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    function Get_Number: Integer; safecall;
    procedure Set_Number(Value: Integer); safecall;
    function Get_Created: TDateTime; safecall;
    procedure Set_Created(Value: TDateTime); safecall;
    function Get_Approved: TDateTime; safecall;
    procedure Set_Approved(Value: TDateTime); safecall;
    function Get_State: Integer; safecall;
    procedure Set_State(Value: Integer); safecall;
    function Get_StartDateOfPeriod: TDateTime; safecall;
    procedure Set_StartDateOfPeriod(Value: TDateTime); safecall;
    function Get_EndDateOfPeriod: TDateTime; safecall;
    procedure Set_EndDateOfPeriod(Value: TDateTime); safecall;
    function Get_PlanID: Integer; safecall;
    procedure Set_PlanID(Value: Integer); safecall;
    function NewLine(inIDTask: Integer; inIndex: Integer; boCritical: WordBool): IPlanVersionLine; safecall;
    procedure DeleteLine(inIDPlanTask: Integer); safecall;
    procedure Update; safecall;
    procedure Refresh; safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    function GetVersionLines: IPlanVersionLines; safecall;
    function Get_IsTopical: WordBool; safecall;
    procedure Set_IsTopical(Value: WordBool); safecall;
    procedure ChangeVersionState(inNewState: Integer); safecall;
    function RefreshTopical: WordBool; safecall;
    function GetUserRoles: Integer; safecall;
    function GetSubscribers: IUsers; safecall;
    procedure GrantRole(IDUser: Integer; inRole: Integer); safecall;
    function GetCoordinators: IUsers; safecall;
    function Get_Owner: IUser; safecall;
    function Get_Approver: IUser; safecall;
    procedure TakeAwayRole(inIDUser: Integer; inRole: Integer); safecall;
    property ID: Integer read Get_ID write Set_ID;
    property Number: Integer read Get_Number write Set_Number;
    property Created: TDateTime read Get_Created write Set_Created;
    property Approved: TDateTime read Get_Approved write Set_Approved;
    property State: Integer read Get_State write Set_State;
    property StartDateOfPeriod: TDateTime read Get_StartDateOfPeriod write Set_StartDateOfPeriod;
    property EndDateOfPeriod: TDateTime read Get_EndDateOfPeriod write Set_EndDateOfPeriod;
    property PlanID: Integer read Get_PlanID write Set_PlanID;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
    property IsTopical: WordBool read Get_IsTopical write Set_IsTopical;
    property Owner: IUser read Get_Owner;
    property Approver: IUser read Get_Approver;
  end;

// *********************************************************************//
// DispIntf:  IPlanVersionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE09FF07-FF91-49F7-96A9-9D9F97E6D2CA}
// *********************************************************************//
  IPlanVersionDisp = dispinterface
    ['{DE09FF07-FF91-49F7-96A9-9D9F97E6D2CA}']
    property ID: Integer dispid 202;
    property Number: Integer dispid 203;
    property Created: TDateTime dispid 204;
    property Approved: TDateTime dispid 205;
    property State: Integer dispid 206;
    property StartDateOfPeriod: TDateTime dispid 207;
    property EndDateOfPeriod: TDateTime dispid 208;
    property PlanID: Integer dispid 209;
    function NewLine(inIDTask: Integer; inIndex: Integer; boCritical: WordBool): IPlanVersionLine; dispid 210;
    procedure DeleteLine(inIDPlanTask: Integer); dispid 211;
    procedure Update; dispid 212;
    procedure Refresh; dispid 213;
    property SysObj: IWBSSystem dispid 214;
    function GetVersionLines: IPlanVersionLines; dispid 201;
    property IsTopical: WordBool dispid 215;
    procedure ChangeVersionState(inNewState: Integer); dispid 216;
    function RefreshTopical: WordBool; dispid 217;
    function GetUserRoles: Integer; dispid 218;
    function GetSubscribers: IUsers; dispid 219;
    procedure GrantRole(IDUser: Integer; inRole: Integer); dispid 220;
    function GetCoordinators: IUsers; dispid 221;
    property Owner: IUser readonly dispid 222;
    property Approver: IUser readonly dispid 223;
    procedure TakeAwayRole(inIDUser: Integer; inRole: Integer); dispid 224;
  end;

// *********************************************************************//
// Interface: IPlanVersions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {859753F4-E910-478D-8C03-1FDC125F6CCD}
// *********************************************************************//
  IPlanVersions = interface(IDispatch)
    ['{859753F4-E910-478D-8C03-1FDC125F6CCD}']
    function Get_Items(Index: Integer): IPlanVersion; safecall;
    function Get_Count: Integer; safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    procedure CollectByPlanID(PlanID: Integer); safecall;
    procedure CollectByState(inState: Integer; inUserRole: Integer); safecall;
    property Items[Index: Integer]: IPlanVersion read Get_Items;
    property Count: Integer read Get_Count;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
  end;

// *********************************************************************//
// DispIntf:  IPlanVersionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {859753F4-E910-478D-8C03-1FDC125F6CCD}
// *********************************************************************//
  IPlanVersionsDisp = dispinterface
    ['{859753F4-E910-478D-8C03-1FDC125F6CCD}']
    property Items[Index: Integer]: IPlanVersion readonly dispid 201;
    property Count: Integer readonly dispid 202;
    property SysObj: IWBSSystem dispid 203;
    procedure CollectByPlanID(PlanID: Integer); dispid 204;
    procedure CollectByState(inState: Integer; inUserRole: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IPlans
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53F7EE0B-76A5-422B-8AAE-4DCD9F98881D}
// *********************************************************************//
  IPlans = interface(IDispatch)
    ['{53F7EE0B-76A5-422B-8AAE-4DCD9F98881D}']
    function Get_Count: Integer; safecall;
    function Get_Items(Index: Integer): IPlan; safecall;
    function FindByName(const stName: WideString): IPlan; safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    procedure Collect(UserID: Integer; ActualFilter: Integer); safecall;
    property Count: Integer read Get_Count;
    property Items[Index: Integer]: IPlan read Get_Items;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
  end;

// *********************************************************************//
// DispIntf:  IPlansDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53F7EE0B-76A5-422B-8AAE-4DCD9F98881D}
// *********************************************************************//
  IPlansDisp = dispinterface
    ['{53F7EE0B-76A5-422B-8AAE-4DCD9F98881D}']
    property Count: Integer readonly dispid 201;
    property Items[Index: Integer]: IPlan readonly dispid 202;
    function FindByName(const stName: WideString): IPlan; dispid 203;
    property SysObj: IWBSSystem dispid 204;
    procedure Collect(UserID: Integer; ActualFilter: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IPlanVersionLine
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA118660-BF6F-4328-BF61-D157D9F97067}
// *********************************************************************//
  IPlanVersionLine = interface(IDispatch)
    ['{AA118660-BF6F-4328-BF61-D157D9F97067}']
    function Get_TaskID: Integer; safecall;
    procedure Set_TaskID(Value: Integer); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Index(Value: Integer); safecall;
    function Get_IsImportant: WordBool; safecall;
    procedure Set_IsImportant(Value: WordBool); safecall;
    function Get_Topic: WideString; safecall;
    procedure Set_Topic(const Value: WideString); safecall;
    function Get_PlanDateStart: TDateTime; safecall;
    procedure Set_PlanDateStart(Value: TDateTime); safecall;
    function Get_PlanDateFinish: TDateTime; safecall;
    procedure Set_PlanDateFinish(Value: TDateTime); safecall;
    function Get_Duration: Double; safecall;
    procedure Set_Duration(Value: Double); safecall;
    function Get_Completion: Integer; safecall;
    procedure Set_Completion(Value: Integer); safecall;
    function Get_Worker: IUser; safecall;
    procedure Set_Worker(const Value: IUser); safecall;
    function Get_PlanVersionID: Integer; safecall;
    procedure Set_PlanVersionID(Value: Integer); safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    function Get_WorkerID: Integer; safecall;
    procedure Set_WorkerID(Value: Integer); safecall;
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    procedure Update; safecall;
    procedure Refresh(boSyncTask: WordBool); safecall;
    function Get_IsTopical: WordBool; safecall;
    procedure Set_IsTopical(Value: WordBool); safecall;
    property TaskID: Integer read Get_TaskID write Set_TaskID;
    property Index: Integer read Get_Index write Set_Index;
    property IsImportant: WordBool read Get_IsImportant write Set_IsImportant;
    property Topic: WideString read Get_Topic write Set_Topic;
    property PlanDateStart: TDateTime read Get_PlanDateStart write Set_PlanDateStart;
    property PlanDateFinish: TDateTime read Get_PlanDateFinish write Set_PlanDateFinish;
    property Duration: Double read Get_Duration write Set_Duration;
    property Completion: Integer read Get_Completion write Set_Completion;
    property Worker: IUser read Get_Worker write Set_Worker;
    property PlanVersionID: Integer read Get_PlanVersionID write Set_PlanVersionID;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
    property WorkerID: Integer read Get_WorkerID write Set_WorkerID;
    property ID: Integer read Get_ID write Set_ID;
    property IsTopical: WordBool read Get_IsTopical write Set_IsTopical;
  end;

// *********************************************************************//
// DispIntf:  IPlanVersionLineDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA118660-BF6F-4328-BF61-D157D9F97067}
// *********************************************************************//
  IPlanVersionLineDisp = dispinterface
    ['{AA118660-BF6F-4328-BF61-D157D9F97067}']
    property TaskID: Integer dispid 201;
    property Index: Integer dispid 202;
    property IsImportant: WordBool dispid 203;
    property Topic: WideString dispid 204;
    property PlanDateStart: TDateTime dispid 205;
    property PlanDateFinish: TDateTime dispid 206;
    property Duration: Double dispid 207;
    property Completion: Integer dispid 208;
    property Worker: IUser dispid 209;
    property PlanVersionID: Integer dispid 210;
    property SysObj: IWBSSystem dispid 211;
    property WorkerID: Integer dispid 212;
    property ID: Integer dispid 213;
    procedure Update; dispid 214;
    procedure Refresh(boSyncTask: WordBool); dispid 215;
    property IsTopical: WordBool dispid 216;
  end;

// *********************************************************************//
// Interface: IPlanVersionLines
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7979ADF-3EE0-439D-A7F3-268EFC1D56D5}
// *********************************************************************//
  IPlanVersionLines = interface(IDispatch)
    ['{B7979ADF-3EE0-439D-A7F3-268EFC1D56D5}']
    function Get_Items(Index: Integer): IPlanVersionLine; safecall;
    function Get_Count: Integer; safecall;
    function Get_SysObj: IWBSSystem; safecall;
    procedure Set_SysObj(const Value: IWBSSystem); safecall;
    procedure Collect(inPlanVersionID: Integer); safecall;
    property Items[Index: Integer]: IPlanVersionLine read Get_Items;
    property Count: Integer read Get_Count;
    property SysObj: IWBSSystem read Get_SysObj write Set_SysObj;
  end;

// *********************************************************************//
// DispIntf:  IPlanVersionLinesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7979ADF-3EE0-439D-A7F3-268EFC1D56D5}
// *********************************************************************//
  IPlanVersionLinesDisp = dispinterface
    ['{B7979ADF-3EE0-439D-A7F3-268EFC1D56D5}']
    property Items[Index: Integer]: IPlanVersionLine readonly dispid 201;
    property Count: Integer readonly dispid 202;
    property SysObj: IWBSSystem dispid 203;
    procedure Collect(inPlanVersionID: Integer); dispid 204;
  end;

// *********************************************************************//
// Interface: INotificationList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6513526F-0EC8-4EA7-9BDC-427A6EAB78E6}
// *********************************************************************//
  INotificationList = interface(IDispatch)
    ['{6513526F-0EC8-4EA7-9BDC-427A6EAB78E6}']
    function Get_Items(Index: Integer): INotificationItem; safecall;
    procedure Set_Items(Index: Integer; const Value: INotificationItem); safecall;
    function Get_Count: Integer; safecall;
    function Add(const Value: INotificationItem): Integer; safecall;
    property Items[Index: Integer]: INotificationItem read Get_Items write Set_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  INotificationListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6513526F-0EC8-4EA7-9BDC-427A6EAB78E6}
// *********************************************************************//
  INotificationListDisp = dispinterface
    ['{6513526F-0EC8-4EA7-9BDC-427A6EAB78E6}']
    property Items[Index: Integer]: INotificationItem dispid 201;
    property Count: Integer readonly dispid 202;
    function Add(const Value: INotificationItem): Integer; dispid 203;
  end;

// *********************************************************************//
// Interface: INotificationItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17E11592-DC52-4D46-9869-5F30526404E0}
// *********************************************************************//
  INotificationItem = interface(IDispatch)
    ['{17E11592-DC52-4D46-9869-5F30526404E0}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Value: WideString); safecall;
    function Get_Header: WideString; safecall;
    procedure Set_Header(const Value: WideString); safecall;
    function Get_NotifyKind: Integer; safecall;
    procedure Set_NotifyKind(Value: Integer); safecall;
    property Text: WideString read Get_Text write Set_Text;
    property Header: WideString read Get_Header write Set_Header;
    property NotifyKind: Integer read Get_NotifyKind write Set_NotifyKind;
  end;

// *********************************************************************//
// DispIntf:  INotificationItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17E11592-DC52-4D46-9869-5F30526404E0}
// *********************************************************************//
  INotificationItemDisp = dispinterface
    ['{17E11592-DC52-4D46-9869-5F30526404E0}']
    property Text: WideString dispid 201;
    property Header: WideString dispid 202;
    property NotifyKind: Integer dispid 203;
  end;

// *********************************************************************//
// Interface: ITraceEvents
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80586348-0F57-44C5-AC54-55DE03509BD0}
// *********************************************************************//
  ITraceEvents = interface(IDispatch)
    ['{80586348-0F57-44C5-AC54-55DE03509BD0}']
    function Get_Items(Index: Integer): ITraceEvent; safecall;
    procedure Set_Items(Index: Integer; const Value: ITraceEvent); safecall;
    function Get_Count: Integer; safecall;
    function Add(const Value: ITraceEvent): Integer; safecall;
    property Items[Index: Integer]: ITraceEvent read Get_Items write Set_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ITraceEventsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80586348-0F57-44C5-AC54-55DE03509BD0}
// *********************************************************************//
  ITraceEventsDisp = dispinterface
    ['{80586348-0F57-44C5-AC54-55DE03509BD0}']
    property Items[Index: Integer]: ITraceEvent dispid 201;
    property Count: Integer readonly dispid 202;
    function Add(const Value: ITraceEvent): Integer; dispid 203;
  end;

// *********************************************************************//
// Interface: ITraceEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2029B5B5-9E43-4AC2-AE20-3EFADDE0FDDD}
// *********************************************************************//
  ITraceEvent = interface(IDispatch)
    ['{2029B5B5-9E43-4AC2-AE20-3EFADDE0FDDD}']
    function Get_ObjectType: Integer; safecall;
    procedure Set_ObjectType(Value: Integer); safecall;
    function Get_ObjectID: Integer; safecall;
    procedure Set_ObjectID(Value: Integer); safecall;
    function Get_EventType: Integer; safecall;
    procedure Set_EventType(Value: Integer); safecall;
    property ObjectType: Integer read Get_ObjectType write Set_ObjectType;
    property ObjectID: Integer read Get_ObjectID write Set_ObjectID;
    property EventType: Integer read Get_EventType write Set_EventType;
  end;

// *********************************************************************//
// DispIntf:  ITraceEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2029B5B5-9E43-4AC2-AE20-3EFADDE0FDDD}
// *********************************************************************//
  ITraceEventDisp = dispinterface
    ['{2029B5B5-9E43-4AC2-AE20-3EFADDE0FDDD}']
    property ObjectType: Integer dispid 201;
    property ObjectID: Integer dispid 202;
    property EventType: Integer dispid 203;
  end;

// *********************************************************************//
// Interface: IActualWork
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0CDB724-9E12-47A1-95E6-6C1C044131D0}
// *********************************************************************//
  IActualWork = interface(IDispatch)
    ['{F0CDB724-9E12-47A1-95E6-6C1C044131D0}']
    function Get_ID: Integer; safecall;
    procedure Set_ID(Value: Integer); safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Comment(const Value: WideString); safecall;
    function Get_FullName: WideString; safecall;
    procedure Set_FullName(const Value: WideString); safecall;
    function Get_Status: Integer; safecall;
    procedure Set_Status(Value: Integer); safecall;
    function Get_Work: Double; safecall;
    procedure Set_Work(Value: Double); safecall;
    function Get_aDate: TDateTime; safecall;
    procedure Set_aDate(Value: TDateTime); safecall;
    function Get_ModifyDate: TDateTime; safecall;
    procedure Set_ModifyDate(Value: TDateTime); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const Value: WideString); safecall;
    function Get_TaskID: Integer; safecall;
    procedure Set_TaskID(Value: Integer); safecall;
    property ID: Integer read Get_ID write Set_ID;
    property Comment: WideString read Get_Comment write Set_Comment;
    property FullName: WideString read Get_FullName write Set_FullName;
    property Status: Integer read Get_Status write Set_Status;
    property Work: Double read Get_Work write Set_Work;
    property aDate: TDateTime read Get_aDate write Set_aDate;
    property ModifyDate: TDateTime read Get_ModifyDate write Set_ModifyDate;
    property UserName: WideString read Get_UserName write Set_UserName;
    property TaskID: Integer read Get_TaskID write Set_TaskID;
  end;

// *********************************************************************//
// DispIntf:  IActualWorkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0CDB724-9E12-47A1-95E6-6C1C044131D0}
// *********************************************************************//
  IActualWorkDisp = dispinterface
    ['{F0CDB724-9E12-47A1-95E6-6C1C044131D0}']
    property ID: Integer dispid 201;
    property Comment: WideString dispid 202;
    property FullName: WideString dispid 203;
    property Status: Integer dispid 204;
    property Work: Double dispid 205;
    property aDate: TDateTime dispid 206;
    property ModifyDate: TDateTime dispid 207;
    property UserName: WideString dispid 208;
    property TaskID: Integer dispid 209;
  end;

// *********************************************************************//
// Interface: IActualWorks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CEC07278-CA50-4EFF-8ECF-5A484F34D588}
// *********************************************************************//
  IActualWorks = interface(IDispatch)
    ['{CEC07278-CA50-4EFF-8ECF-5A484F34D588}']
    function Get_Items(Index: Integer): IActualWork; safecall;
    procedure Set_Items(Index: Integer; const Value: IActualWork); safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    procedure Add(const ActualWork: IActualWork); safecall;
    procedure Remove(const ActualWork: IActualWork); safecall;
    function FindByID(ID: Integer): IActualWork; safecall;
    property Items[Index: Integer]: IActualWork read Get_Items write Set_Items;
    property Count: Integer read Get_Count write Set_Count;
  end;

// *********************************************************************//
// DispIntf:  IActualWorksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CEC07278-CA50-4EFF-8ECF-5A484F34D588}
// *********************************************************************//
  IActualWorksDisp = dispinterface
    ['{CEC07278-CA50-4EFF-8ECF-5A484F34D588}']
    property Items[Index: Integer]: IActualWork dispid 201;
    property Count: Integer dispid 202;
    procedure Add(const ActualWork: IActualWork); dispid 203;
    procedure Remove(const ActualWork: IActualWork); dispid 204;
    function FindByID(ID: Integer): IActualWork; dispid 205;
  end;

// *********************************************************************//
// Interface: IAttribute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {30365ECE-C4A0-4C23-BFDD-4803EFDF68FA}
// *********************************************************************//
  IAttribute = interface(IDispatch)
    ['{30365ECE-C4A0-4C23-BFDD-4803EFDF68FA}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_AtrValue: WideString; safecall;
    procedure Set_AtrValue(const Value: WideString); safecall;
    function Get_TaskID: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property AtrValue: WideString read Get_AtrValue write Set_AtrValue;
    property TaskID: Integer read Get_TaskID;
  end;

// *********************************************************************//
// DispIntf:  IAttributeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {30365ECE-C4A0-4C23-BFDD-4803EFDF68FA}
// *********************************************************************//
  IAttributeDisp = dispinterface
    ['{30365ECE-C4A0-4C23-BFDD-4803EFDF68FA}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property AtrValue: WideString dispid 203;
    property TaskID: Integer readonly dispid 209;
  end;

// *********************************************************************//
// Interface: IAttributes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0934BB80-5049-4768-9806-1464D07FCA4B}
// *********************************************************************//
  IAttributes = interface(IDispatch)
    ['{0934BB80-5049-4768-9806-1464D07FCA4B}']
    function Get_Items(Index: Integer): IAttribute; safecall;
    function Get_Count: Integer; safecall;
    function Update(const Name: WideString; const Value: WideString): Integer; safecall;
    procedure Remove(const Name: WideString); safecall;
    function FindByName(const Name: WideString): IAttribute; safecall;
    function GetValue(const Name: WideString): WideString; safecall;
    function GetValueByIndex(Index: Integer): WideString; safecall;
    procedure SetValue(const Name: WideString; const Value: WideString); safecall;
    procedure Refresh; safecall;
    property Items[Index: Integer]: IAttribute read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IAttributesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0934BB80-5049-4768-9806-1464D07FCA4B}
// *********************************************************************//
  IAttributesDisp = dispinterface
    ['{0934BB80-5049-4768-9806-1464D07FCA4B}']
    property Items[Index: Integer]: IAttribute readonly dispid 201;
    property Count: Integer readonly dispid 202;
    function Update(const Name: WideString; const Value: WideString): Integer; dispid 203;
    procedure Remove(const Name: WideString); dispid 204;
    function FindByName(const Name: WideString): IAttribute; dispid 207;
    function GetValue(const Name: WideString): WideString; dispid 208;
    function GetValueByIndex(Index: Integer): WideString; dispid 209;
    procedure SetValue(const Name: WideString; const Value: WideString); dispid 210;
    procedure Refresh; dispid 211;
  end;

// *********************************************************************//
// The Class CoWBSSystem provides a Create and CreateRemote method to          
// create instances of the default interface IWBSSystem exposed by              
// the CoClass WBSSystem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWBSSystem = class
    class function Create: IWBSSystem;
    class function CreateRemote(const MachineName: string): IWBSSystem;
  end;

// *********************************************************************//
// The Class CoTasks provides a Create and CreateRemote method to          
// create instances of the default interface ITasks exposed by              
// the CoClass Tasks. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTasks = class
    class function Create: ITasks;
    class function CreateRemote(const MachineName: string): ITasks;
  end;

// *********************************************************************//
// The Class CoTaskLinks provides a Create and CreateRemote method to          
// create instances of the default interface ITaskLinks exposed by              
// the CoClass TaskLinks. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskLinks = class
    class function Create: ITaskLinks;
    class function CreateRemote(const MachineName: string): ITaskLinks;
  end;

// *********************************************************************//
// The Class CoTaskLink provides a Create and CreateRemote method to          
// create instances of the default interface ITaskLink exposed by              
// the CoClass TaskLink. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskLink = class
    class function Create: ITaskLink;
    class function CreateRemote(const MachineName: string): ITaskLink;
  end;

// *********************************************************************//
// The Class CoTask provides a Create and CreateRemote method to          
// create instances of the default interface ITask exposed by              
// the CoClass Task. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTask = class
    class function Create: ITask;
    class function CreateRemote(const MachineName: string): ITask;
  end;

// *********************************************************************//
// The Class CoUser provides a Create and CreateRemote method to          
// create instances of the default interface IUser exposed by              
// the CoClass User. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUser = class
    class function Create: IUser;
    class function CreateRemote(const MachineName: string): IUser;
  end;

// *********************************************************************//
// The Class CoSubtasks provides a Create and CreateRemote method to          
// create instances of the default interface ISubtasks exposed by              
// the CoClass Subtasks. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSubtasks = class
    class function Create: ISubtasks;
    class function CreateRemote(const MachineName: string): ISubtasks;
  end;

// *********************************************************************//
// The Class CoUsers provides a Create and CreateRemote method to          
// create instances of the default interface IUsers exposed by              
// the CoClass Users. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUsers = class
    class function Create: IUsers;
    class function CreateRemote(const MachineName: string): IUsers;
  end;

// *********************************************************************//
// The Class CoAuthority provides a Create and CreateRemote method to          
// create instances of the default interface IAuthority exposed by              
// the CoClass Authority. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAuthority = class
    class function Create: IAuthority;
    class function CreateRemote(const MachineName: string): IAuthority;
  end;

// *********************************************************************//
// The Class CoAttachment provides a Create and CreateRemote method to          
// create instances of the default interface IAttachment exposed by              
// the CoClass Attachment. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttachment = class
    class function Create: IAttachment;
    class function CreateRemote(const MachineName: string): IAttachment;
  end;

// *********************************************************************//
// The Class CoAttachments provides a Create and CreateRemote method to          
// create instances of the default interface IAttachments exposed by              
// the CoClass Attachments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttachments = class
    class function Create: IAttachments;
    class function CreateRemote(const MachineName: string): IAttachments;
  end;

// *********************************************************************//
// The Class CoTraceResults provides a Create and CreateRemote method to          
// create instances of the default interface ITraceResults exposed by              
// the CoClass TraceResults. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTraceResults = class
    class function Create: ITraceResults;
    class function CreateRemote(const MachineName: string): ITraceResults;
  end;

// *********************************************************************//
// The Class CoConflicts provides a Create and CreateRemote method to          
// create instances of the default interface IConflicts exposed by              
// the CoClass Conflicts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConflicts = class
    class function Create: IConflicts;
    class function CreateRemote(const MachineName: string): IConflicts;
  end;

// *********************************************************************//
// The Class CoConflict provides a Create and CreateRemote method to          
// create instances of the default interface IConflict exposed by              
// the CoClass Conflict. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConflict = class
    class function Create: IConflict;
    class function CreateRemote(const MachineName: string): IConflict;
  end;

// *********************************************************************//
// The Class CoPlans provides a Create and CreateRemote method to          
// create instances of the default interface IPlans exposed by              
// the CoClass Plans. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlans = class
    class function Create: IPlans;
    class function CreateRemote(const MachineName: string): IPlans;
  end;

// *********************************************************************//
// The Class CoPlan provides a Create and CreateRemote method to          
// create instances of the default interface IPlan exposed by              
// the CoClass Plan. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlan = class
    class function Create: IPlan;
    class function CreateRemote(const MachineName: string): IPlan;
  end;

// *********************************************************************//
// The Class CoPlanVersions provides a Create and CreateRemote method to          
// create instances of the default interface IPlanVersions exposed by              
// the CoClass PlanVersions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlanVersions = class
    class function Create: IPlanVersions;
    class function CreateRemote(const MachineName: string): IPlanVersions;
  end;

// *********************************************************************//
// The Class CoPlanVersion provides a Create and CreateRemote method to          
// create instances of the default interface IPlanVersion exposed by              
// the CoClass PlanVersion. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlanVersion = class
    class function Create: IPlanVersion;
    class function CreateRemote(const MachineName: string): IPlanVersion;
  end;

// *********************************************************************//
// The Class CoPlanVersionLines provides a Create and CreateRemote method to          
// create instances of the default interface IPlanVersionLines exposed by              
// the CoClass PlanVersionLines. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlanVersionLines = class
    class function Create: IPlanVersionLines;
    class function CreateRemote(const MachineName: string): IPlanVersionLines;
  end;

// *********************************************************************//
// The Class CoPlanVersionLine provides a Create and CreateRemote method to          
// create instances of the default interface IPlanVersionLine exposed by              
// the CoClass PlanVersionLine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlanVersionLine = class
    class function Create: IPlanVersionLine;
    class function CreateRemote(const MachineName: string): IPlanVersionLine;
  end;

// *********************************************************************//
// The Class CoNotificationList provides a Create and CreateRemote method to          
// create instances of the default interface INotificationList exposed by              
// the CoClass NotificationList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNotificationList = class
    class function Create: INotificationList;
    class function CreateRemote(const MachineName: string): INotificationList;
  end;

// *********************************************************************//
// The Class CoNotificationItem provides a Create and CreateRemote method to          
// create instances of the default interface INotificationItem exposed by              
// the CoClass NotificationItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNotificationItem = class
    class function Create: INotificationItem;
    class function CreateRemote(const MachineName: string): INotificationItem;
  end;

// *********************************************************************//
// The Class CoTraceEvent provides a Create and CreateRemote method to          
// create instances of the default interface ITraceEvent exposed by              
// the CoClass TraceEvent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTraceEvent = class
    class function Create: ITraceEvent;
    class function CreateRemote(const MachineName: string): ITraceEvent;
  end;

// *********************************************************************//
// The Class CoTraceEvents provides a Create and CreateRemote method to          
// create instances of the default interface ITraceEvents exposed by              
// the CoClass TraceEvents. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTraceEvents = class
    class function Create: ITraceEvents;
    class function CreateRemote(const MachineName: string): ITraceEvents;
  end;

// *********************************************************************//
// The Class CoActualWork provides a Create and CreateRemote method to          
// create instances of the default interface IActualWork exposed by              
// the CoClass ActualWork. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoActualWork = class
    class function Create: IActualWork;
    class function CreateRemote(const MachineName: string): IActualWork;
  end;

// *********************************************************************//
// The Class CoActualWorks provides a Create and CreateRemote method to          
// create instances of the default interface IActualWorks exposed by              
// the CoClass ActualWorks. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoActualWorks = class
    class function Create: IActualWorks;
    class function CreateRemote(const MachineName: string): IActualWorks;
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
// The Class CoAttributes provides a Create and CreateRemote method to          
// create instances of the default interface IAttributes exposed by              
// the CoClass Attributes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributes = class
    class function Create: IAttributes;
    class function CreateRemote(const MachineName: string): IAttributes;
  end;

implementation

uses ComObj;

class function CoWBSSystem.Create: IWBSSystem;
begin
  Result := CreateComObject(CLASS_WBSSystem) as IWBSSystem;
end;

class function CoWBSSystem.CreateRemote(const MachineName: string): IWBSSystem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WBSSystem) as IWBSSystem;
end;

class function CoTasks.Create: ITasks;
begin
  Result := CreateComObject(CLASS_Tasks) as ITasks;
end;

class function CoTasks.CreateRemote(const MachineName: string): ITasks;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Tasks) as ITasks;
end;

class function CoTaskLinks.Create: ITaskLinks;
begin
  Result := CreateComObject(CLASS_TaskLinks) as ITaskLinks;
end;

class function CoTaskLinks.CreateRemote(const MachineName: string): ITaskLinks;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskLinks) as ITaskLinks;
end;

class function CoTaskLink.Create: ITaskLink;
begin
  Result := CreateComObject(CLASS_TaskLink) as ITaskLink;
end;

class function CoTaskLink.CreateRemote(const MachineName: string): ITaskLink;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskLink) as ITaskLink;
end;

class function CoTask.Create: ITask;
begin
  Result := CreateComObject(CLASS_Task) as ITask;
end;

class function CoTask.CreateRemote(const MachineName: string): ITask;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Task) as ITask;
end;

class function CoUser.Create: IUser;
begin
  Result := CreateComObject(CLASS_User) as IUser;
end;

class function CoUser.CreateRemote(const MachineName: string): IUser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_User) as IUser;
end;

class function CoSubtasks.Create: ISubtasks;
begin
  Result := CreateComObject(CLASS_Subtasks) as ISubtasks;
end;

class function CoSubtasks.CreateRemote(const MachineName: string): ISubtasks;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Subtasks) as ISubtasks;
end;

class function CoUsers.Create: IUsers;
begin
  Result := CreateComObject(CLASS_Users) as IUsers;
end;

class function CoUsers.CreateRemote(const MachineName: string): IUsers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Users) as IUsers;
end;

class function CoAuthority.Create: IAuthority;
begin
  Result := CreateComObject(CLASS_Authority) as IAuthority;
end;

class function CoAuthority.CreateRemote(const MachineName: string): IAuthority;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Authority) as IAuthority;
end;

class function CoAttachment.Create: IAttachment;
begin
  Result := CreateComObject(CLASS_Attachment) as IAttachment;
end;

class function CoAttachment.CreateRemote(const MachineName: string): IAttachment;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attachment) as IAttachment;
end;

class function CoAttachments.Create: IAttachments;
begin
  Result := CreateComObject(CLASS_Attachments) as IAttachments;
end;

class function CoAttachments.CreateRemote(const MachineName: string): IAttachments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attachments) as IAttachments;
end;

class function CoTraceResults.Create: ITraceResults;
begin
  Result := CreateComObject(CLASS_TraceResults) as ITraceResults;
end;

class function CoTraceResults.CreateRemote(const MachineName: string): ITraceResults;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TraceResults) as ITraceResults;
end;

class function CoConflicts.Create: IConflicts;
begin
  Result := CreateComObject(CLASS_Conflicts) as IConflicts;
end;

class function CoConflicts.CreateRemote(const MachineName: string): IConflicts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Conflicts) as IConflicts;
end;

class function CoConflict.Create: IConflict;
begin
  Result := CreateComObject(CLASS_Conflict) as IConflict;
end;

class function CoConflict.CreateRemote(const MachineName: string): IConflict;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Conflict) as IConflict;
end;

class function CoPlans.Create: IPlans;
begin
  Result := CreateComObject(CLASS_Plans) as IPlans;
end;

class function CoPlans.CreateRemote(const MachineName: string): IPlans;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Plans) as IPlans;
end;

class function CoPlan.Create: IPlan;
begin
  Result := CreateComObject(CLASS_Plan) as IPlan;
end;

class function CoPlan.CreateRemote(const MachineName: string): IPlan;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Plan) as IPlan;
end;

class function CoPlanVersions.Create: IPlanVersions;
begin
  Result := CreateComObject(CLASS_PlanVersions) as IPlanVersions;
end;

class function CoPlanVersions.CreateRemote(const MachineName: string): IPlanVersions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PlanVersions) as IPlanVersions;
end;

class function CoPlanVersion.Create: IPlanVersion;
begin
  Result := CreateComObject(CLASS_PlanVersion) as IPlanVersion;
end;

class function CoPlanVersion.CreateRemote(const MachineName: string): IPlanVersion;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PlanVersion) as IPlanVersion;
end;

class function CoPlanVersionLines.Create: IPlanVersionLines;
begin
  Result := CreateComObject(CLASS_PlanVersionLines) as IPlanVersionLines;
end;

class function CoPlanVersionLines.CreateRemote(const MachineName: string): IPlanVersionLines;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PlanVersionLines) as IPlanVersionLines;
end;

class function CoPlanVersionLine.Create: IPlanVersionLine;
begin
  Result := CreateComObject(CLASS_PlanVersionLine) as IPlanVersionLine;
end;

class function CoPlanVersionLine.CreateRemote(const MachineName: string): IPlanVersionLine;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PlanVersionLine) as IPlanVersionLine;
end;

class function CoNotificationList.Create: INotificationList;
begin
  Result := CreateComObject(CLASS_NotificationList) as INotificationList;
end;

class function CoNotificationList.CreateRemote(const MachineName: string): INotificationList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NotificationList) as INotificationList;
end;

class function CoNotificationItem.Create: INotificationItem;
begin
  Result := CreateComObject(CLASS_NotificationItem) as INotificationItem;
end;

class function CoNotificationItem.CreateRemote(const MachineName: string): INotificationItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NotificationItem) as INotificationItem;
end;

class function CoTraceEvent.Create: ITraceEvent;
begin
  Result := CreateComObject(CLASS_TraceEvent) as ITraceEvent;
end;

class function CoTraceEvent.CreateRemote(const MachineName: string): ITraceEvent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TraceEvent) as ITraceEvent;
end;

class function CoTraceEvents.Create: ITraceEvents;
begin
  Result := CreateComObject(CLASS_TraceEvents) as ITraceEvents;
end;

class function CoTraceEvents.CreateRemote(const MachineName: string): ITraceEvents;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TraceEvents) as ITraceEvents;
end;

class function CoActualWork.Create: IActualWork;
begin
  Result := CreateComObject(CLASS_ActualWork) as IActualWork;
end;

class function CoActualWork.CreateRemote(const MachineName: string): IActualWork;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ActualWork) as IActualWork;
end;

class function CoActualWorks.Create: IActualWorks;
begin
  Result := CreateComObject(CLASS_ActualWorks) as IActualWorks;
end;

class function CoActualWorks.CreateRemote(const MachineName: string): IActualWorks;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ActualWorks) as IActualWorks;
end;

class function CoAttribute.Create: IAttribute;
begin
  Result := CreateComObject(CLASS_Attribute) as IAttribute;
end;

class function CoAttribute.CreateRemote(const MachineName: string): IAttribute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attribute) as IAttribute;
end;

class function CoAttributes.Create: IAttributes;
begin
  Result := CreateComObject(CLASS_Attributes) as IAttributes;
end;

class function CoAttributes.CreateRemote(const MachineName: string): IAttributes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attributes) as IAttributes;
end;

end.
