using Ascon.Plm.Common.Mapping;

namespace AppServer.Plugin.Sample.Dto
{
    /// <summary>
    /// Описывает атрибут бизнес-процесса
    /// </summary>
    public class Plugin_GetBProcAttributesOutputDto
    {
        /// <summary>
        /// Идентификатор атрибута бизнес-процесса.
        /// </summary>
        [Column("_ID")]
        public int Id { get; set; }

        /// <summary>
        /// Имя атрибута бизнес-процесса.
        /// </summary>
        [Column("_NAME")]
        public string Name { get; set; }

        /// <summary>
        /// Тип атрибута бизнес-процесса.
        /// </summary>
        [Column("_ATTRTYPE")]
        public int AttrType { get; set; }

        /// <summary>
        /// Список возможных значений атрибута бизнес-процесса.
        /// </summary>
        [Column("_LIST")]
        public string List { get; set; }

        /// <summary>
        /// Признак атрибут бизнес-процесса может принимать значения только из списка (0 - Любое, 1 - Из списка).
        /// </summary>
        [Column("_ONLYLISTITEMS")]
        public int OnlyListItems { get; set; }
    }
}
