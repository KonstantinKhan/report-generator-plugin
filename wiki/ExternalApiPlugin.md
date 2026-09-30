← [Home](index.md)

# ExternalApiPlugin — устройство плагина

Проект: `ExternalApiPlugin/`. Четыре основных класса: `ExternalApiPluginClass`, `ReportSelectionForm`, `ExternalApiForm`, `ReportType`.

## ExternalApiPluginClass

Точка входа плагина — реализация `ILoodsmanNetPlugin` (см. [Loodsman-Plugin-SDK](Loodsman-Plugin-SDK.md)):

```csharp
[LoodsmanPlugin]
public class ExternalApiPluginClass : ILoodsmanNetPlugin
{
    public void BindMenu(IMenuDefinition menu)
    {
        menu.AddMenuItem("Отчеты#Выбрать отчёт", OpenReportSelectionForm, 
            arg => arg?.PluginCall?.IdVersion > 0);
    }

    private void OpenReportSelectionForm(INetPluginCall call)
    {
        var objectId = call.PluginCall.IdVersion;
        var form = new ReportSelectionForm(objectId);
        form.ShowDialog();
    }

    public void OnConnectToDb(INetPluginCall call) { }
    public void OnCloseDb() { }
    public void PluginLoad() { }
    public void PluginUnload() { }
}
```

Ключевые решения:

- Пункт меню `"Отчеты#Выбрать отчёт"` активен только когда в дереве ЛОЦМАН что-то выделено (`IdVersion > 0`) — иначе id передавать некуда, и пункт должен быть недоступен. Подробности про `IdVersion` — в [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md).
- По клику плагин открывает диалог выбора типа отчёта (`ReportSelectionForm`), а не требует выбор через раскрывающееся меню — чище UI, иконки и текст в одном месте.
- WPF Window вместо WinForms Form — современнее, XAML-friendly, лучше интеграция с `System.Windows`.
- `OnConnectToDb`/`OnCloseDb`/`PluginLoad`/`PluginUnload` пока пустые — задел под будущую логику (например, кеширование состояния между вызовами, как в примере `FirstSampleClass` с флагом `_isAdmin`), сейчас не нужны.

## ReportSelectionForm

WPF-окно (`internal class ReportSelectionForm : Window`) для выбора типа отчёта. Содержит вертикальный список (StackPanel) с 8 кнопками для всех типов отчётов:
- Спецификация изделия с ПЗ ГОСТ Р 2.106-2019
- Спецификация изделия без ПЗ ГОСТ Р 2.106-2019
- Групповая спецификация с ПЗ ГОСТ 2.113-75
- Групповая спецификация без ПЗ ГОСТ 2.113-75
- Ведомость покупных изделий без ПЗ ГОСТ Р 2.106-2019
- Ведомость покупных изделий с ПЗ ГОСТ Р 2.106-2019
- Ведомость спецификаций без ПЗ ГОСТ Р 2.106-2019
- Ведомость спецификаций с ПЗ ГОСТ Р 2.106-2019

При клике на кнопку открывает `ExternalApiForm` с соответствующим типом отчёта.

## ReportType

Enum с 8 типами отчётов и вспомогательный класс `ReportTypeNames` с методом `GetName(type)` для получения отображаемого названия каждого типа.

## ExternalApiForm

WPF-окно (`internal class ExternalApiForm : Window`) для отправки отчёта на сервер. Содержит кнопку "Отправить на сервер" и TextBox с результатом запроса.

```csharp
public ExternalApiForm(long objectId, ReportType reportType)
{
    _objectId = objectId;
    _reportType = reportType;

    Title = ReportTypeNames.GetName(reportType);
    // ... WPF Grid с Button и TextBox
    _requestButton.Click += RequestButton_Click;
}

private async void RequestButton_Click(object sender, RoutedEventArgs e)
{
    _requestButton.IsEnabled = false;
    _resultBox.Text = "Запрос...";
    try
    {
        if (_reportType != ReportType.SpecificationWithoutPZ)
        {
            _resultBox.Text = $"{ReportTypeNames.GetName(_reportType)}\r\n\r\nЭтот отчёт находится в процессе разработки.";
            return;
        }

        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

        var config = ServerConfig.Load();
        var url = config.BuildSpecificationUrl(_objectId);

        using (var client = new HttpClient { Timeout = TimeSpan.FromSeconds(config.TimeoutSeconds) })
        using (var response = await client.PostAsync(url, null))
        {
            var body = await response.Content.ReadAsStringAsync();
            _resultBox.Text = FormatResult(response.StatusCode, response.ReasonPhrase, body);
        }
    }
    catch (Exception ex)
    {
        _resultBox.Text = ex.ToString();
    }
    finally
    {
        _requestButton.IsEnabled = true;
    }
}
```

Важные детали реализации:

- **WPF вместо WinForms.** Окно наследует `Window` из `System.Windows`, layout собран через `Grid` с `RowDefinitions`. UI современнее, лучше масштабируется, проще интегрировать визуальные эффекты.
- **Поддержка типов отчётов.** Конструктор принимает `ReportType`, заголовок окна показывает название отчёта. Для всех типов кроме `SpecificationWithoutPZ` показывается заглушка "в разработке" — это позволит добавлять поддержку новых типов на сервере без изменений клиента.
- **Асинхронность.** Обработчик клика — `async void`, запрос идёт через `await client.PostAsync(...)`, а не через блокирующий `.Result`. Это не блокирует UI-поток клиента на время запроса.
- **`ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12`.** Явно выставляется перед каждым запросом. На .NET Framework в хостовом процессе стороннего приложения нет гарантии, что TLS 1.2 включён по умолчанию.
- **Форматирование результата.** Метод `FormatResult()` парсит JSON ответ и вытягивает поля `id` и `path` для показа пользователю; если ответ не JSON — показывает как есть.
- **`ServerConfig`** (`ExternalApiPlugin/ServerConfig.cs`) читает `server-config.json` и собирает URL. Адрес сервера вынесен в JSON, чтобы менять его без пересборки. Поля конфига:

  ```json
  {
    "baseUrl": "http://127.0.0.1:8080/",
    "specificationEndpoint": "specifications/{versionId}",
    "healthEndpoint": "health",
    "timeoutSeconds": 30
  }
  ```

  `{versionId}` подставляется id объекта. `healthEndpoint` пока не используется — зарезервирован под проверку доступности. Файл копируется в output через `CopyToOutputDirectory=PreserveNewest` в `.csproj`, редактируется рядом с `.dll` без пересборки.
- **Для реального использования** нужно поменять `baseUrl` в `server-config.json` на боевой адрес (см. [Local-Testing](Local-Testing.md), [Network-Constraints](Network-Constraints.md)).

## См. также

- [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md)
- [Local-Testing](Local-Testing.md)
- [Build-And-Deploy](Build-And-Deploy.md)
