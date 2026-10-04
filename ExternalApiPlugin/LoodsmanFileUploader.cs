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
}
