unit InsertTemplateUnit;

interface

uses
  SUPR_TLB, TaskTemplatesSchema;

type
  TInsertTemplates = class
  protected
    function getURL(inID : Integer; objType : integer):string;
    function GetVariableValue(stVar : string):string;
    function InsertTemplate(TaskTemplate : IXMLTaskTemplate):ITask;
  public
    //задание, выделенное пользователем в клиенте
    SelectedTask : ITask;
    //ссылка на биб-ку СУПР
    WBSIntf      : IWBSSystem;
    function AddSiblings(TaskTemplates : IXMLTaskTemplates):ITraceResults;
    function AddSuccessors(TaskTemplates : IXMLTaskTemplates):ITraceResults;
  end;

implementation

uses
  SysUtils, base62, Base64Encoder, DataProvider_TLB;

{ TInsertTemplates }

function TInsertTemplates.AddSiblings(TaskTemplates : IXMLTaskTemplates):ITraceResults;
var
  idTrace       : Integer;
  i             : Integer;
  NewTask       : ITask;
begin
  idTrace:=WBSIntf.NewTrace;
  try
    try
      for i:=0 to TaskTemplates.Count-1 do
        if TaskTemplates[i].Checked then  //если пользователь выбрал этот шаблон в диалоге
        begin
          NewTask:=InsertTemplate(TaskTemplates[i]);
          if Assigned(SelectedTask.Parent) then
          begin
            NewTask.ParentID:=SelectedTask.Parent.ID;  //родитель будет один и тот же
            NewTask.WBSIndex:=SelectedTask.WBSIndex+1+i; //в позицию - "после текущего"
            NewTask.PlanStartRestriction:=drNone;  //снимаем фиксацию, чтобы могло автоматически распланироваться
            NewTask.PlanFinishRestriction:=drNone;
          end
          else
          begin
            if SelectedTask.PlanStartRestriction=drFixed then
              NewTask.PlanDateStart:=SelectedTask.PlanDateStart;
            if SelectedTask.PlanFinishRestriction=drFixed then
              NewTask.PlanDateFinish:=SelectedTask.PlanDateFinish;
          end;
        end;
    finally
      Result:=WBSIntf.SaveTrace(idTrace);
    end;
  except
    WBSIntf.DiscardTrace(idTrace);
  end;
end;

function TInsertTemplates.AddSuccessors(TaskTemplates : IXMLTaskTemplates):ITraceResults;
var
  idTrace       : Integer;
  i             : Integer;
  NewTask       : ITask;
begin
  idTrace:=WBSIntf.NewTrace;
  try
    try
      for i:=0 to TaskTemplates.Count-1 do
        if TaskTemplates[i].Checked then //если пользователь выбрал этот шаблон
        begin
          NewTask:=InsertTemplate(TaskTemplates[i]); //создаем задание
          SelectedTask.Bind(ltEndBegin,NewTask); //связываем с заданием, которое выделено пользователем
          if Assigned(SelectedTask.Parent) then
          begin
            NewTask.Parent:=SelectedTask.Parent;   //родитель будет один и тот же
            NewTask.PlanStartRestriction:=drNone;  //снимаем фиксацию, чтобы могло автоматически распланироваться
            NewTask.PlanFinishRestriction:=drNone;
          end;
        end;
    finally
      Result:=WBSIntf.SaveTrace(idTrace);
    end;
  except
    WBSIntf.DiscardTrace(idTrace);
  end;
end;

{парсинг переменных}
function TInsertTemplates.GetVariableValue(stVar : string):string;
var
  p : Integer;
begin
  Result:=stVar;
  p:=Pos('%PARENTAUTHOR%',UpperCase(stVar)); //инициатор от родительского задания
  if p>0 then
    if Assigned(SelectedTask.Parent) then Result:=SelectedTask.Parent.Author.Name;
  p:=Pos('%PARENTWORKER%',UpperCase(stVar)); //исполнитель от родительского задания
  if p>0 then
    if Assigned(SelectedTask.Parent) then Result:=SelectedTask.Parent.Worker.Name;
  p:=Pos('%PARENTTOPIC%',UpperCase(stVar)); //тема от родительского задания
  if p>0 then
    if Assigned(SelectedTask.Parent) then
      Result:=StringReplace(stVar,'%PARENTTOPIC%',SelectedTask.Parent.Topic,[rfReplaceAll,rfIgnoreCase]);
end;

{генерация ссылки для приложения}
function TInsertTemplates.getURL(inID : Integer; objType : integer):string;
var
  objectID62    : string;
  objectIDS     : string;
  DBName        : string;
begin
  Result := '';
  objectID62 := base62.Num2Base(inID);
  if objectIDS = '' then
    objectIDS := objectID62
  else
    objectIDS := objectIDS + ',' + objectID62;
  DBName:=Trim((IDispatch(WBSIntf.Connection) as ISimpleAPI).DBName);
  case objType of
    1: Result := format('ask:Loodsman.URL?Action=Open,params=%s|1|0|%s', [MimeEncodeString(DBName), objectIDS]);
    3: Result := format('ask:Loodsman.URL?Action=OpenTask,params=%s|5|0|%s', [MimeEncodeString(DBName), objectIDS]);
  end;
end;

function TInsertTemplates.InsertTemplate(TaskTemplate: IXMLTaskTemplate): ITask;
var
  UserList : IUsers;
  User     : IUser;
  stUser   : string;
  i        : Integer;
begin
  Result:=WBSIntf.NewTask;
  Result.Topic:=GetVariableValue(TaskTemplate.Topic);
  Result.Description:=TaskTemplate.Description;
  if AnsiCompareText(TaskTemplate.CalcDirection,'AsLateAsPossible')=0 then
    Result.CalcDirection:=cdAsLateAsPossible;
  if AnsiCompareText(TaskTemplate.CalcDirection,'AsSoonAsPossible')=0 then
    Result.CalcDirection:=cdAsSoonAsPossible;
  Result.PlanDuration:=TaskTemplate.PlanDuration;
  UserList:=WBSIntf.GetUserList;
  //задаем исполнителя
  stUser:=GetVariableValue(TaskTemplate.Worker);
  User:=UserList.FindByName(stUser);
  if Assigned(User) then Result.Worker:=User;
  Result.WorkerIsTrusted:=TaskTemplate.WorkerIsTrusted;
  //задаем проверяющего
  stUser:=GetVariableValue(TaskTemplate.Checker);
  User:=UserList.FindByName(stUser);
  if Assigned(User) then Result.Checker:=User;
  //подписчики
  for i:=0 to TaskTemplate.Subscribers.Count-1 do
  begin
    User:=UserList.FindByName(GetVariableValue(TaskTemplate.Subscribers[i].UserLogin));
    if Assigned(User) then
    begin
      User.Trusted:=(TaskTemplate.Subscribers[i]).Trusted;
      Result.AddSubscriber(User);
    end;
  end;
  //приложения
  for i:=0 to TaskTemplate.Attachments.Count-1 do
    with TaskTemplate.Attachments[i] do
      if Name<>'' then
        Result.NewAttachment(Name,getURL(IDObject, ObjectType),IDObject,ObjectType, Semantics);
  //задаем инициатора
  stUser:=GetVariableValue(TaskTemplate.Author);
  User:=UserList.FindByName(stUser);
  if Assigned(User) then Result.Author:=User;
end;

end.
