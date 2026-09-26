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
        menu.AddMenuItem("Внешний API#Тестовый запрос", OpenExternalApiForm,
            arg => arg?.PluginCall?.IdVersion > 0);
    }

    private void OpenExternalApiForm(INetPluginCall call)
    {
        var objectId = call.PluginCall.IdVersion;
        using (var form = new ExternalApiForm(objectId))
        {
            form.ShowDialog();
        }
    }

    public void OnConnectToDb(INetPluginCall call) { }
    public void OnCloseDb() { }
    public void PluginLoad() { }
    public void PluginUnload() { }
}
```

Ключевые решения:

- Пункт меню `"Внешний API#Тестовый запрос"` активен только когда в дереве ЛОЦМАН что-то выделено (`IdVersion > 0`) — иначе id передавать некуда, и пункт должен быть недоступен. Подробности про `IdVersion` — в [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md).
- По клику плагин не делает HTTP-запрос напрямую, а открывает модальную форму (`ExternalApiForm.ShowDialog()`), передав туда id объекта. Так реализовано осознанно: изначально был вариант "запрос сразу по клику меню", но заменён на UI-окно с явной кнопкой отправки — это будущая точка роста для показа статуса/деталей запроса пользователю.
- `OnConnectToDb`/`OnCloseDb`/`PluginLoad`/`PluginUnload` пока пустые — задел под будущую логику (например, кеширование состояния между вызовами, как в примере `FirstSampleClass` с флагом `_isAdmin`), сейчас не нужны.

## ExternalApiForm

WinForms-форма (`internal class ExternalApiForm : Form`), собранная кодом без designer-файла — три контрола: `Label` с id объекта, `Button` "Отправить на сервер", `TextBox` (multiline, read-only) с результатом.

```csharp
public ExternalApiForm(long objectId)
{
    _objectId = objectId;
    // ... создание Label/Button/TextBox
    _requestButton.Click += RequestButton_Click;
}

private async void RequestButton_Click(object sender, EventArgs e)
{
    _requestButton.Enabled = false;
    _resultBox.Text = "Запрос...";
    try
    {
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

        var url = $"{ApiBaseUrl}?objectId={_objectId}";
        using (var client = new HttpClient())
        {
            var response = await client.GetStringAsync(url);
            _resultBox.Text = $"Id объекта: {_objectId}\r\n\r\nОтвет сервера:\r\n{response}";
        }
    }
    catch (Exception ex)
    {
        _resultBox.Text = ex.ToString();
    }
    finally
    {
        _requestButton.Enabled = true;
    }
}
```

Важные детали реализации:

- **Асинхронность.** Обработчик клика — `async void`, запрос идёт через `await client.GetStringAsync(...)`, а не через блокирующий `.Result`. Первая версия плагина делала синхронный вызов прямо в обработчике меню — рабочий вариант, но блокирующий UI-поток клиента на время запроса; после перехода на форму с кнопкой сделали правильно сразу.
- **`ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12`.** Явно выставляется перед каждым запросом. На .NET Framework в хостовом процессе стороннего приложения (клиента ЛОЦМАН) нет гарантии, что TLS 1.2 включён по умолчанию — без этой строки HTTPS-запросы к серверам, требующим TLS 1.2+, могут падать на этапе handshake. В нашем случае реальная ошибка оказалась сетевой (см. [Network-Constraints](Network-Constraints.md)), а не TLS-й, но защита от этого класса проблем оставлена.
- **`?objectId={_objectId}` в URL.** Так id выделенного в ЛОЦМАН объекта физически попадает во внешний запрос — это то значение, которое дальше должен читать и использовать сервис-приёмник.
- **`ApiBaseUrl`** — константа, сейчас указывает на локальный тестовый сервер (см. [Local-Testing](Local-Testing.md)), потому что прямой интернет с рабочей машины закрыт (см. [Network-Constraints](Network-Constraints.md)). Для реального использования нужно поменять на боевой адрес.

## См. также

- [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md)
- [Local-Testing](Local-Testing.md)
- [Build-And-Deploy](Build-And-Deploy.md)
