using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsBLL.Service;
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

        [HttpPost("insertorupdate")]
        public async Task<IActionResult> InsertOrUpdateUserLeaveApplied(UserLeaveAppliedModel leave)
        {
            try
            {
                await _userLeaveAppliedService.InsertOrUpdateUserLeaveAppliedAsync(leave);
                return Ok(new { message = "Leave Added successfully."});
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}