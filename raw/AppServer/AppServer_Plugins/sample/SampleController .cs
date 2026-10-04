using System.Collections.Generic;
using AppServer.Plugin.Sample.Dto;
using Ascon.Plm.AppServer.Contracts.ConfigServer;
using Ascon.Plm.AppServer.WebApi.Controllers;
using Ascon.Plm.AppServer.WebApi.Extensions;
using Asp.Versioning;
using Microsoft.AspNetCore.Mvc;

namespace AppServer.Plugin.Sample
{
    /// <summary>
    /// Контроллер образец использования методов контрактов ЛОЦМАН:PLM
    /// </summary>
    [ApiController]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiVersion("3.0")]
    public class SampleController : ApiController
    {
        /// <summary>
        /// Интерфейс предосталяющий доступ к методам взаимодействия с атрибутами бизнес-процесса. 
        /// </summary>
        private readonly IBProcAttributeMetaDataContract _attributeMetaDataContract;

        /// <summary>
        /// Конструктор контроллера, который принимает интерфейс контракта через Dependency Injection.
        /// </summary>
        public SampleController(IBProcAttributeMetaDataContract attributeMetaDataContract)
        {
            /// Сохраняем переданный сервис в приватное поле.
            _attributeMetaDataContract = attributeMetaDataContract;
        }

        /// <summary>
        /// Создание атрибута бизнес-процессов.
        /// </summary>
        /// <param name="objectParams">Объект с параметрами.</param>
        /// <response code="200">Возвращает идентификатор созданого атрибута бизнес-процесса.</response>
        [HttpPost("attributes/create1")]
        public ActionResult<int> NewBProcAttribute(Plugin_NewBProcAttributeInputDto objectParams)
        {
            var newAttrId = _attributeMetaDataContract.NewBProcAttribute(objectParams.Name, objectParams.AttrType, objectParams.List, objectParams.OnlyListItems);
            return Ok(newAttrId);
        }

        /// <summary>
        /// Изменение параметров атрибута бизнес-процессов.
        /// </summary>
        /// <param name="objectParams">Объект с параметрами.</param>
        /// <response code="200">Запрос обработан.</response>
        [HttpPut("attributes/{id:int}/update1")]
        public IActionResult UpdateBProcAttribute(Plugin_UpdateBProcAttributeInputDto objectParams)
        {
            _attributeMetaDataContract.UpdateBProcAttribute(objectParams.Id, objectParams.Name, objectParams.AttrType, objectParams.List, objectParams.OnlyListItems);
            return Ok();
        }

        /// <summary>
        /// Удаление атрибута бизнес-процессов.
        /// </summary>
        /// <param name="id">Идентификатор атрибута бизнес-процесса.</param>
        /// <response code="200">Запрос обработан.</response>
        [HttpDelete("attributes/{id:int}/delete1")]
        public IActionResult DeleteBProcAttribute(int id)
        {
            _attributeMetaDataContract.DeleteBProcAttribute(id);
            return Ok();
        }

        /// <summary>
        /// Возвращает коллекцию атрибутов бизнес-процессов.
        /// </summary>
        /// <response code="200">Возвращает набор данных.</response>
        [HttpGet("attributes1")]
        public ActionResult<IEnumerable<Plugin_GetBProcAttributesOutputDto>> GetBProcAttributes()
        {
            var resultDto = _attributeMetaDataContract.GetBProcAttributes()
                .ReadToEnumerable<Plugin_GetBProcAttributesOutputDto>();
            return Ok(resultDto);
        }
    }
}
