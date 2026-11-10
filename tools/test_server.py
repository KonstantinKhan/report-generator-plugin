"""
Минимальный стенд, повторяющий маршруты report-server (report-generator) для локальной
проверки плагина ExternalApiPlugin без выхода в интернет. Только стандартная библиотека.

Запуск на Windows-машине с клиентом Лоцман:
    python test_server.py

Маршруты как у боевого сервера:
    GET  /health
    POST /specifications/{versionId}[?customerRepresentative=true|false]
    POST /group-specifications/{versionId}[?customerRepresentative=true|false]
    GET  /reports/{id}

POST отвечает JSON {"id", "path"}, GET /reports/{id} отдаёт PDF. PDF здесь — заглушка
из одной пустой страницы, а не настоящий отчёт.
"""

import json
import uuid
from http.server import BaseHTTPRequestHandler, HTTPServer
from urllib.parse import urlparse, parse_qs

HOST = "127.0.0.1"
PORT = 8080

STUB_PDF = (
    b"%PDF-1.4\n"
    b"1 0 obj << /Type /Catalog /Pages 2 0 R >> endobj\n"
    b"2 0 obj << /Type /Pages /Kids [3 0 R] /Count 1 >> endobj\n"
    b"3 0 obj << /Type /Page /Parent 2 0 R /MediaBox [0 0 595 842] >> endobj\n"
    b"trailer << /Root 1 0 R >>\n"
    b"%%EOF\n"
)

# id отчёта -> путь (как у сервера); нужен только чтобы GET /reports/{id} знал, что отчёт есть.
REPORTS = {}


class Handler(BaseHTTPRequestHandler):
    def _send(self, status, content_type, body):
        self.send_response(status)
        self.send_header("Content-Type", content_type)
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _send_json(self, status, payload):
        body = json.dumps(payload, ensure_ascii=False).encode("utf-8")
        self._send(status, "application/json; charset=utf-8", body)

    def do_GET(self):
        url = urlparse(self.path)
        parts = [p for p in url.path.split("/") if p]

        if parts == ["health"]:
            self._send(200, "text/plain; charset=utf-8", b"OK")
            return

        if len(parts) == 2 and parts[0] == "reports":
            report_id = parts[1]
            if report_id not in REPORTS:
                self._send_json(404, {"error": f"report not found: {report_id}"})
                return
            self._send(200, "application/pdf", STUB_PDF)
            return

        self._send_json(404, {"error": "not found"})

    def do_POST(self):
        url = urlparse(self.path)
        parts = [p for p in url.path.split("/") if p]

        if len(parts) != 2 or parts[0] not in ("specifications", "group-specifications"):
            self._send_json(404, {"error": "not found"})
            return

        if not parts[1].isdigit():
            self._send_json(400, {"error": "versionId must be an integer"})
            return

        # Как на сервере: значение по умолчанию — true, нестрогое значение тоже трактуется как true.
        customer = parse_qs(url.query).get("customerRepresentative", ["true"])[0]
        customer_representative = customer.lower() != "false"

        report_id = str(uuid.uuid4())
        REPORTS[report_id] = (parts[0], int(parts[1]), customer_representative)
        self._send_json(200, {"id": report_id, "path": f"stub/{report_id}.pdf"})

    def log_message(self, format, *args):
        print(format % args)


if __name__ == "__main__":
    server = HTTPServer((HOST, PORT), Handler)
    print(f"Test server: http://{HOST}:{PORT}/")
    server.serve_forever()
