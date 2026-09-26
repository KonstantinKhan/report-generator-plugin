← [Home](index.md)

# INetPluginCall / IPluginCall и id выделенного объекта

## INetPluginCall

Интерфейс, который клиент ЛОЦМАН передаёт в методы плагина, реализующего `ILoodsmanNetPlugin` (в `BindMenu`-обработчики, `OnConnectToDb` и т.д.). Основное назначение — дать плагину доступ к контексту клиента и к API ЛОЦМАН:PLM.

Свойства и методы:

- `PluginCall` (`IPluginCall`, read-only) — легаси-интерфейс, предоставленный модулем ЛОЦМАН Клиент; через него доступны данные о выделенном объекте (см. ниже).
- `RunMethod(string methodName, params object[] arguments)` — вызов метода API ЛОЦМАН:PLM, возвращает `object`.
- `GetDataTable(string methodName, params object[] arguments)` — вызов метода API, возвращающего набор данных (`System.Data.DataTable`).

Оба метода поддерживаются с версии клиента 2018.2 и работают аналогично `PluginCall.RunMethod`.

## IPluginCall — источник id объекта

`IPluginCall` — легаси-интерфейс (доступен с версии клиента 2011), через который плагин видит, что выделено в дереве ЛОЦМАН на момент вызова. Ключевые свойства:

| Свойство | Тип | Описание |
|---|---|---|
| `IdVersion` | `long` | **Id выделенного объекта.** Это то значение, которое наш плагин передаёт во внешний сервис. |
| `stType` | `BSTR` | Тип выделенного объекта. |
| `stProduct` | `BSTR` | Ключевой атрибут (обозначение/артикул) выделенного объекта. |
| `stVersion` | `BSTR` | Версия выделенного объекта. |
| `Selected` | `IPDMObject` | Полноценный интерфейс выделенного объекта (если нужен доступ шире, чем просто id/тип). |
| `WFSelected` | `IWFObject` | Интерфейс выделенного объекта WorkFlow, если применимо. |
| `IdParent`, `stParentType`, `stParentProduct`, `stParentVersion`, `IdLink`, `SelectedParent` | — | Данные об объекте, связанном с выделенным по конкретной связи (`IdLink`); определены только если `IdLink != 0`. |
| `DBName` | `BSTR` | Название базы данных ЛОЦМАН:PLM. |
| `CheckOut` | `long` | Id открытого рабочего проекта (0, если плагин вызван для окна просмотра базы без checkout). |
| `AppHandle`, `ClientHandle`, `MainHandle` | `HWND` | Хэндлы окон приложения/базы/главного окна клиента — пригодятся, если нужно, например, показать модальное окно поверх клиента. |
| `AsyncTask` | `IAsyncTask` | Интерфейс для асинхронного вызова методов API. |

Важное примечание из документации: если выделенный объект отсутствует, `Selected` возвращает нулевой указатель, а `IdVersion`, `stType`, `stProduct`, `stVersion`, `IdLink`, `SelectedParent` — не определены. Поэтому перед использованием `IdVersion` стоит проверять его на `> 0` — именно так сделана проверка активности пункта меню в [ExternalApiPlugin](ExternalApiPlugin.md).

## Как это использовано в проекте

```csharp
menu.AddMenuItem("Внешний API#Тестовый запрос", OpenExternalApiForm,
    arg => arg?.PluginCall?.IdVersion > 0);

private void OpenExternalApiForm(INetPluginCall call)
{
    var objectId = call.PluginCall.IdVersion;
    // ... передаём objectId дальше в форму и в URL запроса
}
```

Так пункт меню недоступен, если в дереве ничего не выделено, а если выделено — id гарантированно берётся из актуального контекста клика.

## См. также

- [Loodsman-Plugin-SDK](Loodsman-Plugin-SDK.md)
- [ExternalApiPlugin](ExternalApiPlugin.md)
