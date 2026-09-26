unit demo_SelectionInfo;

interface
uses  Variants, SysUtils , Classes,  Loodsman_TLB, Forms;

procedure menu_ShowSelectedInfo(const PluginCall: IPluginCall); stdcall; export;


implementation

uses
  demo_DebugWindow, PDMObjects_TLB, SUPR_TLB;

function ObjectCodeToText(objectCode: Integer): string;
begin
  case objectCode of
    C_OBJECT  : Result := 'Объект';
    C_ATTR    : Result := 'Атрибут';
    C_FILE    : Result := 'Файл';
    C_LINK    : Result := 'Связь';
    C_MAIL    : Result := 'Сообщение';
    C_NOTE    : Result := 'Заметка';
    C_ROUTE   : Result := 'Бизнес-процесс';
    C_TASK    : Result := 'Задание';
    C_WFTASK  : Result := 'Стадия';
    Integer(C_UNKNOWN), C_NONE,   C_USER, C_WORKLOAD, C_PLANVERSION, C_PLAN : Result := 'Неизвестный код элемента';
  end;
end;

procedure PrintPDMObjectInfo( PDMObject : IPDMObject; info : TstringList) ;
begin
  info.Add(format('Идентификатор объекта: %d',[ PDMObject.ID ]));
  info.Add(format('Ключевой атрибут : %s',[ PDMObject.Name ]));
  info.Add(format('Тип: %s',[ PDMObject.TypeName ]));
  info.Add(format('Состояние: %s',[ PDMObject.StateName ]));
  info.Add(format('Документ: %s',[ BoolToStr(PDMObject.IsDocument) ]));
  info.Add(format('Блокировка: %d',[ PDMObject.LockLevel ]));
  info.Add(format('Доступ: %d',[ PDMObject.AccessLevel ]));
end;


procedure PrintPDMLinkInfo( PDMLink : iPDMLink; info : TstringList) ;
begin
  info.Add(format('Идентификатор связи: %d',[ PDMLink.ID ]));
  info.Add(format('Тип связи: %s',[  PDMLink.Name ]));
  info.Add(format('Обратная связь: %s',[ BoolToStr(PDMLink.Inverse) ]));
  info.Add(format('Количество min: %f',[  PDMLink.MinQuantity ]));
  info.Add(format('Количество max: %f',[  PDMLink.MaxQuantity ]));
  info.Add('Родительский объект связи:');
  PrintPDMObjectInfo(PDMLink.ParentObject, info);
  info.Add('Дочерний объект связи:');
  PrintPDMObjectInfo(PDMLink.ChildObject, info);



end;



procedure PrintItemInfo(item : Variant; info : TstringList) ;
var    pdmData : IpdmData;
       PDMObject : IPDMObject;
       PDMLink : IPDMLink;
       PDMFile : IPDMFile;
       PDMAttribute : iPDMAttribute;
       WFRoute: IWFRoute;
       WFTask: IWFTask;
       SUPRtask : Itask;
       Note : Inote;
begin
     if not varisnull(item) then
       begin
          pdmData := Idispatch(item) as IPDMData;
          if Assigned(pdmData) then
             begin
                     if Assigned(pdmData) then
                       begin
                         info.Add(format('ObjectCode: %d (%s)', [  pdmData.ObjectCode, ObjectCodeToText(pdmData.ObjectCode)]));
                         case  pdmData.ObjectCode of
                              C_OBJECT   :
                              begin
                                 if pdmData.QueryInterface(IID_IPDMObject,  PDMObject)=S_OK then
                                   PrintPDMObjectInfo(PDMObject, info);
                              end;

                              C_LINK   :
                              begin
                                 if pdmData.QueryInterface(IID_IPDMLink,  PDMLink)=S_OK then
                                    PrintPDMLinkInfo(PDMLink, info);
                              end;

                              C_FILE    :
                              begin
                                 if pdmData.QueryInterface(IID_IPDMFile,  PDMFile)=S_OK then
                                    begin
                                      info.Add(format('Идентификатор файла: %d',[PDMFile.ID]));
                                      info.Add(format('Имя: %s',[PDMFile.Name]));
                                      info.Add(format('Путь: %s',[PDMFile.LocalName]));
                                      info.Add(format('Размер(байт): %d ',[PDMFile.Size]));
                                    end;
                              end;

                              C_ATTR   :
                              begin
                                 if pdmData.QueryInterface(IID_IPDMAttribute,  PDMAttribute)=S_OK then
                                    begin
                                      info.Add(format('Идентификатор атрибута: %d',[PDMAttribute.ID]));
                                      info.Add(format('Имя: %s',[PDMAttribute.Name]));
                                      info.Add(format('Тип атрибута: %d',[ PDMAttribute.AttrType]));
                                    end;
                              end;



                              C_TASK  :
                              begin

                                  if pdmData.QueryInterface(IID_Itask,  SUPRtask)=S_OK then
                                     begin
                                       info.Add(format('Идентификатор задания: %d',[SUPRtask.ID]));
                                       info.Add(format('Тема задания: %s',[SUPRtask.Topic]));
                                       info.Add(format('Состояние задания: %d',[SUPRtask.State]));
                                     end;
                              end;

                              C_ROUTE  :
                              begin
                                  if pdmData.QueryInterface(IID_IWFRoute,  WFRoute)=S_OK then
                                     begin
                                       info.Add(format('Идентификатор бизнес-процесса: %d',[WFRoute.ID]));
                                       info.Add(format('Имя бизнес-процесса: %s',[WFRoute.name]));
                                       info.Add(format('Состояние бизнес-процесса: %d',[WFRoute.State]));
                                     end;

                              end;
                              C_WFTASK  :
                              begin

                                  if pdmData.QueryInterface(IID_IWFTask,  WFTask)=S_OK then
                                     begin
                                       info.Add(format('Идентификатор стадии: %d',[WFTask.ID]));
                                       info.Add(format('Задание стадии: %s',[WFTask.Name]));
                                       info.Add(format('Состояние стадии: %d',[WFTask.State]));
                                     end;


                              end;
                              C_NOTE :
                              begin
                                  if pdmData.QueryInterface(IID_INote,  Note)=S_OK then
                                     begin
                                       info.Add(format('Идентификатор заметки: %d',[Note.ID]));
                                       info.Add(format('Текст заметки: %s',[Note.text]));
                                     end;

                              end;


                             C_MAIL,  Integer(C_UNKNOWN),  C_NONE , C_USER, C_WORKLOAD, C_PLANVERSION, C_PLAN: {не определен} ;
                         end;
                       end;

             end
            else
             begin
               info.Add('IPDMData не имплементирован');
             end;
       end
      else
       begin
         info.Add('varisnull');
       end;



end;


procedure menu_ShowSelectedInfo(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;
    w :   IDBWindow;
    info : TstringList;
    i : Integer;

begin
  info := TstringList.Create;
  try
      info.Add(format('Функция: %s',['menu_ShowSelectedInfo']));
      // для сокрытия кнопок окон плагина с панели задач
      Application.Handle := PluginCall.AppHandle;
      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin
          w := app.ActiveWindow;
          if Assigned(w) then
            begin
              //info.Add(format('Название: %s',[]));
              info.Add(format('Имя базы данных: %s',[w.DataBase.Name]));
              info.Add(format('Пользователь: %s', [w.DataBase.CurrentUser.Name]));
              info.Add(format('Режим изменений: %s', [BoolToStr( w.CheckOutMode)]));
              // тип окна
              info.Add(format('Тип содержимого корневого фрейма: %d (%s)', [w.Context.ContextType, ObjectCodeToText(w.Context.ContextType)]));
              // содержимое активного фрейма
              info.Add(format('Тип содержимого активного фрейма: %d (%s)', [ w.Content.ContentType, ObjectCodeToText(w.Content.ContentType) ]));

              case w.Content.ContentType of

                  C_OBJECT,
                  C_LINK,
                  C_FILE ,
                  C_TASK,
                  C_ROUTE,
                  C_WFTASK,
                  C_NOTE:
                    begin
                      info.Add(format('Количество элементов: %d', [  w.Content.ItemCount]));
                      info.Add(format('Количество выбранных элементов: %d', [  w.Content.SelectedCount]));

                      for I := 0 to w.Content.SelectedCount - 1 do
                          begin
                             info.Add(IntToStr(i+1)+'.');
                             PrintItemInfo(w.Content.SelectedByIndex(i), info);
                          end;

                    end
                   else
                    begin
                         info.Add('Нет доступа к содержимому фрейма');
                    end;




              end;


            end
           else
            begin
               info.Add('Активное окно не найдено');
            end
        end
       else
        begin
           info.Add('Интерфейс ILoodsmanApplication не найден');
        end;
    ShowDebugWindow(info.Text);
  finally
    FreeAndNil(info);
  end;

end;

end.
