namespace AppServer.Plugin.Sample.Dto
{
    /// <summary>
    /// Набор входных параметров.
    /// </summary>
    public class Plugin_NewBProcAttributeInputDto
    {
        /// <summary>
        /// Имя атрибута бизнес-процесса.
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Тип атрибута бизнес-процесса.
        /// </summary>
        public int AttrType { get; set; }

        /// <summary>
        /// Список возможных значений атрибута бизнес-процесса.
        /// </summary>
        public string List { get; set; }

        /// <summary>
        /// Признак атрибут бизнес-процесса может принимать значения только из списка (0 - Любое, 1 - Из списка).
        /// </summary>
        public bool OnlyListItems { get; set; }
    }
}
