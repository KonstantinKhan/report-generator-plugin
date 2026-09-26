"""
Минимальный HTTP-сервер для локальной проверки плагина ExternalApiPlugin
без выхода в интернет. Только стандартная библиотека, ничего ставить не надо.

Запуск на Windows-машине с клиентом Лоцман:
    python test_server.py

Слушает http://127.0.0.1:8080/ и на любой GET отвечает JSON.
"""

import json
from datetime import datetime
from http.server import BaseHTTPRequestHandler, HTTPServer
from urllib.parse import urlparse, parse_qs

HOST = "127.0.0.1"
PORT = 8080


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        query = parse_qs(urlparse(self.path).query)
        object_id = query.get("objectId", [None])[0]

        body = json.dumps(
            {
                "message": "Привет из локального тестового сервера",
                "receivedObjectId": object_id,
                "time": datetime.now().isoformat(),
            },
            ensure_ascii=False,
        ).encode("utf-8")

        self.send_response(200)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, format, *args):
        print(format % args)


if __name__ == "__main__":
    server = HTTPServer((HOST, PORT), Handler)
    print(f"Test server: http://{HOST}:{PORT}/")
    server.serve_forever()
