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

        [HttpPost("insert")]
        public async Task<IActionResult> InsertUserLeaveApplied(UserLeaveAppliedModel leave)
        {
            try
            {
                await _userLeaveAppliedService.InsertUserLeaveAppliedAsync(leave);
                return Ok(new { message = "Leave Added successfully."});
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPatch("update")]
        public async Task<IActionResult> UpdateUserLeaveApplied(UserLeaveAppliedUpdateModel Modification)
        {
            try
            {
                await _userLeaveAppliedService.UpdateUserLeaveAppliedAsync(Modification);
                return Ok(new { message = "Leave Modified successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}