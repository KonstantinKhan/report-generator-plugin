
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 13.09.2017 15:36:35                                       }
{       Generated from: C:\Users\Vorobiev.KURG\Desktop\TaskTemplates-schema.xsd   }
{   Settings stored in: C:\Users\Vorobiev.KURG\Desktop\TaskTemplates-schema.xdb   }
{                                                                                 }
{*********************************************************************************}

unit TaskTemplatesschema;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLSuprTemplates = interface;
  IXMLTaskTemplates = interface;
  IXMLTaskTemplate = interface;
  IXMLTaskTemplateList = interface;
  IXMLSubscribers = interface;
  IXMLSubscriber = interface;
  IXMLSubscriberList = interface;
  IXMLAttachments = interface;
  IXMLAttachment = interface;

{ IXMLSuprTemplates }

  IXMLSuprTemplates = interface(IXMLNode)
    ['{22A436B9-DB2F-4BA7-83CE-01E1832C7E1D}']
    { Property Accessors }
    function Get_TaskTemplates: IXMLTaskTemplates;
    { Methods & Properties }
    property TaskTemplates: IXMLTaskTemplates read Get_TaskTemplates;
  end;

{ IXMLTaskTemplates }

  IXMLTaskTemplates = interface(IXMLNodeCollection)
    ['{FFAFCD3F-5A24-43AF-899B-8500AEF9891A}']
    { Property Accessors }
    function Get_TaskTemplate(Index: Integer): IXMLTaskTemplate;
    { Methods & Properties }
    function Add: IXMLTaskTemplate;
    function Insert(const Index: Integer): IXMLTaskTemplate;
    property TaskTemplate[Index: Integer]: IXMLTaskTemplate read Get_TaskTemplate; default;
  end;

{ IXMLTaskTemplate }

  IXMLTaskTemplate = interface(IXMLNode)
    ['{7A426045-BB97-447D-B006-E9307DC805B8}']
    { Property Accessors }
    function Get_Topic: WideString;
    function Get_Description: WideString;
    function Get_CalcDirection: WideString;
    function Get_Checker: WideString;
    function Get_Priority: Integer;
    function Get_PlanDuration: Integer;
    function Get_Worker: WideString;
    function Get_Author: WideString;
    function Get_WorkerIsTrusted: Boolean;
    function Get_Subscribers: IXMLSubscribers;
    function Get_Attachments: IXMLAttachments;
    function Get_Checked: Boolean;
    procedure Set_Topic(Value: WideString);
    procedure Set_Description(Value: WideString);
    procedure Set_CalcDirection(Value: WideString);
    procedure Set_Checker(Value: WideString);
    procedure Set_Priority(Value: Integer);
    procedure Set_PlanDuration(Value: Integer);
    procedure Set_Worker(Value: WideString);
    procedure Set_Author(Value: WideString);
    procedure Set_WorkerIsTrusted(Value: Boolean);
    procedure Set_Checked(Value: Boolean);
    { Methods & Properties }
    property Topic: WideString read Get_Topic write Set_Topic;
    property Description: WideString read Get_Description write Set_Description;
    property CalcDirection: WideString read Get_CalcDirection write Set_CalcDirection;
    property Checker: WideString read Get_Checker write Set_Checker;
    property Priority: Integer read Get_Priority write Set_Priority;
    property PlanDuration: Integer read Get_PlanDuration write Set_PlanDuration;
    property Worker: WideString read Get_Worker write Set_Worker;
    property Author: WideString read Get_Author write Set_Author;
    property WorkerIsTrusted: Boolean read Get_WorkerIsTrusted write Set_WorkerIsTrusted;
    property Subscribers: IXMLSubscribers read Get_Subscribers;
    property Attachments: IXMLAttachments read Get_Attachments;
    property Checked: Boolean read Get_Checked write Set_Checked;
  end;

{ IXMLTaskTemplateList }

  IXMLTaskTemplateList = interface(IXMLNodeCollection)
    ['{0F2E1437-FDBA-493B-B2BC-F4639A4F649E}']
    { Methods & Properties }
    function Add: IXMLTaskTemplate;
    function Insert(const Index: Integer): IXMLTaskTemplate;
    function Get_Item(Index: Integer): IXMLTaskTemplate;
    property Items[Index: Integer]: IXMLTaskTemplate read Get_Item; default;
  end;

{ IXMLSubscribers }

  IXMLSubscribers = interface(IXMLNodeCollection)
    ['{1B1FC484-448B-4FAC-ACC0-B873753077F8}']
    { Property Accessors }
    function Get_Subscriber(Index: Integer): IXMLSubscriber;
    { Methods & Properties }
    function Add: IXMLSubscriber;
    function Insert(const Index: Integer): IXMLSubscriber;
    property Subscriber[Index: Integer]: IXMLSubscriber read Get_Subscriber; default;
  end;

{ IXMLSubscriber }

  IXMLSubscriber = interface(IXMLNode)
    ['{57F33F1A-CE07-4F81-9E8B-00C83DB27AD5}']
    { Property Accessors }
    function Get_UserLogin: WideString;
    function Get_Trusted: Boolean;
    procedure Set_UserLogin(Value: WideString);
    procedure Set_Trusted(Value: Boolean);
    { Methods & Properties }
    property UserLogin: WideString read Get_UserLogin write Set_UserLogin;
    property Trusted: Boolean read Get_Trusted write Set_Trusted;
  end;

{ IXMLSubscriberList }

  IXMLSubscriberList = interface(IXMLNodeCollection)
    ['{91C790E4-EEF2-42AF-9A12-233092B96FFF}']
    { Methods & Properties }
    function Add: IXMLSubscriber;
    function Insert(const Index: Integer): IXMLSubscriber;
    function Get_Item(Index: Integer): IXMLSubscriber;
    property Items[Index: Integer]: IXMLSubscriber read Get_Item; default;
  end;

{ IXMLAttachments }

  IXMLAttachments = interface(IXMLNodeCollection)
    ['{071C77FF-3CB7-412C-A7DA-845297AD2353}']
    { Property Accessors }
    function Get_Attachment(Index: Integer): IXMLAttachment;
    { Methods & Properties }
    function Add: IXMLAttachment;
    function Insert(const Index: Integer): IXMLAttachment;
    property Attachment[Index: Integer]: IXMLAttachment read Get_Attachment; default;
  end;

{ IXMLAttachment }

  IXMLAttachment = interface(IXMLNode)
    ['{620538F0-526D-40F8-BA55-291391BAFB94}']
    { Property Accessors }
    function Get_IDObject: LongWord;
    function Get_Name: WideString;
    function Get_ObjectType: LongWord;
    function Get_Semantics: LongWord;
    function Get_URL: WideString;
    procedure Set_IDObject(Value: LongWord);
    procedure Set_Name(Value: WideString);
    procedure Set_ObjectType(Value: LongWord);
    procedure Set_Semantics(Value: LongWord);
    procedure Set_URL(Value: WideString);
    { Methods & Properties }
    property IDObject: LongWord read Get_IDObject write Set_IDObject;
    property Name: WideString read Get_Name write Set_Name;
    property ObjectType: LongWord read Get_ObjectType write Set_ObjectType;
    property Semantics: LongWord read Get_Semantics write Set_Semantics;
    property URL: WideString read Get_URL write Set_URL;
  end;

{ Forward Decls }

  TXMLSuprTemplates = class;
  TXMLTaskTemplates = class;
  TXMLTaskTemplate = class;
  TXMLTaskTemplateList = class;
  TXMLSubscribers = class;
  TXMLSubscriber = class;
  TXMLSubscriberList = class;
  TXMLAttachments = class;
  TXMLAttachment = class;

{ TXMLSuprTemplates }

  TXMLSuprTemplates = class(TXMLNode, IXMLSuprTemplates)
  protected
    { IXMLSuprTemplates }
    function Get_TaskTemplates: IXMLTaskTemplates;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaskTemplates }

  TXMLTaskTemplates = class(TXMLNodeCollection, IXMLTaskTemplates)
  protected
    { IXMLTaskTemplates }
    function Get_TaskTemplate(Index: Integer): IXMLTaskTemplate;
    function Add: IXMLTaskTemplate;
    function Insert(const Index: Integer): IXMLTaskTemplate;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaskTemplate }

  TXMLTaskTemplate = class(TXMLNode, IXMLTaskTemplate)
  private
    FChecked    : Boolean;
  protected
    { IXMLTaskTemplate }
    function Get_Topic: WideString;
    function Get_Description: WideString;
    function Get_CalcDirection: WideString;
    function Get_Checker: WideString;
    function Get_Priority: Integer;
    function Get_PlanDuration: Integer;
    function Get_Worker: WideString;
    function Get_Author: WideString;
    function Get_WorkerIsTrusted: Boolean;
    function Get_Subscribers: IXMLSubscribers;
    function Get_Attachments: IXMLAttachments;
    function Get_Checked: Boolean;
    procedure Set_Topic(Value: WideString);
    procedure Set_Description(Value: WideString);
    procedure Set_CalcDirection(Value: WideString);
    procedure Set_Checker(Value: WideString);
    procedure Set_Priority(Value: Integer);
    procedure Set_PlanDuration(Value: Integer);
    procedure Set_Worker(Value: WideString);
    procedure Set_Author(Value: WideString);
    procedure Set_WorkerIsTrusted(Value: Boolean);
    procedure Set_Checked(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaskTemplateList }

  TXMLTaskTemplateList = class(TXMLNodeCollection, IXMLTaskTemplateList)
  protected
    { IXMLTaskTemplateList }
    function Add: IXMLTaskTemplate;
    function Insert(const Index: Integer): IXMLTaskTemplate;
    function Get_Item(Index: Integer): IXMLTaskTemplate;
  end;

{ TXMLSubscribers }

  TXMLSubscribers = class(TXMLNodeCollection, IXMLSubscribers)
  protected
    { IXMLSubscribers }
    function Get_Subscriber(Index: Integer): IXMLSubscriber;
    function Add: IXMLSubscriber;
    function Insert(const Index: Integer): IXMLSubscriber;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSubscriber }

  TXMLSubscriber = class(TXMLNode, IXMLSubscriber)
  protected
    { IXMLSubscriber }
    function Get_UserLogin: WideString;
    function Get_Trusted: Boolean;
    procedure Set_UserLogin(Value: WideString);
    procedure Set_Trusted(Value: Boolean);
  end;

{ TXMLSubscriberList }

  TXMLSubscriberList = class(TXMLNodeCollection, IXMLSubscriberList)
  protected
    { IXMLSubscriberList }
    function Add: IXMLSubscriber;
    function Insert(const Index: Integer): IXMLSubscriber;
    function Get_Item(Index: Integer): IXMLSubscriber;
  end;

{ TXMLAttachments }

  TXMLAttachments = class(TXMLNodeCollection, IXMLAttachments)
  protected
    { IXMLAttachments }
    function Get_Attachment(Index: Integer): IXMLAttachment;
    function Add: IXMLAttachment;
    function Insert(const Index: Integer): IXMLAttachment;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAttachment }

  TXMLAttachment = class(TXMLNode, IXMLAttachment)
  protected
    { IXMLAttachment }
    function Get_IDObject: LongWord;
    function Get_Name: WideString;
    function Get_ObjectType: LongWord;
    function Get_Semantics: LongWord;
    function Get_URL: WideString;
    procedure Set_IDObject(Value: LongWord);
    procedure Set_Name(Value: WideString);
    procedure Set_ObjectType(Value: LongWord);
    procedure Set_Semantics(Value: LongWord);
    procedure Set_URL(Value: WideString);
  end;

{ Global Functions }

function GetSuprTemplates(Doc: IXMLDocument): IXMLSuprTemplates;
function LoadSuprTemplates(const FileName: WideString): IXMLSuprTemplates;
function NewSuprTemplates: IXMLSuprTemplates;

const
  TargetNamespace = '';

implementation

uses Variants;

{ Global Functions }

function GetSuprTemplates(Doc: IXMLDocument): IXMLSuprTemplates;
begin
  Result := Doc.GetDocBinding('SuprTemplates', TXMLSuprTemplates, TargetNamespace) as IXMLSuprTemplates;
end;

function LoadSuprTemplates(const FileName: WideString): IXMLSuprTemplates;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('SuprTemplates', TXMLSuprTemplates, TargetNamespace) as IXMLSuprTemplates;
end;

function NewSuprTemplates: IXMLSuprTemplates;
begin
  Result := NewXMLDocument.GetDocBinding('SuprTemplates', TXMLSuprTemplates, TargetNamespace) as IXMLSuprTemplates;
end;

{ TXMLSuprTemplates }

procedure TXMLSuprTemplates.AfterConstruction;
begin
  RegisterChildNode('TaskTemplates', TXMLTaskTemplates);
  inherited;
end;

function TXMLSuprTemplates.Get_TaskTemplates: IXMLTaskTemplates;
begin
  Result := ChildNodes['TaskTemplates'] as IXMLTaskTemplates;
end;

{ TXMLTaskTemplates }

procedure TXMLTaskTemplates.AfterConstruction;
begin
  RegisterChildNode('TaskTemplate', TXMLTaskTemplate);
  ItemTag := 'TaskTemplate';
  ItemInterface := IXMLTaskTemplate;
  inherited;
end;

function TXMLTaskTemplates.Get_TaskTemplate(Index: Integer): IXMLTaskTemplate;
begin
  Result := List[Index] as IXMLTaskTemplate;
end;

function TXMLTaskTemplates.Add: IXMLTaskTemplate;
begin
  Result := AddItem(-1) as IXMLTaskTemplate;
end;

function TXMLTaskTemplates.Insert(const Index: Integer): IXMLTaskTemplate;
begin
  Result := AddItem(Index) as IXMLTaskTemplate;
end;

{ TXMLTaskTemplate }

procedure TXMLTaskTemplate.AfterConstruction;
begin
  RegisterChildNode('Subscribers', TXMLSubscribers);
  RegisterChildNode('Attachments', TXMLAttachments);
  FChecked:=false;
  inherited;
end;

function TXMLTaskTemplate.Get_Topic: WideString;
begin
  Result := ChildNodes['Topic'].Text;
end;

procedure TXMLTaskTemplate.Set_Topic(Value: WideString);
begin
  ChildNodes['Topic'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_Description: WideString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLTaskTemplate.Set_Description(Value: WideString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_CalcDirection: WideString;
begin
  Result := ChildNodes['CalcDirection'].Text;
end;

procedure TXMLTaskTemplate.Set_CalcDirection(Value: WideString);
begin
  ChildNodes['CalcDirection'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_Checked: Boolean;
begin
  Result:=FChecked;
end;

function TXMLTaskTemplate.Get_Checker: WideString;
begin
  Result := ChildNodes['Checker'].Text;
end;

procedure TXMLTaskTemplate.Set_Checked(Value: Boolean);
begin
  FChecked:=Value;
end;

procedure TXMLTaskTemplate.Set_Checker(Value: WideString);
begin
  ChildNodes['Checker'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_Priority: Integer;
begin
  Result := 0;
  if not VarIsNull(ChildNodes['Priority'].NodeValue) then
    Result := ChildNodes['Priority'].NodeValue;
end;

procedure TXMLTaskTemplate.Set_Priority(Value: Integer);
begin
  ChildNodes['Priority'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_PlanDuration: Integer;
begin
  Result := 0;
  if not VarIsNull(ChildNodes['PlanDuration'].NodeValue) then
    Result := ChildNodes['PlanDuration'].NodeValue;
end;

procedure TXMLTaskTemplate.Set_PlanDuration(Value: Integer);
begin
  ChildNodes['PlanDuration'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_Worker: WideString;
begin
  Result := '';
  if not VarIsNull(ChildNodes['Worker'].NodeValue) then
    Result := ChildNodes['Worker'].Text;
end;

procedure TXMLTaskTemplate.Set_Worker(Value: WideString);
begin
  ChildNodes['Worker'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_Author: WideString;
begin
  Result := '';
  if not VarIsNull(ChildNodes['Author'].NodeValue) then
    Result := ChildNodes['Author'].Text;
end;

procedure TXMLTaskTemplate.Set_Author(Value: WideString);
begin
  ChildNodes['Author'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_WorkerIsTrusted: Boolean;
begin
  Result := false;
  if not VarIsNull(ChildNodes['WorkerIsTrusted'].NodeValue) then
    Result := ChildNodes['WorkerIsTrusted'].NodeValue;
end;

procedure TXMLTaskTemplate.Set_WorkerIsTrusted(Value: Boolean);
begin
  ChildNodes['WorkerIsTrusted'].NodeValue := Value;
end;

function TXMLTaskTemplate.Get_Subscribers: IXMLSubscribers;
begin
  Result := ChildNodes['Subscribers'] as IXMLSubscribers;
end;

function TXMLTaskTemplate.Get_Attachments: IXMLAttachments;
begin
  Result := ChildNodes['Attachments'] as IXMLAttachments;
end;

{ TXMLTaskTemplateList }

function TXMLTaskTemplateList.Add: IXMLTaskTemplate;
begin
  Result := AddItem(-1) as IXMLTaskTemplate;
end;

function TXMLTaskTemplateList.Insert(const Index: Integer): IXMLTaskTemplate;
begin
  Result := AddItem(Index) as IXMLTaskTemplate;
end;
function TXMLTaskTemplateList.Get_Item(Index: Integer): IXMLTaskTemplate;
begin
  Result := List[Index] as IXMLTaskTemplate;
end;

{ TXMLSubscribers }

procedure TXMLSubscribers.AfterConstruction;
begin
  RegisterChildNode('Subscriber', TXMLSubscriber);
  ItemTag := 'Subscriber';
  ItemInterface := IXMLSubscriber;
  inherited;
end;

function TXMLSubscribers.Get_Subscriber(Index: Integer): IXMLSubscriber;
begin
  Result := List[Index] as IXMLSubscriber;
end;

function TXMLSubscribers.Add: IXMLSubscriber;
begin
  Result := AddItem(-1) as IXMLSubscriber;
end;

function TXMLSubscribers.Insert(const Index: Integer): IXMLSubscriber;
begin
  Result := AddItem(Index) as IXMLSubscriber;
end;

{ TXMLSubscriber }

function TXMLSubscriber.Get_UserLogin: WideString;
begin
  Result := ChildNodes['UserLogin'].Text;
end;

procedure TXMLSubscriber.Set_UserLogin(Value: WideString);
begin
  ChildNodes['UserLogin'].NodeValue := Value;
end;

function TXMLSubscriber.Get_Trusted: Boolean;
begin
  Result := ChildNodes['Trusted'].NodeValue;
end;

procedure TXMLSubscriber.Set_Trusted(Value: Boolean);
begin
  ChildNodes['Trusted'].NodeValue := Value;
end;

{ TXMLSubscriberList }

function TXMLSubscriberList.Add: IXMLSubscriber;
begin
  Result := AddItem(-1) as IXMLSubscriber;
end;

function TXMLSubscriberList.Insert(const Index: Integer): IXMLSubscriber;
begin
  Result := AddItem(Index) as IXMLSubscriber;
end;
function TXMLSubscriberList.Get_Item(Index: Integer): IXMLSubscriber;
begin
  Result := List[Index] as IXMLSubscriber;
end;

{ TXMLAttachments }

procedure TXMLAttachments.AfterConstruction;
begin
  RegisterChildNode('Attachment', TXMLAttachment);
  ItemTag := 'Attachment';
  ItemInterface := IXMLAttachment;
  inherited;
end;

function TXMLAttachments.Get_Attachment(Index: Integer): IXMLAttachment;
begin
  Result := List[Index] as IXMLAttachment;
end;

function TXMLAttachments.Add: IXMLAttachment;
begin
  Result := AddItem(-1) as IXMLAttachment;
end;

function TXMLAttachments.Insert(const Index: Integer): IXMLAttachment;
begin
  Result := AddItem(Index) as IXMLAttachment;
end;

{ TXMLAttachment }

function TXMLAttachment.Get_IDObject: LongWord;
begin
  Result :=0;
  if not VarIsNull(ChildNodes['IDObject'].NodeValue) then
    Result := ChildNodes['IDObject'].NodeValue;
end;

procedure TXMLAttachment.Set_IDObject(Value: LongWord);
begin
  ChildNodes['IDObject'].NodeValue := Value;
end;

function TXMLAttachment.Get_Name: WideString;
begin
  Result := ChildNodes['Name'].Text;
end;

procedure TXMLAttachment.Set_Name(Value: WideString);
begin
  ChildNodes['Name'].NodeValue := Value;
end;

function TXMLAttachment.Get_ObjectType: LongWord;
begin
  Result := 0;
  if not VarIsNull(ChildNodes['ObjectType'].NodeValue) then
    Result := ChildNodes['ObjectType'].NodeValue;
end;

procedure TXMLAttachment.Set_ObjectType(Value: LongWord);
begin
  ChildNodes['ObjectType'].NodeValue := Value;
end;

function TXMLAttachment.Get_Semantics: LongWord;
begin
  Result := 0;
  if not VarIsNull(ChildNodes['Semantics'].NodeValue) then
    Result := ChildNodes['Semantics'].NodeValue;
end;

procedure TXMLAttachment.Set_Semantics(Value: LongWord);
begin
  ChildNodes['Semantics'].NodeValue := Value;
end;

function TXMLAttachment.Get_URL: WideString;
begin
  Result := ChildNodes['URL'].Text;
end;

procedure TXMLAttachment.Set_URL(Value: WideString);
begin
  ChildNodes['URL'].NodeValue := Value;
end;

end.