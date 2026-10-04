using System;
using System.Data;
using System.Text;
using Ascon.Plm.Loodsman.PluginSDK;

namespace ExternalApiPlugin
{
    /// <summary>
    /// Запись файла в ЛОЦМАН от имени пользователя клиента: вызовы идут через INetPluginCall.RunMethod,
    /// то есть под сессией пользователя (его права, его блокировки, его рабочий проект).
    /// </summary>
    internal static class LoodsmanFileUploader
    {
        /// <summary>UpFileById: добавляет файл к версии объекта или обновляет файл с таким же именем.</summary>
        public static string UpFileById(INetPluginCall call, long idVersion, string fileName, string fullFilePath, byte[] data)
        {
            // Порядок аргументов — как в сигнатуре UpFileById из ЛОЦМАН API.chm, без out-параметров
            // inReturnCode / stErrorMessage: как RunMethod отдаёт ошибку, проверяем на стенде.
            var result = call.RunMethod(
                "UpFileById",
                (int)idVersion,
                fileName,
                fullFilePath ?? string.Empty,
                data,
                DateTime.Now,
                false);

            return Describe(result);
        }

        /// <summary>
        /// Сохраняет файл в документ с учётом режима. Для AutoCheckOut объект сам берётся в работу и сдаётся в базу
        /// (CheckIn2), а подключение клиента по документации возвращается в режим базы данных. При любой ошибке
        /// после взятия в работу — отключаемся от рабочего проекта и отменяем его, чтобы не оставить блокировку.
        /// </summary>
        public static string SaveToDocument(INetPluginCall call, long idVersion, TargetInfo target, SaveMode mode, string fileName, byte[] data)
        {
            if (mode == SaveMode.Direct)
            {
                return UpFileById(call, idVersion, fileName, string.Empty, data);
            }

            if (mode != SaveMode.AutoCheckOut || target == null)
            {
                throw new InvalidOperationException("Сохранение в этот объект невозможно.");
            }

            var dbName = call.PluginCall.DBName;
            string checkOutName = null;
            var connected = false;
            var checkedIn = false;
            try
            {
                var created = call.RunMethod("CheckOut", target.Type, target.Product, target.Version, 0);
                checkOutName = FirstText(created);
                if (string.IsNullOrEmpty(checkOutName))
                {
                    throw new InvalidOperationException($"CheckOut не вернул имя рабочего проекта ({Describe(created)}).");
                }

                call.RunMethod("ConnectToCheckOut", checkOutName, dbName);
                connected = true;

                var uploadResult = UpFileById(call, idVersion, fileName, string.Empty, data);

                call.RunMethod("CheckIn2", checkOutName, dbName);
                connected = false;
                checkedIn = true;
                return $"CheckOut '{checkOutName}' → UpFileById → CheckIn2 выполнены. {uploadResult}";
            }
            catch (Exception)
            {
                if (connected)
                {
                    TryRun(call, "DisconnectCheckOut", checkOutName, dbName);
                }
                if (checkOutName != null && !checkedIn)
                {
                    TryRun(call, "CancelCheckOut2", checkOutName, dbName);
                }
                throw;
            }
        }

        private static void TryRun(INetPluginCall call, string method, params object[] args)
        {
            try
            {
                call.RunMethod(method, args);
            }
            catch (Exception)
            {
                // Уборка после сбоя: исходная ошибка важнее.
            }
        }

        private static string FirstText(object value)
        {
            if (value is DataTable table)
            {
                return table.Rows.Count > 0 && table.Columns.Count > 0 ? Convert.ToString(table.Rows[0][0]) : null;
            }

            return value == null ? null : Convert.ToString(value);
        }

        /// <summary>GetInfoAboutVersion (режим 7): файлы версии, нужны чтобы подсмотреть допустимый путь файла.</summary>
        public static string GetFilesInfo(INetPluginCall call, long idVersion)
        {
            var table = call.GetDataTable("GetInfoAboutVersion", string.Empty, string.Empty, string.Empty, (int)idVersion, 7);
            return Describe(table);
        }

        /// <summary>
        /// GetInfoAboutVersion (режим 15): тип/ключ/версия, является ли объект документом, уровень доступа и блокировка.
        /// Возвращает null, если данные получить не удалось (тогда вызывающий решает, что делать).
        /// </summary>
        public static TargetInfo GetTargetInfo(INetPluginCall call, long idVersion)
        {
            var table = call.GetDataTable("GetInfoAboutVersion", string.Empty, string.Empty, string.Empty, (int)idVersion, 15);
            if (table == null || table.Rows.Count == 0)
            {
                return null;
            }

            var row = table.Rows[0];
            return new TargetInfo
            {
                Type = Text(row, "_TYPE"),
                Product = Text(row, "_PRODUCT"),
                Version = Text(row, "_VERSION"),
                IsDocument = Number(row, "_DOCUMENT"),
                AccessLevel = Number(row, "_ACCESSLEVEL"),
                Locked = Number(row, "_LOCKED")
            };
        }

        private static string Text(DataRow row, string column) =>
            row.Table.Columns.Contains(column) && row[column] != DBNull.Value ? Convert.ToString(row[column]) : null;

        private static int? Number(DataRow row, string column) =>
            row.Table.Columns.Contains(column) && row[column] != DBNull.Value ? Convert.ToInt32(row[column]) : (int?)null;

        public static string Describe(object value)
        {
            if (value == null)
            {
                return "результат: null";
            }

            if (value is DataTable table)
            {
                var sb = new StringBuilder();
                sb.AppendLine($"DataTable: строк {table.Rows.Count}");
                foreach (DataColumn column in table.Columns)
                {
                    sb.Append(column.ColumnName).Append(" | ");
                }
                sb.AppendLine();
                foreach (DataRow row in table.Rows)
                {
                    foreach (var item in row.ItemArray)
                    {
                        sb.Append(item).Append(" | ");
                    }
                    sb.AppendLine();
                }
                return sb.ToString();
            }

            if (value is Array array)
            {
                var sb = new StringBuilder($"{value.GetType()}[{array.Length}]: ");
                foreach (var item in array)
                {
                    sb.Append(item).Append("; ");
                }
                return sb.ToString();
            }

            return $"результат: {value.GetType().FullName} = {value}";
        }
    }

    internal sealed class TargetInfo
    {
        public string Type { get; set; }
        public string Product { get; set; }
        public string Version { get; set; }
        public int? IsDocument { get; set; }
        public int? AccessLevel { get; set; }
        public int? Locked { get; set; }

        public string Title => $"{Type} {Product} v{Version}";

        /// <summary>
        /// Что можно сделать с объектом. Неизвестные (не пришедшие) поля не блокируют: тогда пробуем как есть.
        /// Locked в режиме просмотра: 0 — свободен, 1 — заблокирован текущим пользователем (в другом проекте), 2 — другим.
        /// Locked в рабочем проекте: 0 — не блокирован, 1 — заблокирован в текущем проекте, 2 — в другом.
        /// </summary>
        public SaveAssessment Assess(long checkOutId)
        {
            if (IsDocument == 0)
                return SaveAssessment.Refuse("выбранный объект не является документом (файл можно связать только с документом)");
            if (AccessLevel < 2)
                return SaveAssessment.Refuse("нет прав на изменение объекта");

            if (checkOutId != 0)
            {
                return Locked == 0 || Locked == 2
                    ? SaveAssessment.Refuse("объект не заблокирован в текущем рабочем проекте (не взят в работу или заблокирован в другом проекте)")
                    : SaveAssessment.Direct;
            }

            if (Locked == 2)
                return SaveAssessment.Refuse("объект заблокирован другим пользователем");
            if (Locked == 1)
                return SaveAssessment.Refuse("объект уже взят вами в работу в другом рабочем проекте: откройте его и сохраните оттуда");
            return SaveAssessment.AutoCheckOut;
        }
    }

    internal enum SaveMode
    {
        Refused,
        /// <summary>Объект в текущем рабочем проекте: достаточно UpFileById.</summary>
        Direct,
        /// <summary>Объект свободен, подключение в режиме просмотра: CheckOut → ConnectToCheckOut → UpFileById → CheckIn2.</summary>
        AutoCheckOut
    }

    internal sealed class SaveAssessment
    {
        public SaveMode Mode { get; private set; }
        public string Reason { get; private set; }
        public bool CanSave => Mode != SaveMode.Refused;

        public static readonly SaveAssessment Direct = new SaveAssessment { Mode = SaveMode.Direct };
        public static readonly SaveAssessment AutoCheckOut = new SaveAssessment { Mode = SaveMode.AutoCheckOut };
        public static SaveAssessment Refuse(string reason) => new SaveAssessment { Mode = SaveMode.Refused, Reason = reason };
    }
}
