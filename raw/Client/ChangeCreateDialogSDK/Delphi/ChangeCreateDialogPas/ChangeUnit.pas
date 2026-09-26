//Тестовый плагин подмены диалога создания объекта
unit ChangeUnit;

interface
uses {Loodsman_TLB, }Dialogs, variants, PIClasses{, PDMClasses, PIImplement};

function ChangeCreateDialogPas( AppHandle : THandle; // указатель приложения
                  PluginHandle : THandle; //указатель плагина
                  RunMethod : TRunMethod; // указатель на функцию доступа к методам СП
                 ImpVersion : TVersion; //Расширенный класс версии, содержащий методы для работы с API
                  DBName : string; //имя БД
                 CheckOut : string;//имя чекаута
                  inIdLink : integer; Mode: integer) // идентификатор связи
                                            : integer;  stdcall;

implementation

function ChangeCreateDialogPas( AppHandle : THandle; // указатель приложения
                  PluginHandle : THandle; //указатель плагина
                  RunMethod : TRunMethod; // указатель на функцию доступа к методам СП
                 ImpVersion : TVersion; //Расширенный класс версии, содержащий методы для работы с API
                  DBName : string; //имя БД
                 CheckOut : string;//имя чекаута
                  inIdLink : integer; Mode: integer) // идентификатор связи
                                            : integer; stdcall;
var
  varParam, vaResult : Variant;
  InNewIDLink : Integer;
begin
  ShowMessage('Запустился плагин подмены диалога создания объекта. Функция ' +
    'ChangeCreateDialogPas');

  if Mode = 0 then
    showmessage('Режим: Создание')
  else
  if Mode = 1 then
    showmessage('Режим: Свойства');

  InNewIDLink := RunMethod('InsertObject', [ImpVersion.stType, ImpVersion.stProduct, ImpVersion.stVersion, 'Деталь',
  'СоздалПлагин', #32, 'Состоит из ...', 'Проектирование', false]);
  Result := 0;
end;
end.
