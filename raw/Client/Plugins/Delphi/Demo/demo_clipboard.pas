unit demo_clipboard;

interface
uses  Variants, SysUtils , Classes,  Loodsman_TLB, Forms;

procedure menu_ClipboardCopy(const PluginCall: IPluginCall); stdcall; export;
procedure menu_ClipboardPaste(const PluginCall: IPluginCall); stdcall; export;


implementation


uses demo_DebugWindow, LoodsmanBuffer, PDMObjects_TLB, SUPR_TLB;

const OBJECT_STRINGS: array[C_NONE..C_WFTASK] of string =
  ('NONE', 'PDMOBJECT', 'PDMLINK', 'FILE', 'ATTRIBUTE', 'TASK', 'WFROUTE',
   'MAIL', 'USER', 'WFTASK');


procedure menu_ClipboardCopy(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;
   // info : TstringList;
    i ,j : Integer;
    w :   IDBWindow;
    B : iLoodsmanBuffer;
    PDMData : iPDMData;
    PDMObject : IPDMObject;
    SUPRTASK : ITask;


begin
 // info := TstringList.Create;
  try
     // info.Add(format('Функция: %s',['menu_ClipboardPaste']));
      // для сокрытия кнопок окон плагина с панели задач
      Application.Handle := PluginCall.AppHandle;
      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin

          w := app.ActiveWindow;
          if Assigned(w) then
            begin


              case w.Content.ContentType of
                  C_OBJECT,
                  C_LINK,
                  C_TASK:
                    begin
                         B := TLoodsmanBuffer.create;
                         try
                            for I := 0 to w.Content.SelectedCount - 1 do
                              begin
                                 PDMData := Idispatch(w.Content.SelectedByIndex(i)) as IPDMData;
                                 case PDMData.ObjectCode of
                                   C_OBJECT :   PDMObject := IPDMObject(pdmdata);
                                   C_LINK   :  PDMObject := IPDMLink(pdmdata).ChildObject;
                                   C_TASK   :
                                   begin
                                     if PDMData.QueryInterface(IID_ITask,SUPRTASK ) = S_OK then
                                       begin
                                           B.AddItem(OBJECT_STRINGS[C_TASK],SUPRTASK.ID, SUPRTASK.Topic, '',0);
                                       end;
                                   end;
                                 end;
                                 if Assigned(PDMObject) then
                                   begin
                                       B.AddItem(OBJECT_STRINGS[C_OBJECT],PDMObject.ID, PDMObject.Name, '',0);
                                   end;

                              end;
                             B.Push('');
                         finally
                           B := nil;
                         end;

                    end;



              end;






            end
           else
            app.NotifyUser('Demo', 'Активное окно не найдено',1,0);





        end
      else
        begin
          app.NotifyUser('Demo', 'Интерфейс ILoodsmanApplication не найден',1,0);
        end;
   // ShowDebugWindow(info.Text);
  finally
  //  FreeAndNil(info);
  end;

end;


procedure menu_ClipboardPaste(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;
    info : TstringList;
    i ,j : Integer;
    w :   IDBWindow;
    PDMData : iPDMData;
    PDMObject : IPDMObject;
    B : iLoodsmanBuffer;
    LoodsmanBufferContent :ILoodsmanBufferContentPool;
    LoodsmanBufferContentItem :ILoodsmanBufferContentItem;

begin
  info := TstringList.Create;
  try
      info.Add(format('Функция: %s',['menu_ClipboardPaste']));
      // для сокрытия кнопок окон плагина с панели задач
      Application.Handle := PluginCall.AppHandle;
      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin


          w := app.ActiveWindow;
          if Assigned(w) then
            begin
              B := TLoodsmanBuffer.create;
              try
              B.Pop;
                   for J := LOW(OBJECT_STRINGS) to High(OBJECT_STRINGS) do
                     begin
                     if B.HasContent(OBJECT_STRINGS[J]) then
                       begin
                        LoodsmanBufferContent := B.getContent(OBJECT_STRINGS[J]);
                        for I := 0 to LoodsmanBufferContent.getItemCount - 1 do
                          begin
                            LoodsmanBufferContentItem := LoodsmanBufferContent.getItem(i);
                            info.Add(Format('%s %d (%s)',[LoodsmanBufferContentItem.getContentType,
                            LoodsmanBufferContentItem.getContentItemID,
                            LoodsmanBufferContentItem.getContentItemCaption
                            ]));
                          end;
                       end;
                     end;
              finally
                B := nil;
              end;

            end;
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
