library PreviewFrame;

uses
  ComServ,
  PreviewFrame_TLB in 'PreviewFrame_TLB.pas',
  PreviewFrameWindowImpl in 'PreviewFrameWindowImpl.pas' {PreviewFrameWindow: TActiveForm} {PreviewFrameWindow: CoClass},
  DataProvider_TLB in '..\..\..\Common\Delphi\TLB\DataProvider_TLB.pas',
  Loodsman_TLB in '..\..\..\Common\Delphi\TLB\Loodsman_TLB.pas',
  LoodsmanObjects_TLB in '..\..\..\Common\Delphi\TLB\LoodsmanObjects_TLB.pas',
  BOSimple_TLB in '..\..\..\Common\Delphi\TLB\BOSimple_TLB.pas',
  Ask_TLB in '..\..\..\Common\Delphi\TLB\Ask_TLB.pas',
  ShellObjHelper in 'ShellObjHelper.pas',
  SuprStatWindowImpl in 'SuprStatWindowImpl.pas' {SuprStatWindow: TActiveForm} {SuprStatWindow: CoClass},
  SUPR_TLB in '..\..\..\Common\Delphi\TLB\SUPR_TLB.pas',
  AddonsRegister in '..\..\..\Common\Delphi\AddonsRegister.pas',
  PDMObjects_TLB in '..\..\..\Common\Delphi\TLB\PDMObjects_TLB.pas';

{$E ocx}

//ActiveX фрейм должен быть зарегистрирован в каталоге COM компонентов.
//Можно возложть это на инсталлятор, но удобнее сделать модуль
//саморегистрирующимся.
//Для этого нужно переопределить функцию регистрации
//(она вызывается командой regsrv32)
function DllRegisterServer: HResult; stdcall;
begin
  //Нужно зарегистрировать каждый фрейм, находящийся в библиотеке
  Result := RegisterFrames([ CLASS_PreviewFrameWindow]);
  Result := RegisterFrames([ CLASS_SuprStatWindow]);
end;

function DllUnregisterServer: HResult; stdcall;
begin
  Result := UnRegisterFrames([ CLASS_PreviewFrameWindow ]);
  Result := UnRegisterFrames([ CLASS_SuprStatWindow ]);

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
