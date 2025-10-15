using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsBLL.Service;
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

        [HttpGet("getAttendanceregularizationbymanagerid")]
        public async Task<IActionResult> GetAttendanceRegularization(int managerId)
        {
            try
            {
                var details = await _attendanceRegularizationService.GetAttendanceRegularizationAsync(managerId);
                return Ok(details);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("getattendanceregularizationbyid/{id}")]
        public async Task<IActionResult> GetAttendanceRegularizationById(int id)
        {
            try
            {
                var record = await _attendanceRegularizationService.GetAttendanceRegularizationByIdAsync(id);
                if (record == null)
                    return NotFound(new { message = "No attendance regularization found with the given Id." });

                return Ok(record);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }


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
        public async Task<IActionResult> UpdateAttendanceRegularization([FromBody] List<AttendanceRegularizationUpdateModel> regularizations)
        {
            try
            {
                await _attendanceRegularizationService.UpdateAttendanceRegularizationAsync(regularizations);
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
