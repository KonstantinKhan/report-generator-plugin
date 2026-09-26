← [Home](index.md)

# SDK клиентских плагинов ЛОЦМАН:PLM

## Что такое `.pgi`

Файлы с расширением `.pgi` (например `BarCodeOutputPlugin.pgi`, `BarCodePatternConfig.pgi` в `raw/Модуль маркировки/`) — это обычные .NET/COM-сборки (PE32 DLL с MZ/PE-заголовком), просто с переименованным расширением. Проверено побайтово (`file`, `xxd`) — заголовок и .NET-метаданные (`mscorlib`, `BSJB`, `AssemblyTitleAttribute`) идентичны обычным `.dll` рядом. Строковый анализ (`strings`) на этих файлах показывает пространство имён `Ascon.Loodsman.Barcode.Output` и экспортируемые функции легаси-контракта (см. ниже) — то есть `.pgi` это внутреннее соглашение АСКОН для обозначения плагинов старого образца, а не отдельный формат.

Документация (`LoodsmanClientApi.chm`) само расширение `.pgi` нигде не описывает — это просто маркировка "старого" плагина в отличие от современных `.dll`-сборок под `ILoodsmanNetPlugin`.

## Два контракта плагинов

### 1. Современный: `ILoodsmanNetPlugin` (рекомендуемый, с версии 2018.2)

Класс реализует интерфейс `ILoodsmanNetPlugin` из сборки `Ascon.Plm.Loodsman.PluginSDK.dll` (устанавливается вместе с клиентом ЛОЦМАН) и помечается атрибутом `[LoodsmanPlugin]`. Обязательные методы:

- `BindMenu(IMenuDefinition menu)` — здесь плагин регистрирует пункты меню/кнопки. Используется `menu.AddMenuItem(caption, action, enableCheck)`, где `caption` — путь вида `"Раздел#Подраздел#Команда"`, `action` — `Action<INetPluginCall>`, `enableCheck` — `Func<INetPluginCall, bool>` (определяет, активен ли пункт).
- `OnConnectToDb(INetPluginCall call)` / `OnCloseDb()` — вызываются при подключении/отключении от базы.
- `PluginLoad()` / `PluginUnload()` — жизненный цикл сборки в процессе клиента.

Эталонный пример — `raw/Client/Plugins/C#/SampleNetPlugin/FirstSampleClass.cs`:

```csharp
[LoodsmanPlugin]
public class FirstSampleClass : ILoodsmanNetPlugin
{
    public void BindMenu(IMenuDefinition menu)
    {
        menu.AddMenuItem("Пример для SDK#Command", Command1, CheckCommand1);
    }

    private bool CheckCommand1(INetPluginCall arg) =>
        arg != null && arg.PluginCall.IdVersion != 0;

    private void Command1(INetPluginCall obj) =>
        System.Windows.Forms.MessageBox.Show($"IsAdmin={_isAdmin}");

    public void OnConnectToDb(INetPluginCall call) =>
        _isAdmin = call != null && (int)call.RunMethod("IsAdmin") == 1;

    // ...
}
```

Наш [ExternalApiPlugin](ExternalApiPlugin.md) написан по этому же контракту.

### 2. Легаси: COM-контракт

DLL экспортирует набор функций напрямую (без .NET-обёртки уровня `ILoodsmanNetPlugin`):

- `InitUserDLLCom` — точка входа инициализации, здесь плагин регистрирует свои пункты меню.
- `PgiCheckMenuItemCom` — определяет, активен ли пункт меню (аналог `enableCheck` в новом контракте).
- `GetPluginInfo` / `GetPluginInfoEx` — метаданные о плагине.
- по одной экспортируемой функции на каждый пункт меню, с сигнатурой `procedure(APlugin: IPluginCall)`.

Именно по этому контракту написан реальный модуль маркировки (`raw/Модуль маркировки/BarCodeOutputPlugin.pgi`, `BarCodePatternConfig.pgi`) — в них через `strings` обнаружены символы `InitUserDLLCom`, `PgiCheckMenuItemCom`, `OnConnectToDB`, `GetPluginInfo`, `IPluginCall`. Референс-реализация того же контракта в SDK: `raw/Client/Plugins/VC/LoodsmanPlugIn.cpp` (+`.def`) и `raw/Client/Plugins/Delphi/Demo/demo_menu.pas`.

Легаси-контракт актуален для Delphi/C++/старых интеграций; для новых C#-плагинов нет причин его использовать — путь через `ILoodsmanNetPlugin` проще и не требует ручного экспорта функций.

## Регистрация в UI

Никакого внешнего XML/ini-манифеста, связывающего плагин с пунктом меню, не существует — ни для нового, ни для легаси-контракта. Меню строится программно (`BindMenu` / `InitUserDLLCom`), а сама сборка просто кладётся в каталог `PluginStore` (см. [Build-And-Deploy](Build-And-Deploy.md)) и включается через настройки подключения к базе в клиенте.

Отдельно в `raw/Client/Frames/` есть механизм встраиваемых UI-фреймов (COM-регистрация, встраивание виджета прямо в карточку объекта) — подробно не исследовался, для задачи "кнопка на панели" не требуется.

## См. также

- [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md)
- [ExternalApiPlugin](ExternalApiPlugin.md)
- [Build-And-Deploy](Build-And-Deploy.md)
