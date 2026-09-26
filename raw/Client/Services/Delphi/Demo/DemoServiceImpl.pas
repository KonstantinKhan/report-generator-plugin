//******************************************************************************
// Модуль содержит реализацию сервиса
// Каждый сервис должен реализовывать 3 обязательных интерфейса:
//  - собственный интерфейс (в примере IDemoService)
//  - IServiceInfo     - предоставляет ЛОЦМАН Клиенту информацию о сервисе
//  - ILoodsmanService - управляет жизненным циклом сервиса
// Помимо обязательных, данный сервис реализует дополнительные интерфейсы:
//  - INotificationHandler - позволяет подписываться на уведомления о событиях
//  - IActionHandler       - позволяет COM объекту быть обработчиком команд Клиента
//******************************************************************************

//Для более полной демонстрации возможностей сервиса по взаимодействию с другими
//модулями ЛОЦМАН Клиента, необходимо использовать сервис в сочетании с плагином
//из папки ..\..\..\Plugins\Delphi\Demo
//Однако для первого знакомства с сервисами, лучше использовать данный сервис
//как самодостаточный. Для этого необходимо раскомментировать следующую
//директиву 
{.$DEFINE WITHOUT_PLUGIN}

unit DemoServiceImpl;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, Demo_TLB, StdVcl, Loodsman_TLB, DemoService_LogViewer , Forms, SysUtils, Variants, DataProvider_TLB, Dialogs, Windows;

const
  acProperties=1; //Индекс команды "Свойства";

type
  TDemoService = class(TAutoObject, IDemoService, IServiceInfo, ILoodsmanService, INotificationHandler, IActionHandler)
  protected
    //==========================================================================
    //IServiceInfo - информация о сервисе
    //---
        //Описание сервиса
        function GetServiceDescription: WideString; safecall;

        //Имя сервиса
        function GetServiceName: WideString; safecall;
    //--------------------------------------------------------------------------

    //==========================================================================
    //ILoodsmanService - интерфейс отвечающий за жизненный цикл сервиса
    //---
        //Подключение сервиса к ЛОЦМАН Клиенту (в текущей и предыдущих версиях событие совпадает с запуском ЛОЦМАН Клиента)
        procedure OnBindService(const OwnerApplication: IDispatch); safecall;

        //Открытие базы данных
        procedure OnOpenDatabase(const Connection, WBSSystem: IDispatch; const DataBase: IDataBase); safecall;

        //Закрытие базы данных
        procedure OnCloseDatabase(const DataBase: IDataBase); safecall;

        //Отключение сервиса от ЛОЦМАН Клиента (в текущей и предыдущих версиях событие совпадает с закрытием ЛОЦМАН Клиента)
        procedure OnUnbindService; safecall;
    //--------------------------------------------------------------------------

    //==========================================================================
    //IDemoService - собственный интерфейс сервиса, здесь можно определить
    //               дополнительные методы сервиса, которые могут быть доступны
    //               остальным модулям ЛОЦМАН Клиент
    //---

        //Показать окно с журналом уведомлений и вызовов команд
        procedure ShowNotificationsLogger; safecall;

        //Перейти в режим перехвата и прерывания команд
        procedure StartIntercept; safecall;

        //Получить набор данных содержащий список пользователей
        //Этот метод не относится к основной теме сервиса, а служит для демонстрации
        //возможного применения методов OnOpenDatabase и OnCloseDatabase
        //интерфейса ILoodsmanService
        function GetDataFromCashe: IDataSet; safecall;
    //--------------------------------------------------------------------------

    //==========================================================================
    //INotificationHandler - интерфейс подписчика на уведомления
    //---
        //Метод вызывается когда происходит одно из событий, на которые подписались
        procedure OnNotify(const Notification: INotification); safecall;
    //--------------------------------------------------------------------------

    //==========================================================================
    //IActionHandler - интерфейс обработчика команд
    //---
        //Срабатывает, когда вызвана команда (например пользователь нажал кнопку в меню)
        //и ее необходимо обработать  
        procedure OnActionExecute(ActionCommand: Integer; ActionData: OleVariant; var ActionResultData: OleVariant; out ActionResult: ActionResults);      safecall;

        //Метод вызывается когда ЛОЦМАН Клиенту необходимо проверить доступность команд
        procedure OnCheckActions(const Actions: IActions); safecall;
    //--------------------------------------------------------------------------

  private
    finterceptactions : Boolean;
    app : ILoodsmanApplication;
    frmLogViewer : TfrmLogViewer;
    dsGetUserList : IDataSet;
  end;

implementation

uses ComServ  ;


{IServiceInfo}
// запрос описания
function TDemoService.GetServiceDescription: WideString;
begin
  Result := 'DemoService Description';
end;
// запроси имени
function TDemoService.GetServiceName: WideString;
begin
  Result := 'DemoService';
end;

{ILoodsmanService}
// инициализация
procedure TDemoService.OnBindService(const OwnerApplication: IDispatch);
var i : Integer;
begin
   finterceptactions := False;
   app := OwnerApplication as ILoodsmanApplication;
   app.NotifyUser('Demo service', 'Вызван метод OnBindService',1,0); //Метод NotifyUser показывает всплывающее сообщение

   //Самое оптимальное место для регистрации обработчика команд и подписки на
   //уведомления метод OnBindService. Обычно требуется подписаться
   //на одно или несколько уведомлений и/или зарегистрировать обработчик одной или
   //нескольких команд (например так app.AddNotificationHandler(Self,noRefresh,'',C_OBJECT);
   //APP.AddActionHandler(Self,acProperties,0,false); ). При этом методы
   //OnNotify и OnActionExecute будут срабатывать только для уведомлений и команд
   //подходящих под эти условия.
   //Но так как задача данного сервиса логировать все уведомления и команды в
   //ЛОЦМАН Клиенте, то подпишемся на все

   // подписка на все возможные события
   app.AddNotificationHandler(Self,0,'',0);

   // регистрация обработчика ВСЕХ команд :-)
   for I := 0 to  10000 do  //так как не существует метода регистрирующего
                            //обработчик сразу всех команд, то просто пройдемся
                            //в цикле по всем возможным идентификаторам команд и
                            //для каждой зарегистрируем обработчик.
                            //Значение 10000 так как пока не существует и в
                            //ближайшее время вряд ли появится команда с
                            //идентификатором большим чем 10000
       APP.AddActionHandler(Self,i,0,false);


   {$IFDEF WITHOUT_PLUGIN}
   ShowNotificationsLogger; //Этот метод должен вызываться из плагина, но если
                            //включена опция самодостаточности сервиса, то
                            //вызовем его здесь  
   {$ENDIF}
end;

// событие подключения к БД
procedure TDemoService.OnOpenDatabase(const Connection, WBSSystem: IDispatch; const DataBase: IDataBase);
begin
  app.NotifyUser('Demo service', 'Вызван метод OnOpenDatabase',1,0);
  // закэшируем датасет для использования в плагине (датасет этот будем отдавать в методе GetDataFromCashe)
  dsGetUserList := (Connection as IsimpleAPI).GetDataSet('GetUserList', VarArrayOf([])) as IDataSet;
end;

// событие отключения от БД
procedure TDemoService.OnCloseDatabase(const DataBase: IDataBase);
begin
  app.NotifyUser('Demo service', 'Вызван метод OnCloseDatabase',1,0);
   // сброс кэша
   dsGetUserList := nil;
end;

// финализация
procedure TDemoService.OnUnbindService;
var
  I: Integer;
begin
  app.NotifyUser('Demo service', 'Вызван метод OnUnbindService',1,0);
  // отписка от всех событий
  app.RemoveNotificationHandler(Self,0,'',0);
  // разрегистрация обработчика команд
  for I := 0 to  10000 do
     APP.RemoveActionHandler(Self,i);
  // освобождение памяти
   if frmLogViewer <> nil then
      freeandnil(frmLogViewer);

  app := nil;
end;


{INotificationHandler}
// получение уведомления о событии
procedure TDemoService.OnNotify(const Notification: INotification);
begin
   //Этот метод срабатывает всякий раз, когда какой-нибудь компонент
   //ЛОЦМАН Клиента (сервис, фрейм, плагин, сам Клиент и т.д.) отправляет
   //уведомление, на которое мы подписаны. В данном случае реагировать
   //будем на все уведомления (так как подписались на все)
   if frmLogViewer <> nil then
      frmLogViewer.LogNotification(Notification);
end;

{IDemoService}
procedure TDemoService.ShowNotificationsLogger;
begin
  app.NotifyUser('Demo service', 'Вызван метод ShowNotificationsLogger',1,0);
  if  frmLogViewer  = nil then
    frmLogViewer := TfrmLogViewer.CreateNonModal(app.AppHandle, app.MainHandle);
  if frmLogViewer <> nil then
    frmLogViewer.Show;
end;

//Здесь будем отдавать то что запомнили в OnOpenDataBase
function TDemoService.GetDataFromCashe: IDataSet;
begin
  app.NotifyUser('Demo service', 'Вызван метод GetDataFromCashe',1,0);
  Result := dsGetUserList;
end;

procedure TDemoService.StartIntercept;
begin
   Self.finterceptactions := True;
end;

{IActionHandler}
procedure TDemoService.OnActionExecute(ActionCommand: Integer; ActionData: OleVariant; var ActionResultData: OleVariant;  out ActionResult: ActionResults);
var res : Integer;
begin
  //Если не находимся в режиме прерывания команд, то просто залогируем команду
  //и отдадим ее следующему обработчику, для этого в качестве ActionResult
  //нужно вернуть arContinue
  if frmLogViewer <> nil then
    frmLogViewer.LogAction(ActionCommand, ActionData, ActionResultData);

  if finterceptactions then
  begin
    if MessageBox(app.MainHandle , pchar(format('Перехвачена команда <%d>'+#13+#10+'Продолжить выполнение?',[ActionCommand])), 'Demo Service', MB_ICONQUESTION or MB_OKCANCEL) = IDOK then
      ActionResult := arContinue
    else
      ActionResult := arDone // команда выполнена, дальнейшая обработка выполняться не будет

  end
  else
    ActionResult := arContinue; // передаем обработку по конвейеру
end;

procedure TDemoService.OnCheckActions(const Actions: IActions);
begin
  //Здесь можно управлять доступностью любых команд
  //Например, сделать недоступной команду "Свойства" можно так:
  //Actions.SetActionEnabled(acProperties, False);
end;

initialization
  TAutoObjectFactory.Create(ComServer, TDemoService, Class_DemoService,
    ciMultiInstance, tmApartment);
end.
