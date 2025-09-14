using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LanguageController : ControllerBase
    {
        private readonly ILanguageService _languageService;

        public LanguageController(ILanguageService languageService)
        {
            _languageService = languageService;
        }

        [HttpPost]
        public IActionResult Insert([FromBody] LanguageModel language)
        {
            _languageService.Insert(language);
            return Ok();
        }

        [HttpPut]
        public IActionResult Update([FromBody] LanguageModel language)
        {
            _languageService.Update(language);
            return Ok();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _languageService.Delete(id);
            return Ok();
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            var language = _languageService.GetLanguageById(id);
            if (language == null)
                return NotFound();
            return Ok(language);
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            List<LanguageModel> languages = _languageService.GetLanguages();
            return Ok(languages);
        }
    }
}
