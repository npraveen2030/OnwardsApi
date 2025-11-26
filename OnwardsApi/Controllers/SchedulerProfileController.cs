using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SchedulerProfileController : ControllerBase
    {
        private readonly ISchedulerProfileService _service;

        public SchedulerProfileController(ISchedulerProfileService service)
        {
            _service = service;
        }

        [HttpGet("get/{userId}")]
        public async Task<IActionResult> GetSchedulerProfile(int userId)
        {
            try
            {
                var profile = await _service.GetSchedulerProfileAsync(userId);
                return Ok(profile);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpPost("save")]
        public async Task<IActionResult> SaveSchedulerProfile([FromBody] SchedulerProfileSaveModel model)
        {
            try
            {
                await _service.InsertOrUpdateSchedulerProfileAsync(model);
                return Ok(new { message = "Saved Successfully" });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }
    }
}
