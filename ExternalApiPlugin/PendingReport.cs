using System;

namespace ExternalApiPlugin
{
    /// <summary>
    /// Последний сформированный отчёт, ожидающий сохранения в документ ЛОЦМАН. Живёт в памяти процесса клиента:
    /// пользователь закрывает окно плагина, свободно ходит по дереву и сохраняет отчёт через пункт меню.
    /// </summary>
    internal sealed class PendingReport
    {
        public static PendingReport Current { get; private set; }

        public string FileName { get; private set; }
        public byte[] Data { get; }
        public long SourceObjectId { get; }
        public DateTime CreatedAt { get; }

        private PendingReport(string fileName, byte[] data, long sourceObjectId)
        {
            FileName = fileName;
            Data = data;
            SourceObjectId = sourceObjectId;
            CreatedAt = DateTime.Now;
        }

        public static void Set(string fileName, byte[] data, long sourceObjectId)
        {
            Current = new PendingReport(fileName, data, sourceObjectId);
        }

        /// <summary>Пользователь поправил имя файла: сохраняться будет под ним.</summary>
        public static void Rename(string fileName)
        {
            if (Current != null && !string.IsNullOrWhiteSpace(fileName))
            {
                Current.FileName = fileName.Trim();
            }
        }

        public static void Clear()
        {
            Current = null;
        }
    }
}
