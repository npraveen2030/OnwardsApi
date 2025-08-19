using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserDetailsController : ControllerBase
    {
        private readonly IUserDetailsService _userDetalilsService;

        public UserDetailsController(IUserDetailsService userDetailsService)
        {
            _userDetalilsService = userDetailsService;
        }

        // POST: api/UserDetails/get
        [HttpPost("get")]
        public async Task<IActionResult> GetAllUserDetails(UserModelFilter filter,int skip, int take)
        {
            try
            {
                var userDetails = await _userDetalilsService.GetAllUserDetailsAsync(filter, skip, take);
                return Ok(new { message = "Details fetched successfully.", userDetails });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("GetByUserName")]
        public async Task<ActionResult<IEnumerable<string>>> GetByUserName(
            [FromQuery] string? first,
            [FromQuery] string? second)
        {
            first = (first ?? string.Empty).Trim();
            second = (second ?? string.Empty).Trim();

            // If no terms provided, return empty (or you could return top N)
            if (string.IsNullOrEmpty(first) && string.IsNullOrEmpty(second))
                return Ok(Array.Empty<string>());

            // Case-insensitive LIKE using lower() (portable across providers)
            string f = first.ToLowerInvariant();
            string s = second.ToLowerInvariant();

            var results = await _userDetalilsService.GetUsersByNameAsync(f,s);

            return Ok(results);
        }

        // POST: api/UserDetails/insert
        [HttpPost("insert")]
        public async Task<IActionResult> InsertOrUpdateUserDetails(UserModel details)
        {
            try
            {
                var empCode = await _userDetalilsService.InsertOrUpdateUserAsync(details);
                return Ok(new { message = "Details saved successfully.", empCode });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteUserDetailsById(int id)
        {
            try
            {
                await _userDetalilsService.DeleteUserAsync(id);
                return Ok(new { message = "Details Delted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
