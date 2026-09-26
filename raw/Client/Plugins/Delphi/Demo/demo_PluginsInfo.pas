unit demo_PluginsInfo;


interface
uses  Variants, SysUtils , Classes,  Loodsman_TLB, Forms;

procedure menu_ShowPluginsInfo(const PluginCall: IPluginCall); stdcall; export;


implementation
uses demo_DebugWindow;


procedure menu_ShowPluginsInfo(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;
    info : TstringList;
    i ,j : Integer;
    LoodsmanPlugin : ILoodsmanPlugin;

begin
  info := TstringList.Create;
  try
      info.Add(format('Функция: %s',['menu_ShowPluginsInfo']));
      // для сокрытия кнопок окон плагина с панели задач
      Application.Handle := PluginCall.AppHandle;
      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin

              for I := 0 to app.PluginCount - 1 do
                begin
                 LoodsmanPlugin := app.GetPlugin(i);
                 if Assigned(LoodsmanPlugin) then
                   begin
                     info.Add(format('%s.  %s (%s)',[IntToStr(i+1), LoodsmanPlugin.GetName, LoodsmanPlugin.GetPath]));
                     for j := 0 to LoodsmanPlugin.GetCommandCount - 1 do
                         info.Add(format('%s.  %s (%s)',[ IntToStr(i+1)+'.'+IntToStr(j+1), LoodsmanPlugin.GetCommandName(j), LoodsmanPlugin.GetCommandCaption(j)]));
                   end;
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
