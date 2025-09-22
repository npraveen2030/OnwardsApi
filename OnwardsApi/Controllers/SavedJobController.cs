using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SavedJobController : ControllerBase
    {
        private readonly ISavedJobService _service;

        public SavedJobController(ISavedJobService service)
        {
            _service = service;
        }

        [HttpPost("insert")]
        public async Task<IActionResult> AddSavedJob([FromBody] SavedJobModel model)
        {
            var inserted = await _service.AddSavedJobAsync(model);
            return Ok(inserted);
        }

        [HttpGet("get")]
        public async Task<IActionResult> GetSavedJobs(int UserId)
        {
            var result = await _service.GetSavedJobsAsync(UserId);
            return Ok(result);
        }

        [HttpDelete("delete/{id}")]
        public async Task<IActionResult> DeleteSavedJob(int id)
        {
            await _service.DeleteSavedJobAsync(id);
            return Ok(new {message = "JobSave deleted successfully."});
        }
    }
}
