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

        /// <summary>Причина, по которой сохранить нельзя; null — можно. Неизвестные (не пришедшие) поля не блокируют.</summary>
        public string RefusalReason(long checkOutId)
        {
            if (IsDocument == 0) return "выбранный объект не является документом (файл можно связать только с документом)";
            if (AccessLevel < 2) return "нет прав на изменение объекта";
            if (checkOutId == 0) return "объект не в рабочем проекте: возьмите его в работу и вызовите команду из окна рабочего проекта";
            if (Locked == 0 || Locked == 2) return "объект не заблокирован в текущем рабочем проекте (не взят в работу или заблокирован в другом проекте)";
            return null;
        }
    }
}
