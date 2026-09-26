(***************************************
   System    : PDMProject 6
   Module    : PDMClasses
               Этот модуль содержит объявления  классов модулей расширения
   Date      : 02.10.2001
   LastChange: 24.02.2002
   Autor     : Григорьев П.В.
****************************************)
(*
Изменения:
*)
unit PIClasses;

interface

uses
  DB, DBClient, ComCtrls, Variants;

type
  TRunMethod = function (stName : string; Params : array of Variant) : Variant of object;

  //Версия
  TVersion = class(TObject)
  private
  public
    //Параметры объекта
    inID : longInt;         //ID
    stProduct : string;     //Наименование
    stType : string;        //Тип
    stVersion : string;     //Версия
    stState : string;       //Состояние
    inAccessLevel : byte;   //Уровень доступа
    inLockLevel : byte;     //Уровень блокировки
    boDocument : Boolean;   //Признак объекта-документа
    boRevision : Boolean;   //Признак релиза

    function GetAttributes : Variant; virtual;
    function GetLinkedObjects(stLinkName : string; boDirection, boFullParse, boGroupByProduct, boForTree  : boolean) : Variant; virtual;
    function GetLinkedObjectsAndFiles(stLinkName : string; boFullParse, boOnlyDocuments : boolean) : Variant; virtual;
    function GetDocuments : Variant; virtual;
    function GetFiles(boParse : boolean) : Variant; virtual;
    function GetPrivileges : Variant; virtual;
    function GetEmployInProjects : Variant; virtual;
    function InsertObjectsFromCliboard(stLinkName, stDBName : string; boCheckOut : boolean) : boolean; virtual;
    function GetVersionList : Variant; virtual;
    function UpObject(Name : string) : Boolean; virtual;
//    constructor FromDataSetRecord(DS : TDataSet);
    constructor FromRecord(DS : TDataSet);
end;

  TLink = class(TObject)
  public
    stLinkName : string;
    Parent,
    Child : TVersion;
    reMinQuantity,
    reMaxQuantity : variant;
    stIDUnit : string;
    stIDMeasure : string;
    stUnit : string;
    stMeasure : string;
    inID   : longint;
    function GetLinkAttributes : Variant; virtual;
  //  constructor FromTreeView(TreeView : TTreeView); virtual;
  //  constructor FromTreeNode(Node : TTreeNode); virtual;
  //  constructor FromTreeNodeAndDataSetRecord(Node : TTreeNode; stLinkName : string; DS : TDataSet); virtual;
    function GetUnit : string; virtual;
    function GetMeasure : string; virtual;
    constructor CreateFromParentAndDataSetRecord(Parent : TVersion; stLinkName : string; DS : TDataSet); virtual;
    constructor CreateFromChildAndDataSetRecord(Child : TVersion; stLinkName : string; DS : TDataSet);   virtual;
  end;

procedure AssignRunMethod(RM : TRunMethod);

var RunMethod : TRunMethod;

const
    //Уровень доступа к объекту
    alNoaccess=0;
    alReadOnly=1;
    alFullControl=2;
    alAdministration=3;
    //Уровень блокировки объекта
    llNoLock=0;
    llMyLock=1;
    llNonMyLock=2;

implementation

function GetValue(DataSet : TDataSet; stFieldName : string; vaDefault : Variant) : Variant;
begin
  if (DataSet.Fields.FindField(stFieldName) <> nil) and (DataSet[stFieldName] <> null) then
    GetValue := DataSet[stFieldName]
  else
    GetValue := vaDefault;
end;

constructor TVersion.FromRecord(DS : TDataSet);
begin
  inherited Create;
  Self.stType        := GetValue(DS,'_TYPE',        '');
  Self.stProduct     := GetValue(DS,'_PRODUCT',     '');
  Self.stVersion     := GetValue(DS,'_VERSION',     '');
  Self.stState       := GetValue(DS,'_STATE',       '');
  Self.inAccessLevel := GetValue(DS,'_ACCESSLEVEL', 0);
  Self.inLockLevel   := GetValue(DS,'_LOCKED',      0);
  Self.boDocument    := GetValue(DS,'_DOCUMENT',    FALSE);
  Self.boRevision    := GetValue(DS,'_REVISION',    FALSE);
  Self.inID          := GetValue(DS,'_ID_VERSION',  0);
end;

function TVersion.GetVersionList : Variant;
begin
end;


function TVersion.GetAttributes : Variant;
var cdsLocal : TClientDataSet;
begin
  cdsLocal := TClientDataSet.Create(nil);
  try
  cdsLocal.Data := RunMethod('GetInfoAboutVersion', ['', '', '',
                                                     Self.inID,
                                                     2]);
  except
    cdsLocal.Data := null;
  end;
  GetAttributes := cdsLocal.Data;
  cdsLocal.Free;
end;


function TVersion.GetFiles(boParse : boolean) : Variant;
begin
end;

function TVersion.GetDocuments : Variant;
begin
end;


function TVersion.GetPrivileges : Variant;
begin
end;

function TVersion.GetEmployInProjects : Variant;
begin
end;

function TVersion.GetLinkedObjects(stLinkName : string; boDirection, boFullParse, boGroupByProduct, boForTree  : boolean) : Variant;
begin
end;

function TVersion.GetLinkedObjectsAndFiles(stLinkName : string; boFullParse, boOnlyDocuments : boolean) : Variant;
begin
end;

function TVersion.UpObject(Name : string) : boolean;
begin
end;

function TVersion.InsertObjectsFromCliboard(stLinkName, stDBName : string; boCheckOut : boolean) : boolean;
begin
end;

function TLink.GetLinkAttributes : Variant;
var cdsLocal : TClientDataSet;
begin
  cdsLocal := TClientDataSet.Create(nil);
  try
    cdsLocal.Data := RunMethod('GetLinkAttributes', ['', '', '',
                                                     '', '', '', Self.inID]);
  except
    cdsLocal.Data := null;
  end;
  GetLinkAttributes := cdsLocal.Data;
  cdsLocal.Free;
end;


function TLink.GetUnit : string;
begin
end;

function TLink.GetMeasure : string;
begin
end;

procedure AssignRunMethod(RM : TRunMethod);
begin
  RunMethod := RM;
end;

constructor TLink.CreateFromParentAndDataSetRecord(Parent : TVersion; stLinkName : string; DS : TDataSet);
begin
end;

constructor TLink.CreateFromChildAndDataSetRecord(Child : TVersion; stLinkName : string; DS : TDataSet);
begin
end;

end.


