unit demo_HREF;

interface

uses
  Variants, SysUtils, Classes, Loodsman_TLB, Forms, Dialogs, Clipbrd;

procedure menu_HREF_Create(const PluginCall: IPluginCall); stdcall; export;

procedure menu_HREF_Open(const PluginCall: IPluginCall); stdcall; export;

implementation

uses
  PDMObjects_TLB, base62, Base64Encoder, SUPR_TLB;

procedure menu_HREF_Create(const PluginCall: IPluginCall); stdcall; export;
var
  app: ILoodsmanApplication;
  w: IDBWindow;
  i: Integer;
  pdmData: IPDMData;
  pdmObject: IPDMObject;
  pdmLink: IPDMLink;
  suprTask: ITask;
  objectID62: string;
  objectIDS: string;
  url: string;
begin
  url := '';
  app := PluginCall as ILoodsmanApplication;
  if Assigned(app) then
  begin
    w := app.ActiveWindow;
    if Assigned(w) then
    begin

      case w.Content.ContentType of
        C_OBJECT:
          begin
            for i := 0 to w.Content.SelectedCount - 1 do
            begin
              pdmObject := nil;
              pdmData := idispatch(w.Content.SelectedByIndex(i)) as IPDMData;
              if pdmData.QueryInterface(IID_IPDMLink, pdmLink) = S_OK then
                pdmObject := pdmLink.ChildObject
              else
                pdmData.QueryInterface(IID_IPDMObject, pdmObject);

              if pdmObject <> nil then
              begin
                objectID62 := base62.Num2Base(pdmObject.ID);
                if objectIDS = '' then
                  objectIDS := objectID62
                else
                  objectIDS := objectIDS + ',' + objectID62;
              end;
            end;
            url := format('ask:Loodsman.URL?Action=Open,params=%s|1|0|%s', [MimeEncodeString(trim(w.DataBase.Name)), objectIDS]);
          end;

        C_TASK:
          begin
            for i := 0 to w.Content.SelectedCount - 1 do
            begin
              suprTask := nil;
              pdmData := idispatch(w.Content.SelectedByIndex(i)) as IPDMData;
              if pdmData.QueryInterface(IID_ITask, suprTask) = S_OK then
              begin
                objectID62 := base62.Num2Base(suprTask.ID);
                if objectIDS = '' then
                  objectIDS := objectID62
                else
                  objectIDS := objectIDS + ',' + objectID62;
              end;
            end;
            url := format('ask:Loodsman.URL?Action=OpenTask,params=%s|5|0|%s', [MimeEncodeString(trim(w.DataBase.Name)), objectIDS]);
          end;
      else
        app.NotifyUser('Demo', 'Выберите объекты или задания', 1, 0);
      end;

      if url <> '' then
      begin
        Clipboard.SetTextBuf(Pchar(url));
        app.NotifyUser('Demo', Format('Ссылка %s скопирована в буфер обмена', [url]), 1, 0);
      end;
    end;
  end
end;

procedure menu_HREF_Open(const PluginCall: IPluginCall); stdcall; export;
var
  app: ILoodsmanApplication;
  stHRef: string;
begin
  app := PluginCall as ILoodsmanApplication;
  if Assigned(app) then
  begin
    stHRef := InputBox('Открыть гиперссылку', 'Введите текст гиперссылки', '');
    if stHRef <> '' then
      app.OpenURL(stHRef, 0);
  end
end;

end.

