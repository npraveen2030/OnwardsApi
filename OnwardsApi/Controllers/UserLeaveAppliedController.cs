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

        [HttpGet("get")]
        public async Task<IActionResult> GetUserLeaveApplied(int UserId)
        {
            try
            {
                var details = await _userLeaveAppliedService.GetUserLeaveAppliedAsync(UserId);
                return Ok(new { details });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
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
        public async Task<IActionResult> UpdateUserLeaveApplied([FromBody] UserLeaveAppliedUpdateModel leave)
        {
            try
            {
                await _userLeaveAppliedService.UpdateUserLeaveAppliedAsync(leave);
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