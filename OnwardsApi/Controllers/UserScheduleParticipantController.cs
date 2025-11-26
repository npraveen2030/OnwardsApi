using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserScheduleParticipantController : ControllerBase
    {
        private readonly IUserScheduleParticipantService _service;

        public UserScheduleParticipantController(IUserScheduleParticipantService service)
        {
            _service = service;
        }

        [HttpGet("getschedule")]
        public async Task<IActionResult> GetSchedule([FromQuery] int schedulerId)
        {
            try
            {
                var schedules = await _service.GetUserScheduleForParticipantAsync(schedulerId);
                return Ok(schedules);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
