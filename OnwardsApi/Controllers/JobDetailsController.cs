using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobDetailsController : ControllerBase
    {
        private readonly IJobDetailService _jobDetailsService;

        public JobDetailsController(IJobDetailService jobDetailsService)
        {
            _jobDetailsService = jobDetailsService;
        }

        [HttpPost]
        public IActionResult Insert([FromBody] JobDetailModel model)
        {
            _jobDetailsService.Insert(model);
            return Ok();
        }

        [HttpPut]
        public IActionResult Update([FromBody] JobDetailModel model)
        {
            _jobDetailsService.Update(model);
            return Ok();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _jobDetailsService.Delete(id);
            return Ok();
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            var result = _jobDetailsService.GetById(id);
            if (result == null)
                return NotFound();
            return Ok(result);
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            var result = _jobDetailsService.GetAll();
            return Ok(result);
        }

        [HttpGet("search")]
        public IActionResult Search([FromQuery] string query)
        {
            var result = _jobDetailsService.Search(query);
            return Ok(result);
        }
    }
}
