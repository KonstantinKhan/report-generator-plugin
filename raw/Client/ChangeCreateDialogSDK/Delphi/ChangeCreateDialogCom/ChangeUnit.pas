//Тестовый плагин подмены диалога создания объекта
unit ChangeUnit;

interface

uses Loodsman_TLB, dialogs, variants, windows, messages, sysUtils, Forms;

function ChangeCreateDialogCom(PluginCall : IPluginCall; Mode: integer):
  integer; stdcall;

implementation

function ChangeCreateDialogCom(PluginCall : IPluginCall; Mode: integer):
  integer;
var
  varParam: Variant;
  InNewIDLink : Integer;
begin
  if Application.MessageBox('Запустить плагин ChangeCreateDialogCom?',
    'ЛОЦМАН', mb_YesNo) = idYes then
  begin
    ShowMessage('Запустился плагин подмены диалога создания объекта. Функция ChangeCreateDialogCom');

    if Mode = 0 then
      ShowMessage('Режим: Создание')
    else
    if Mode = 1 then
      ShowMessage('Режим: Свойства');

    //Упаковка параметров
    varParam := VarArrayCreate([0, 8], varVariant);
    varParam[0] := PluginCall.stType;  // название типа
    varParam[1] := PluginCall.stProduct;  // продакт
    varParam[2] := PluginCall.stVersion;  // версия
    varParam[3] := 'Деталь';  //тип потомка
    varParam[4] := 'CreatedByPlugin'; //нов продакт
    varParam[5] := #32;
    varParam[6] := 'Состоит из ...';
    varParam[7] := 'Проектирование';
    varParam[8] := false;
    try
      InNewIDLink := PluginCall.RunMethod('InsertObject', varParam);
    except
      on E: Exception do
        Showmessage(e.Message);
    end;

    ShowMessage(inttostr(InNewIDLink));
    Result := 0;
  end
  else
    result := 1;
end;

end.
