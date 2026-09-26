library Demo;
uses
  LoodsmanBuffer in '..\..\..\Common\Delphi\LoodsmanBuffer.pas',
  base62 in '..\..\..\Common\Delphi\base62.pas',
  Base64Encoder in '..\..\..\Common\Delphi\Base64Encoder.pas',
  demo_menu in 'demo_menu.pas',
  demo_DebugWindow in 'demo_DebugWindow.pas' {frmDebugWindow},
  demo_SelectionInfo in 'demo_SelectionInfo.pas',
  demo_PluginsInfo in 'demo_PluginsInfo.pas',
  demo_clipboard in 'demo_clipboard.pas',
  superobject in '..\..\..\Common\Delphi\superobject.pas',
  demo_actions in 'demo_actions.pas',
  demo_ActionSelectorForm in 'demo_ActionSelectorForm.pas' {frmActionSelector},
  demo_execPluginCommand in 'demo_execPluginCommand.pas',
  demo_HREF in 'demo_HREF.pas',
  demo_navigate in 'demo_navigate.pas',
  demo_NonModalWindow in 'demo_NonModalWindow.pas' {frmNonModalWindow},
  demo_modalWindow in 'demo_modalWindow.pas' {frmModalWindow},
  demo_addressbook in 'demo_addressbook.pas' {frmSelectAB},
  demo_CallService in 'demo_CallService.pas',
  Demo_TLB in '..\..\..\Services\delphi\Demo\Demo_TLB.pas',
  demo_SuprTasks in 'demo_SuprTasks.pas',
  TaskTemplatesSchema in 'SUPR\TaskTemplatesSchema.pas',
  SelectTemplatesUnit in 'SUPR\SelectTemplatesUnit.pas' {SelectTemplatesForm},
  InsertTemplateUnit in 'SUPR\InsertTemplateUnit.pas',
  AddressBook_TLB in '..\..\..\Common\Delphi\TLB\AddressBook_TLB.pas',
  Ask_TLB in '..\..\..\Common\Delphi\TLB\Ask_TLB.pas',
  BOSimple_TLB in '..\..\..\Common\Delphi\TLB\BOSimple_TLB.pas',
  DataProvider_TLB in '..\..\..\Common\Delphi\TLB\DataProvider_TLB.pas',
  Loodsman_TLB in '..\..\..\Common\Delphi\TLB\Loodsman_TLB.pas',
  LoodsmanObjects_TLB in '..\..\..\Common\Delphi\TLB\LoodsmanObjects_TLB.pas',
  PDMObjects_TLB in '..\..\..\Common\Delphi\TLB\PDMObjects_TLB.pas',
  SUPR_TLB in '..\..\..\Common\Delphi\TLB\SUPR_TLB.pas',
  demo_HashFileWindow in 'demo_HashFileWindow.pas' {frmHashFileWindow},
  LoodsmanHash_TLB in '..\..\..\Common\Delphi\TLB\LoodsmanHash_TLB.pas',
  demo_dynamicstructurewindow in 'demo_dynamicstructurewindow.pas' {frmDynamicStructureDemo},
  PDMTree_TLB in '..\..\..\Common\Delphi\TLB\PDMTree_TLB.pas';

{$E pgi}
{$R *.res}

exports
  //Обязательные функции, которые должен экспортировать плагин (demo_menu.pas)
  InitUserDLLCom,        //функция инициализации плагина и построения его меню
  PgiCheckMenuItemCom,   //проверка доступности команд плагина
  GetPluginInfo,         //функция маркер, нужна для того чтобы пункты меню плагина были доступны не только из дерева (а, например, еще из окна с заданиями СПиУПП)
  GetPluginInfoEx,       //функция маркер, нужна для того чтобы пункты меню плагина были доступны не только при работе с точной структурой, но и с динамической
  OnPluginUnload,        //вызывается перед выгрузкой плагина (здесь можно освободить занятые ресурсы)

  //работа с выделенными объектами (demo_SelectionInfo.pas)
  menu_ShowSelectedInfo name 'menu_ShowSelectedInfo',

  //информация о подключенных плагинах (demo_PluginsInfo.pas)
  menu_ShowPluginsInfo name 'menu_ShowPluginsInfo',

  //работа с буффером обмена (demo_clipboard.pas)
  menu_ClipboardCopy name 'menu_ClipboardCopy',
  menu_ClipboardPaste name 'menu_ClipboardPaste',

  //вызов команд ЛОЦМАН Клиента (demo_actions.pas)
  menu_CallAction name 'menu_CallAction',

  //открытие выделенных объектов в новом окне (demo_navigate.pas)
  menu_Navigate_Open name 'menu_Navigate_Open',

  //работа с гиперссылками (demo_HREF.pas)
  menu_HREF_Create name 'menu_HREF_Create',
  menu_HREF_Open name 'menu_HREF_Open',

  //демонстрация работы с окнами плагинов
  //немодальное окно (demo_NonModalWindow.pas)
  menu_ShowNonModalWindow   name 'menu_ShowNonModalWindow',
  //модальное окно (demo_modalWindow)
  menu_ShowModalWindow   name 'menu_ShowModalWindow',


  //взаимодействие с адресной книгой (demo_addressbook.pas)
  menu_AddressBook       name 'menu_AddressBook',

  //демонстрация вызова методов сервиса (demo_CallService.pas)
  menu_Call_Logger name 'menu_Call_Logger',
  menu_Call_CachedMeta name 'menu_Call_CachedMeta',
  menu_Call_InterceptActions     name 'menu_Call_InterceptActions',

  //работа с СПиУПП (demo_SuprTasks.pas)
  menu_InsertTask name 'menu_InsertTask',
  menu_InsertTaskSuccessor name 'menu_InsertTaskSuccessor',

  //Работа с сервисом ILodsmanHashedData
  menu_ShowHashFileWindow name 'menu_ShowHashFileWindow',

  //Работа с динамическими структурами
  menu_DynamicStructure name 'menu_DynamicStructure';
begin

end.
