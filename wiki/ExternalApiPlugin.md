← [Home](index.md)

# ExternalApiPlugin — устройство плагина

Проект: `ExternalApiPlugin/`. Два класса.

## ExternalApiPluginClass

Точка входа плагина — реализация `ILoodsmanNetPlugin` (см. [Loodsman-Plugin-SDK](Loodsman-Plugin-SDK.md)):

```csharp
[LoodsmanPlugin]
public class ExternalApiPluginClass : ILoodsmanNetPlugin
{
    public void BindMenu(IMenuDefinition menu)
    {
        menu.AddMenuItem("Отчёты#Выбрать отчёт", OpenExternalApiForm,
            arg => arg?.PluginCall?.IdVersion > 0);
    }

    private void OpenExternalApiForm(INetPluginCall call)
    {
        var objectId = call.PluginCall.IdVersion;
        var form = new ExternalApiForm(objectId);
        form.ShowDialog();
    }

    public void OnConnectToDb(INetPluginCall call) { }
    public void OnCloseDb() { }
    public void PluginLoad() { }
    public void PluginUnload() { }
}
```

Ключевые решения:

- Пункт меню `"Отчёты#Выбрать отчёт"` активен только когда в дереве ЛОЦМАН что-то выделено (`IdVersion > 0`) — иначе id передавать некуда, и пункт должен быть недоступен. Подробности про `IdVersion` — в [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md).
- По клику плагин не делает HTTP-запрос напрямую, а открывает модальное окно (`ExternalApiForm.ShowDialog()`), передав туда id объекта. Так реализовано осознанно: изначально был вариант "запрос сразу по клику меню", но заменён на UI-окно с явной кнопкой отправки — это точка роста для показа статуса/деталей запроса пользователю.
- Форма создаётся без `using`: `ExternalApiForm` — WPF `Window`, а не WinForms `Form`, и `Window` не реализует `IDisposable` (в отличие от `Form`). Раньше (на WinForms) код был `using (var form = ...) { form.ShowDialog(); }` — при переходе на WPF `using` убран, это не упущение.
- `OnConnectToDb`/`OnCloseDb`/`PluginLoad`/`PluginUnload` пока пустые — задел под будущую логику (например, кеширование состояния между вызовами, как в примере `FirstSampleClass` с флагом `_isAdmin`), сейчас не нужны.

## ExternalApiForm

WPF-окно (`internal class ExternalApiForm : Window`), собранное кодом без XAML-файла — два контрола в `Grid`: `Button` "Спецификация ГОСТ Р 2.106-2019 без ВП" и `TextBox` (read-only, с переносом строк) с результатом. Изначально форма была WinForms (`Form` с абсолютными координатами контролов и `Label`, показывавшим id выделенного объекта) — переведена на WPF ради более современного стека контролов и layout через `Grid`/`Thickness` вместо ручных `Left`/`Top`; лейбл с id убран, он был служебной информацией без ценности для пользователя.

```csharp
public ExternalApiForm(long objectId)
{
    _objectId = objectId;
    // ... создание Grid/Button/TextBox, FontFamily "Segoe UI"
    _requestButton.Click += RequestButton_Click;
}

private async void RequestButton_Click(object sender, RoutedEventArgs e)
{
    _requestButton.IsEnabled = false;
    _resultBox.Text = "Запрос...";
    try
    {
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

private static string FormatResult(HttpStatusCode statusCode, string reasonPhrase, string body)
{
    // Парсит JSON {id, path}; если получилось — показывает Id отчёта и полный путь до отчёта.
    // Если ответ не JSON или без поля path — фолбэк на тело ответа как есть.
}
```

Важные детали реализации:

- **Асинхронность.** Обработчик клика — `async void`, запрос идёт через `await client.PostAsync(...)`, а не через блокирующий `.Result`. Первая версия плагина делала синхронный вызов прямо в обработчике меню — рабочий вариант, но блокирующий UI-поток клиента на время запроса; после перехода на форму с кнопкой сделали правильно сразу.
- **`ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12`.** Явно выставляется перед каждым запросом. На .NET Framework в хостовом процессе стороннего приложения (клиента ЛОЦМАН) нет гарантии, что TLS 1.2 включён по умолчанию — без этой строки HTTPS-запросы к серверам, требующим TLS 1.2+, могут падать на этапе handshake. В нашем случае реальная ошибка оказалась сетевой (см. [Network-Constraints](Network-Constraints.md)), а не TLS-й, но защита от этого класса проблем оставлена.
- **`POST {versionId}` в пути, не query-параметр.** Реальный сервер (`report-generator/report-server`, Ktor) отдаёт `POST /specifications/{versionId}` — id выделенного в ЛОЦМАН объекта подставляется в path, не в query. Ответ сервера — JSON `{id, path}` (id сгенерированного PDF и путь к нему на диске сервера).
- **`FormatResult` разбирает JSON ответа и показывает полный путь до отчёта.** Раньше плагин просто выводил тело ответа как есть; теперь `System.Text.Json.JsonDocument` парсит `{id, path}` и в `TextBox` выводится `Id отчёта` и `Полный путь до отчёта` явным текстом — пользователю не нужно вычитывать путь из сырого JSON. Если тело не JSON или без `path` — фолбэк на исходное поведение (сырое тело ответа), чтобы ошибки сервера всё равно были видны.
- **`ServerConfig`** (`ExternalApiPlugin/ServerConfig.cs`) читает `server-config.json` рядом со сборкой (`System.Text.Json`) и собирает конечный URL. Раньше адрес сервера был захардкожен константой `ApiBaseUrl` прямо в `ExternalApiForm.cs` — вынесен в JSON, чтобы менять адрес/маршрут/таймаут без пересборки. Поля конфига:

  ```json
  {
    "baseUrl": "http://127.0.0.1:8080/",
    "specificationEndpoint": "specifications/{versionId}",
    "healthEndpoint": "health",
    "timeoutSeconds": 30
  }
  ```

  `{versionId}` в `specificationEndpoint` подставляется `_objectId` плагина. `healthEndpoint` пока не используется кодом — зарезервирован под будущую проверку доступности сервера (`GET /health`). Файл копируется в output через `CopyToOutputDirectory=PreserveNewest` (правка в `.csproj`), поэтому редактируется прямо рядом с `.dll` в `PluginStore` без пересборки.
- **Для реального использования** нужно поменять `baseUrl` в `server-config.json` на боевой адрес — сейчас указывает на локальный тестовый сервер (см. [Local-Testing](Local-Testing.md)), потому что прямой интернет с рабочей машины закрыт (см. [Network-Constraints](Network-Constraints.md)).

## См. также

- [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md)
- [Local-Testing](Local-Testing.md)
- [Build-And-Deploy](Build-And-Deploy.md)
