using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserLeaveAppliedController : ControllerBase
    {
        private readonly IUserLeaveAppliedService _userLeaveAppliedService;

        public UserLeaveAppliedController(IUserLeaveAppliedService userLeaveAppliedService)
        {
            _userLeaveAppliedService = userLeaveAppliedService;
        }

        [HttpGet("getuserleaveappliedbymanagerid")]
        public async Task<IActionResult> GetUserLeaveApplied(int managerId)
        {
            try
            {
                var details = await _userLeaveAppliedService.GetUserLeaveAppliedAsync(managerId);
                return Ok( details );
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("getdocument/{id}")]
        public async Task<IActionResult> GetUserLeaveAppliedDocument(int id)
        {
            try
            {
                var result = await _userLeaveAppliedService.GetUserLeaveAppliedDocumentAsync(id);

                if (result == null)
                    return NotFound(new { message = "Document not found for the given Id." });

                var (fileName, data) = result.Value;

                return File(data, "application/pdf", fileName);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("getuserleaveappliedbyid/{id}")]
        public async Task<IActionResult> GetUserLeaveAppliedById(int id)
        {
            try
            {
                var record = await _userLeaveAppliedService.GetUserLeaveAppliedByIdAsync(id);
                if (record == null)
                    return NotFound(new { message = "No user leave application found with the given Id." });

                return Ok(record);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("getleavetypes")]
        public async Task<IActionResult> GetLeaveTypes([FromQuery] int userId)
        {
            try
            {
                var details = await _userLeaveAppliedService.GetLeaveTypesAsync(userId);
                return Ok( details );
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPost("insert")]
        public async Task<IActionResult> InsertUserLeaveApplied([FromForm] UserLeaveAppliedModel leave)
        {
            try
            {
                await _userLeaveAppliedService.InsertUserLeaveAppliedAsync(leave);
                return Ok(new {success = true, message = "Leave Added successfully."});
            }
            catch (Exception ex)
            {
                return Ok(new { success = false, message = ex.Message });
            }
        }

        [HttpPost("update")]
        public async Task<IActionResult> UpdateUserLeaveApplied([FromBody] List<UserLeaveAppliedUpdateModel> leaves)
        {
            try
            {
                await _userLeaveAppliedService.UpdateUserLeaveAppliedAsync(leaves);
                return Ok(new { success = true, message = "Leave Updated successfully." });
            }
            catch (Exception ex)
            {
                return Ok(new { success = false, message = ex.Message });
            }
        }

        [HttpGet("getcalenderevents")]
        public async Task<IActionResult> GetCalendarEvents([FromQuery] int userId,
            [FromQuery] int month, [FromQuery] int year)
        {
            try
            {
                var events = await _userLeaveAppliedService.GetCalendarEventsAsync(userId, month, year);
                return Ok(events);
            }
            catch (Exception ex)
            {
                return Ok(new List<CalendarEventDto>());
            }
        }

        [HttpGet("getleaveandattendance")]
        public async Task<IActionResult> GetLeavesAndAttendance([FromQuery] int userId)
        {
            try
            {
                var events = await _userLeaveAppliedService.GetLeavesAndAttendanceAsync(userId);
                return Ok(events);
            }
            catch (Exception ex)
            {
                return Ok(new List<LeavesAndAttendanceDto>());
            }
        }
    }
}