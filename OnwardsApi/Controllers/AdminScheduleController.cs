using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminScheduleController : ControllerBase
    {
        private readonly IAdminScheduleService _service;

        public AdminScheduleController(IAdminScheduleService service)
        {
            _service = service;
        }

        [HttpGet("get")]
        public async Task<IActionResult> GetAdminSchedules()
        {
            try
            {
                var schedules = await _service.GetAdminScheduleAsync();
                return Ok(schedules);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpPost("save")]
        public async Task<IActionResult> SaveAdminSchedule([FromBody] AdminScheduleModel model)
        {
            try
            {
                await _service.InsertOrUpdateAdminScheduleAsync(model);
                return Ok();
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpPost("delete")]
        public async Task<IActionResult> DeleteAdminSchedule([FromBody] AdminScheduleDeleteModel model)
        {
            try
            {
                await _service.DeleteAdminScheduleAsync(model.Id, model.LoginId);
                return Ok();
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("getcompaniesforadminschedule")]
        public async Task<IActionResult> GetCompaniesForAdminSchedule()
        {
            try
            {
                var companies = await _service.GetCompaniesForAdminScheduleAsync();
                return Ok(companies);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }
    }
}
