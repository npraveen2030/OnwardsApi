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
        [HttpPost("insert")]
        public async Task<IActionResult> Insert([FromBody] JobDetailModel model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _jobDetailsService.InsertAsync(model);
            return Ok(new { message = "Job detail inserted successfully." });
        }

        // PUT: api/JobDetails
        [HttpPut("update")]
        public async Task<IActionResult> Update([FromBody] JobDetailModel model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _jobDetailsService.UpdateAsync(model);
            return Ok(new { message = "Job detail updated successfully." });
        }

        // DELETE: api/JobDetails/{id}
        [HttpDelete("delete/{id}/{loginid}")]
        public async Task<IActionResult> Delete([FromRoute] int id,int loginid)
        {
            await _jobDetailsService.DeleteAsync(id,loginid);
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
        [HttpGet("getall")]
        public async Task<IActionResult> GetAll([FromQuery] int? userId)
        {
            var result = await _jobDetailsService.GetAllAsync(userId);
            return Ok(result);
        }

        // GET: api/JobDetails/search?query=value
        [HttpGet("search")]
        public async Task<IActionResult> Search(
                    [FromQuery] string? keyword,
                    [FromQuery] int? reqId,
                    [FromQuery] List<int> locationIds)
        {
            try
            {
                // Call service with provided parameters; if all are null/empty, SP will return full active table
                var result = await _jobDetailsService.SearchAsync(keyword, reqId, locationIds);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new
                {
                    message = "An unexpected error occurred while searching job details.",
                    details = ex.Message
                });
            }
        }

    }
}
