using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;
using System.Threading.Tasks;

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

        // POST: api/JobDetails
        [HttpPost]
        public async Task<IActionResult> Insert([FromBody] JobDetailModel model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _jobDetailsService.InsertAsync(model);
            return Ok(new { message = "Job detail inserted successfully." });
        }

        // PUT: api/JobDetails
        [HttpPut]
        public async Task<IActionResult> Update([FromBody] JobDetailModel model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _jobDetailsService.UpdateAsync(model);
            return Ok(new { message = "Job detail updated successfully." });
        }

        // DELETE: api/JobDetails/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            await _jobDetailsService.DeleteAsync(id);
            return Ok(new { message = "Job detail deleted successfully." });
        }

        // GET: api/JobDetails/{id}
        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(int id)
        {
            var result = await _jobDetailsService.GetByIdAsync(id);
            if (result == null)
                return NotFound(new { message = $"Job detail with Id {id} not found." });

            return Ok(result);
        }

        // GET: api/JobDetails
        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var result = await _jobDetailsService.GetAllAsync();
            return Ok(result);
        }

        // GET: api/JobDetails/search?query=value
        [HttpGet("search")]
        public async Task<IActionResult> Search([FromQuery] string query)
        {
            if (string.IsNullOrWhiteSpace(query))
                return BadRequest(new { message = "Search query cannot be empty." });

            var result = await _jobDetailsService.SearchAsync(query);
            return Ok(result);
        }
    }
}
