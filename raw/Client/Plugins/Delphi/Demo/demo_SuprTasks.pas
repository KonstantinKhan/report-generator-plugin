unit demo_SuprTasks;

interface

uses
  Controls, Loodsman_TLB;

  procedure menu_InsertTask(const PluginCall: IPluginCall); stdcall; export;
  procedure menu_InsertTaskSuccessor(const PluginCall: IPluginCall); stdcall; export;

implementation

uses
  Windows, Messages, SysUtils, Forms, TaskTemplatesSchema, SelectTemplatesUnit, InsertTemplateUnit,
  SUPR_TLB, PDMObjects_TLB;

const
  MyGUID  = '{12A885CC-D068-4D75-98D5-84FBEBD80E6D}';
  teChangeProps = 701;
  cTASK_NOTIFICATION = 'TASK_NOTIFICATION';

procedure Execute(const PluginCall: IPluginCall; cmdID : integer);forward;

procedure menu_InsertTask(const PluginCall: IPluginCall); stdcall; export;
begin
  Execute(PluginCall, 0);
end;

procedure menu_InsertTaskSuccessor(const PluginCall: IPluginCall); stdcall; export;
begin
  Execute(PluginCall, 1);
end;

procedure Execute(const PluginCall: IPluginCall; cmdID : integer);
var
  iWBS           : IWBSSystem;
  SuprTemplates : IXMLSuprTemplates;
  InsTemplates  : TInsertTemplates;

  iApp          : ILoodsmanApplication;
  iWin          : IDBWindow;
  pdmData       : IPDMData;
  SelectedTask  : ITask;
  iRes          : ITraceResults;
  i             : Integer;
  a:string;
begin
  iRes:=nil;
  Application.Handle := PluginCall.AppHandle;
  iWBS:=PluginCall.WBSSystem as IWBSSystem;
  iApp := PluginCall as ILoodsmanApplication;
  if Assigned(iApp) then
  begin
    iWin := iApp.ActiveWindow;
    if Assigned(iWin) then
      if iWin.Content.ContentType = C_TASK then
      begin
        if iWin.Content.SelectedCount>0 then
        begin
          SelectedTask := nil;
          pdmData := IDispatch(iWin.Content.SelectedByIndex(0)) as IPDMData;
          if pdmData.QueryInterface(IID_ITask, SelectedTask) = S_OK then
          begin
            //загрузим xml с шаблонами из локальной папки с плагином
            SuprTemplates:=LoadSuprTemplates(IncludeTrailingBackslash(ExtractFilePath(GetModuleName(hInstance)))+'TaskTemplates.xml');
            if ShowTemplates(SuprTemplates.TaskTemplates)=mrOk then  //отобразим диалог выбора
            begin
              InsTemplates:=TInsertTemplates.Create; //класс для создания заданий по шаблону
              try
                InsTemplates.WBSIntf:=iWBS;
                InsTemplates.SelectedTask:=SelectedTask;
                case cmdID of
                  0 : iRes:=InsTemplates.AddSiblings(SuprTemplates.TaskTemplates);    //создание задания-соседа
                  1 : iRes:=InsTemplates.AddSuccessors(SuprTemplates.TaskTemplates);  //создание задания-последователя
                end;
              finally
                InsTemplates.Free;
              end;
              if Assigned(iRes) then
              begin
                //сначала нужно обязательно обновить родительское задание, чтобы отрисовались новые дочерние
                iApp.SendNotification(
                    MyGUID,
                    teChangeProps, // код уведомления (что произошло ) 701 - изменилась задача - обновитесь
                    cTASK_NOTIFICATION,
                    5, // datatype = задачи
                    SelectedTask.Parent.ID, // данные
                    '' // чекаут
                    );
                //обновляем то, что изменилось    
                for i:=0 to iRes.ChangedTasks.Count-1 do
                begin
                  iApp.SendNotification(
                      MyGUID,
                      teChangeProps, // код уведомления (что произошло ) 701 - изменилась задача - обновитесь
                      cTASK_NOTIFICATION,
                      5, // datatype = задачи
                      iRes.ChangedTasks.Items[i].ID, // данные
                      '' // чекаут
                      );
                end;
              end;
            end;
          end;
        end;
      end;
  end;
end;

end.
