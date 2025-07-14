using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class UserShiftDetailsController : ControllerBase
  {
    private readonly IUserShiftDetailsService _userShiftDetailsService;

    public UserShiftDetailsController(IUserShiftDetailsService userShiftDetailsService)
    {
      _userShiftDetailsService = userShiftDetailsService;
    }

    /// <summary>
    /// Inserts or updates a user's shift log. Returns LogId.
    /// </summary>
    /// <param name="userId">User ID</param>
    /// <returns>200 OK with LogId or 400 BadRequest with error</returns>
    [HttpPost("InsertOrUpdate")]
    [ProducesResponseType(typeof(object), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(object), StatusCodes.Status400BadRequest)]
    public IActionResult InsertOrUpdate(int userId)
    {
      try
      {
        int logId = _userShiftDetailsService.InsertOrUpdateUserShiftDetails(userId);
        return Ok(new { LogId = logId });
      }
      catch (ApplicationException ex)
      {
        return BadRequest(new { error = ex.Message });
      }
    }

    /// <summary>
    /// Gets user shift details including login/logout time and total logged hours.
    /// </summary>
    /// <param name="userId">The user ID.</param>
    /// <returns>User shift details for today.</returns>
    [HttpGet("GetByUserId/{userId}")]
    [ProducesResponseType(typeof(UserShiftLogDto), StatusCodes.Status200OK)]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public IActionResult GetUserShiftDetails(int userId)
    {
      try
      {
        var result = _userShiftDetailsService.GetUserShiftDetails(userId);

        if (result == null)
        {
          return NotFound(new { Message = "Shift details not found for the given user." });
        }

        return Ok(result);
      }
      catch (ApplicationException ex)
      {
        return BadRequest(new { error = ex.Message });
      }
    }
  }
}
