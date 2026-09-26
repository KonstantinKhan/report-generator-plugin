unit demo_execPluginCommand;

interface
uses  Variants, SysUtils , Classes,  Loodsman_TLB, Forms;

procedure menu_execPluginCommand(const PluginCall: IPluginCall); stdcall; export;

implementation

procedure menu_execPluginCommand(const PluginCall: IPluginCall); stdcall; export;
var app : ILoodsmanApplication;
    i ,j : Integer;
    LoodsmanPlugin : ILoodsmanPlugin;

begin
      // найдем другую команду в этом же плагине через API и выполним ее

      app := PluginCall as ILoodsmanApplication;
      if Assigned(app) then
        begin

              for I := 0 to app.PluginCount - 1 do
                begin
                 LoodsmanPlugin := app.GetPlugin(i);
                 if Assigned(LoodsmanPlugin) then
                     //if AnsiSameText(LoodsmanPlugin.GetName, 'Demo.pgi') then

                     if AnsiSameText(LoodsmanPlugin.GetName, 'Archive.pgi') then

                        begin
                            //LoodsmanPlugin.ExecCommand('menu_ShowSelectedInfo');
                            LoodsmanPlugin.ExecCommand('GetHelp');

                            Break;
                        end;
                end;


        end
end;



end.
