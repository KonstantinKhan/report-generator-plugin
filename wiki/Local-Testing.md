← [Home](index.md)

# Локальное тестирование без интернета

## Зачем

Рабочая машина, на которой стоит клиент ЛОЦМАН и разворачивается плагин, не имеет прямого выхода в интернет — см. [Network-Constraints](Network-Constraints.md). Первая версия плагина (обращение к публичному open-meteo API) падала с `SocketException` уже на этапе TCP-подключения, до всякого TLS. Чтобы проверять код плагина независимо от сетевой политики, добавлен локальный HTTP-сервер, который крутится на той же машине — трафик до `127.0.0.1` никогда не покидает машину, файрвол и прокси тут ни при чём.

## `tools/test_server.py`

Минимальный сервер только на стандартной библиотеке Python (`http.server`, `json`, `urllib.parse`, `datetime`) — не нужен ни `pip install`, ни виртуальное окружение.

```python
HOST = "127.0.0.1"
PORT = 8080

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        query = parse_qs(urlparse(self.path).query)
        object_id = query.get("objectId", [None])[0]

        body = json.dumps({
            "message": "Привет из локального тестового сервера",
            "receivedObjectId": object_id,
            "time": datetime.now().isoformat(),
        }, ensure_ascii=False).encode("utf-8")

        self.send_response(200)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.end_headers()
        self.wfile.write(body)
```

Запуск на Windows-машине:

```
python tools\test_server.py
```

Сервер слушает `http://127.0.0.1:8080/`, на любой GET отвечает JSON. Читает query-параметр `objectId` (тот самый id выделенного в ЛОЦМАН объекта — см. [IPluginCall-And-Object-Id](IPluginCall-And-Object-Id.md)) и возвращает его же обратно в поле `receivedObjectId`. Это позволяет визуально в форме плагина убедиться, что нужный id действительно долетел до сервера, а не потерялся по дороге.

## Как плагин на него ссылается

Адрес и маршрут больше не захардкожены в коде — они читаются из `ExternalApiPlugin/server-config.json` (грузит `ServerConfig.cs`, см. [ExternalApiPlugin](ExternalApiPlugin.md)):

```json
{
  "baseUrl": "http://127.0.0.1:8080/",
  "specificationEndpoint": "specifications/{versionId}",
  "healthEndpoint": "health",
  "timeoutSeconds": 30
}
```

⚠️ **Рассинхронизация с `tools/test_server.py`.** Плагин теперь шлёт `POST /specifications/{versionId}` (id объекта — в пути), а не `GET /?objectId=...`. `tools/test_server.py` до сих пор реализует только `do_GET` с `objectId` в query — под текущий формат запроса плагина не подходит, запрос вернёт 404. Для локальной проверки нужно либо поднять реальный `report-generator/report-server` (Kotlin/Ktor, роуты `GET /health` и `POST /specifications/{versionId}`, слушает `127.0.0.1:8080` по умолчанию — см. `AppConfig.kt`), либо доработать `test_server.py` под `POST`/path-параметр. Актуализация `test_server.py` — на этот момент не сделана.

Подробнее про поток данных — в [ExternalApiPlugin](ExternalApiPlugin.md).

## Как переключить на боевой сервер

1. Убедиться, что боевой адрес реально доступен с рабочей машины (см. варианты в [Network-Constraints](Network-Constraints.md) — внутренняя сеть/VPN либо выданный whitelist).
2. Поменять `baseUrl` (и при необходимости `specificationEndpoint`) в `server-config.json` на боевые значения — пересборка не нужна, файл лежит рядом с `.dll` в `PluginStore`.
3. Если менялся сам `.dll` (не только конфиг) — пересобрать (см. [Build-And-Deploy](Build-And-Deploy.md)) и переустановить в `PluginStore`.

Локальный тестовый сервер (`tools/test_server.py`) при этом можно оставить в репозитории — он не мешает боевой работе и пригодится при следующей отладке в изолированной сети.

## См. также

- [Network-Constraints](Network-Constraints.md)
- [ExternalApiPlugin](ExternalApiPlugin.md)
- [Build-And-Deploy](Build-And-Deploy.md)
