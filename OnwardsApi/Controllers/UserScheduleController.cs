using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserScheduleController : ControllerBase
    {
        private readonly IUserScheduleService _service;

        public UserScheduleController(IUserScheduleService service)
        {
            _service = service;
        }

        [HttpGet("getschedule")]
        public async Task<IActionResult> GetUserSchedule(int schedulerId, int companyId, int locationId)
        {
            var result = await _service.GetUserScheduleForSchedulerAsync(schedulerId, companyId, locationId);
            return Ok(result);
        }

        [HttpPost("submit")]
        public async Task<IActionResult> InsertOrUpdate([FromBody] List<UserScheduleTVP> schedules)
        {
            await _service.InsertOrUpdateUserScheduleAsync(schedules);
            return Ok(new { message = "Saved successfully" });
        }
    }

}
