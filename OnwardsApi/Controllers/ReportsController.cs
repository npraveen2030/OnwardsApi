using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReportsController : ControllerBase
    {
        private readonly IReportsService _service;

        public ReportsController(IReportsService service)
        {
            _service = service;
        }

        [HttpGet("leave-report")]
        public async Task<IActionResult> GetLeaveReport([FromQuery] DateTime startDate, [FromQuery] DateTime endDate)
        {
            try
            {
                var report = await _service.GetLeaveReportAsync(startDate, endDate);
                return Ok(report);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("get-attendance-regularization-report")]
        public async Task<IActionResult> GetAttendanceRegularizationReport(
            [FromQuery] DateTime startDate,
            [FromQuery] DateTime endDate)
        {
            try
            {
                var report = await _service.GetAttendanceRegularizationReportAsync(startDate, endDate);
                return Ok(report);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
