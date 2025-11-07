using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;

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
        public IActionResult GetUserSchedule(int schedulerId, int companyId, int locationId)
        {
            try
            {
                var result = _service.GetUserScheduleForScheduler(schedulerId, companyId, locationId);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }

}
