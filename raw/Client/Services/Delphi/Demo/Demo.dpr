//******************************************************************************
// Демонстрационный сервис для ЛОЦМАН Клиента
//
// Описание:
//   Логирует уведомления о событиях и вызовы команд в ЛОЦМАН Клиенте
//
// Подключение:
//   Зарегистрировать сервис командой regsvr32
//
// Модуль содержащий реализацию сервиса - DemoServiceImpl.pas 
//
//******************************************************************************
library Demo;

uses
  ComServ,
  Demo_TLB in 'Demo_TLB.pas',
  DemoServiceImpl in 'DemoServiceImpl.pas' {DemoService: CoClass},
  AddonsRegister in '..\..\..\Common\Delphi\AddonsRegister.pas',
  DemoService_LogViewer in 'DemoService_LogViewer.pas' {frmLogViewer},
  AddressBook_TLB in '..\..\..\Common\Delphi\TLB\AddressBook_TLB.pas',
  Ask_TLB in '..\..\..\Common\Delphi\TLB\Ask_TLB.pas',
  BOSimple_TLB in '..\..\..\Common\Delphi\TLB\BOSimple_TLB.pas',
  DataProvider_TLB in '..\..\..\Common\Delphi\TLB\DataProvider_TLB.pas',
  Loodsman_TLB in '..\..\..\Common\Delphi\TLB\Loodsman_TLB.pas',
  LoodsmanObjects_TLB in '..\..\..\Common\Delphi\TLB\LoodsmanObjects_TLB.pas',
  PDMObjects_TLB in '..\..\..\Common\Delphi\TLB\PDMObjects_TLB.pas',
  SUPR_TLB in '..\..\..\Common\Delphi\TLB\SUPR_TLB.pas';

//Сервис должен быть зарегистрирован в каталоге COM компонентов.
//Можно возложть это на инсталлятор, но удобнее сделать модуль
//саморегистрирующимся.
//Для этого нужно переопределить функцию регистрации
//(она вызывается командой regsrv32)  
function DllRegisterServer: HResult; stdcall;
begin
 // регистрация в каталоге
 result := RegisterServices([ CLASS_DemoService ]);
end;

function DllUnregisterServer: HResult; stdcall;
begin
  // разрегистрация в каталоге
 result := UnRegisterServices([ CLASS_DemoService ]);
end;


exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
