using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AttendanceRegularizationController : ControllerBase
    {
        private readonly IAttendanceRegularizationService _attendanceRegularizationService;

        public AttendanceRegularizationController(IAttendanceRegularizationService attendanceRegularizationService)
        {
            _attendanceRegularizationService = attendanceRegularizationService;
        }

        // ------------------ POST: Insert New Regularization Request ------------------
        [HttpPost("insert")]
        public async Task<IActionResult> InsertAttendanceRegularization([FromBody] AttendanceRegularizationModel regularization)
        {
            try
            {
                await _attendanceRegularizationService.InsertAttendanceRegularizationAsync(regularization);
                return Ok(new { success = true, message = "Attendance regularization request added successfully." });
            }
            catch (InvalidOperationException ex)
            {
                // For business rule or 30-day limit error
                return Ok(new { success = false, message = ex.Message });
            }
            catch (Exception ex)
            {
                return Ok(new { success = false, message = "Error occurred while inserting attendance regularization request.", error = ex.Message });
            }
        }

        [HttpPost("update")]
        public async Task<IActionResult> UpdateAttendanceRegularization([FromBody] AttendanceRegularizationUpdateModel regularization)
        {
            try
            {
                await _attendanceRegularizationService.UpdateAttendanceRegularizationAsync(regularization);
                return Ok(new { success = true, message = "Attendance regularization request updated successfully." });
            }
            catch (InvalidOperationException ex)
            {
                return Ok(new { success = false, message = ex.Message });
            }
            catch (Exception ex)
            {
                return Ok(new { success = false, message = "Error occurred while updating attendance regularization request.", error = ex.Message });
            }
        }
    }
}
