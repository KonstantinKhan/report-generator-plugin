//******************************************************************************
// Модальное окно плагина. В окне реализован выбор объектов из дерева с помощью
// метода ILoodsmanApplication.SelectObjects
//******************************************************************************
unit demo_modalWindow;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Loodsman_TLB, ComObj, ActiveX, StdCtrls, ExtCtrls;

type
  TfrmModalWindow = class(TForm)
    btnSelectObjects: TButton;
    btnCancel: TButton;
    mmo1: TMemo;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // Класс который управляет активностью кнопки "Выбрать" в зависимости от того что выбрано
  TSelectionCallback = class(TInterfacedObject, ISelectionCallback)
  private
    FPluginCall: IPluginCall;
  protected
    //ISelectionCallback
    function OnGetSelectButtonEnabled(DATA: OleVariant): WordBool; safecall; //Этот метод срабатывает всякий раз,
                                                                             //когда в окне меняется выбранный объект
  public
    constructor Create(APluginCall: IPluginCall);
    destructor Destroy; override;  
  end;


//Основная функция - показывает окно
procedure menu_ShowModalWindow(const PluginCall: IPluginCall); stdcall; export;
//Вспомогательная функция - возвращает текстовое представление выбранного объекта
function SelectedToString(ASelected: OleVariant): string;

implementation

uses
  PDMObjects_TLB;

var
  MethodExecution: Boolean=False;  

{$R *.dfm}
procedure menu_ShowModalWindow(const PluginCall: IPluginCall); stdcall; export;
var
  App: ILoodsmanApplication;
  frmModalWindow: TfrmModalWindow;
  ANeedUnload: Boolean;
  SelectResult: Integer;
  i: Integer;
  SelectCallback: ISelectionCallback;
const
  HiddenForSelection=100500;  
begin
  SelectResult:=mrNone;

  if MethodExecution then Exit; //Если эта процедура уже выполняется то выходим

  MethodExecution:= True;
  try
    frmModalWindow := TfrmModalWindow.Create(nil);
    try
       App := PluginCall as ILoodsmanApplication;
       //Покажем модальную форму. При нажатии на кнопку "Добавить объекты"
       //ЛОЦМАН Клиент переходит в режим выбора объектов (внизу экрана
       //появляется панелька с кнопками "Выбрать", "Отменить"). При этом
       //модальное окно нужно временно закрыть, так как в противном случае
       //произойдет зависание интерфейса. После завершения выбора модальное окно
       //снова нужно показать 

       SelectCallback:= TSelectionCallback.Create(PluginCall);
       while frmModalWindow.ShowModal = HiddenForSelection do //Такой ModalResult возвращается при нажатии на кнопку "Добавить объекты"
       begin
         //Переведем ЛОЦМАН Клиент в режим выбора объектов. На вход передадим
         //объект реализующий интерфейс ISelectionCallback. Пока Клиент будет находится в режиме
         //выбора объетов, метод OnGetSelectButtonEnabled этого интерфейса будет
         //вызываться всякий раз когда меняется выделенный объет. Доступность
         //кнопки "Выбрать" определяется тем что вернет метод: True - кнопка доступна,
         //False - кнопка недоступна. Если же вместо SelectCallback передать nil,
         //то кнопка "Выбрать" будет доступна всегда
         SelectResult:= App.SelectObjects(SelectCallback, 'Выберите объекты','','');

         //Если ЛОЦМАН Клиент вышел из режима выбора объектов по нажатию на
         //"Выбрать" или "Отмена", то нужно снова показать модальное окно
         //(т.е. зайти на еще один круг по циклу). Но если режим выбора
         //завершился по другой причине, например, при закрытии Клиента
         //(вернется mrAbort), то модальное окно показывать не надо,
         //поэтому прерываем цикл 
         if not (SelectResult in [mrOk, mrCancel]) then
             Break;

         if SelectResult=mrOk then
           if Assigned(PluginCall.Content) then
           begin
             for i := 0 to PluginCall.Content.SelectedCount - 1 do
               frmModalWindow.mmo1.Lines.Add(SelectedToString(PluginCall.Content.SelectedByIndex(i)));
             frmModalWindow.mmo1.Lines.Add('');
           end;
       end;

       if (SelectResult in [mrOk, mrCancel]) and (frmModalWindow.ModalResult = mrOk) then
         ShowMessage('ОК');

    finally
      FreeAndNil(frmModalWindow);
    end;
  finally
    MethodExecution:= False;
  end;
end;


function SelectedToString(ASelected: OleVariant): string;
  const OBJECT_STRINGS: array[C_NONE..C_WFTASK] of string =
    ('NONE', 'PDMOBJECT', 'PDMLINK', 'FILE', 'ATTRIBUTE', 'TASK', 'WFROUTE',
     'MAIL', 'USER', 'WFTASK');
  var
    PDMData: IPDMData;
    PDMLink: IPDMLink;
begin
  Result:='Unknown';
  if not VarIsEmpty(ASelected) and not VarIsNull(ASelected) and
     not VarIsClear(ASelected) and VarIsType(ASelected, varDispatch) then
    if Succeeded(IDispatch(ASelected).QueryInterface(IID_IPDMData, PDMData)) then
      if PDMData.ObjectCode in [Low(OBJECT_STRINGS)..High(OBJECT_STRINGS)] then
      begin
        Result:= Format('%s %d (%s)', [OBJECT_STRINGS[PDMData.ObjectCode], PDMData.ID, PDMData.Name]);

        if (PDMData.ObjectCode=C_LINK) and
           Succeeded(PDMData.QueryInterface(IID_IPDMLink, PDMLink)) and
           Assigned(PDMLink.ChildObject) then
          Result:= Result + Format(' - Дочерний объект: %s %d (%s)', [OBJECT_STRINGS[C_OBJECT], PDMLink.ChildObject.ID, PDMLink.ChildObject.Name]);
      end;
end;

{ TSelectionCallback }

constructor TSelectionCallback.Create(APluginCall: IPluginCall);
begin
  inherited Create();
  FPluginCall:= APluginCall;
end;

destructor TSelectionCallback.Destroy;
begin
  FPluginCall:=nil;
  inherited;
end;

function TSelectionCallback.OnGetSelectButtonEnabled(
  DATA: OleVariant): WordBool;
begin
  Result:= False;
  //В качестве примера, кнопка будет доступна только если выбрано нечетное
  //количество объектов
  if Assigned(FPluginCall) and Assigned(FPluginCall.Content) then
    Result:= FPluginCall.Content.SelectedCount and 1 = 1;  
end;

end.
