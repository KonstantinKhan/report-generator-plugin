unit demo_menu;

interface

uses
  Loodsman_TLB,  Forms, Windows, SysUtils, Classes, Variants;

// структура меню
function InitUserDLLCom(Value: Pointer): integer; stdcall; export;
// активность пункта меню
function PgiCheckMenuItemCom(stFunction: string; const PluginCall: IPluginCall):   integer; stdcall; export;

function GetPluginInfo(Param: integer; Value: Pointer): integer; stdcall;

function GetPluginInfoEx(Param: Integer; Data: IUnknown): integer; stdcall;

procedure OnPluginUnload; stdcall;

type
  PAddMenuEx = ^TAddMenuEx;
  TAddMenuEx =
  record
    stMenu : array[0..255 - 1] of AnsiChar;
    stFunction : array[0..255 - 1] of AnsiChar;
  end; { TAddMenuEx }

var
  PluginCallIntf: IPluginCall;

implementation

  uses PDMObjects_TLB, SUPR_TLB, demo_NonModalWindow;

function InitUserDLLCom(Value: Pointer): integer; stdcall; export;
var
  item: PAddMenuEx;
begin
  if Value = nil then
    Result := 18
  else
  begin
    Result := 18;

    item := Value;
    item.stMenu := 'Демо#Показать информацию о выбранных объектах';
    item.stFunction := 'menu_ShowSelectedInfo';

    inc(item);
    item.stMenu := 'Демо#Открыть выбранные объекты в новом окне';
    item.stFunction := 'menu_Navigate_Open';

    //------------------------------------

    inc(item);
    item.stMenu := 'Демо#Показать информацию о плагинах';
    item.stFunction := 'menu_ShowPluginsInfo';

    //------------------------------------
    inc(item);
    item.stMenu := 'Демо#Буфер обмена#Копировать выбранные объекты';
    item.stFunction := 'menu_ClipboardCopy';

    inc(item);
    item.stMenu := 'Демо#Буфер обмена#Показать содержимое';
    item.stFunction := 'menu_ClipboardPaste';

    //------------------------------------    

    inc(item);
    item.stMenu := 'Демо#Выполнить встроенную команду';
    item.stFunction := 'menu_CallAction';
    //------------------------------------

    //------------------------------------
    inc(item);
    item.stMenu := 'Демо#Ссылки#Создать гиперссылку';
    item.stFunction := 'menu_HREF_Create';

    inc(item);
    item.stMenu := 'Демо#Ссылки#Открыть гиперссылку';
    item.stFunction := 'menu_HREF_Open';


    inc(item);
    item.stMenu := 'Демо#Окна#Показать немодальное окно';
    item.stFunction := 'menu_ShowNonModalWindow';

    inc(item);
    item.stMenu := 'Демо#Окна#Выбор объектов в модальном окне';
    item.stFunction := 'menu_ShowModalWindow';

    //-----------------------------------
    inc(item);
    item.stMenu := 'Демо#Адресная книга';
    item.stFunction := 'menu_AddressBook';

    inc(item);
    item.stMenu := 'Демо#Demo service#Показать журнал событий';
    item.stFunction := 'menu_Call_Logger';

    inc(item);
    item.stMenu := 'Демо#Demo service#Получить кэшированный набор данных';
    item.stFunction := 'menu_Call_CachedMeta';

    inc(item);
    item.stMenu := 'Демо#Demo service#Перехватить обработку команд';
    item.stFunction := 'menu_Call_InterceptActions';

    {----------- СУПР --------------------------------------------}
    inc(item);
    item.stMenu := 'Демо#SUPR#Создать задания по шаблону';
    item.stFunction := 'menu_InsertTask';

    inc(item);
    item.stMenu := 'Демо#SUPR#Создать задания по шаблону в качестве последователей';
    item.stFunction := 'menu_InsertTaskSuccessor';
    {----------- -------------------------------------------------}
    inc(item);
    item.stMenu := 'Демо#Хеширование#Вычислить хеш-сумму файла';
    item.stFunction := 'menu_ShowHashFileWindow';

    inc(item);
    item.stMenu := 'Демо#Работа с динамическими структурами';
    item.stFunction := 'menu_DynamicStructure';
  end;
end; { InitUserDLL }

function PgiCheckMenuItemCom(stFunction: string; const PluginCall: IPluginCall):
  integer; stdcall; export;
var
  SelectedTask : ITask;
  PDMData      : IPDMData;
begin
  Result := 0; // комада неактивна
  if AnsiSameText(stFunction, 'menu_InsertTaskSuccessor') or
     AnsiSameText(stFunction, 'menu_InsertTask')
  then
  begin
    if Assigned(PluginCall.Content) and
       (PluginCall.Content.ContentType = C_TASK) and
       (PluginCall.Content.SelectedCount > 0)
    then
    begin
      SelectedTask := nil;
      pdmData := IDispatch(PluginCall.Content.SelectedByIndex(0)) as IPDMData;
      if pdmData.QueryInterface(IID_ITask, SelectedTask) = S_OK then
        if SelectedTask.ParentExists then Result:=1;
    end;
  end
  else Result:=1;

end; { PgiCheckMenuItemCom }

// маркерная функция - указывает на то, что разработчик плагина учитывает контекст окна
function GetPluginInfo(Param: integer; Value: Pointer): integer; stdcall;
begin
  result := 0;
end;

// маркерная функция - указывает на то, что разработчик плагина учитывает контекст окна
// Эта функция должна быть реализована в плагинах, которые планируется использовать не только в дереве объектов точной структуры,
// но и в динамических структурах. Если этой функции не будет, то команды плагина будут доступны только для объектов дерева в точной структуре.
// Варианты возвращаемых значений:
//1 - без поддержки динамических структур; 2 - только в динамических структурах с выделенным объектом; 3 - при любом представлении структуры
function GetPluginInfoEx(Param: Integer; Data: IUnknown): integer; stdcall;
begin
  Result := 3; //Сейчас установлено 3, что говорит о том что команды плагина могут исполнятся в любом контексте и любом режиме
end;

procedure OnPluginUnload; stdcall;
begin
  //Выгрузим немодальное окно, если оно было создано 
  UnloadNonModalWindow;
end;

end.

