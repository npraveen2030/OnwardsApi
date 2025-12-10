using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsBLL.Service;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserPersonalDetailsController : ControllerBase
    {
        private readonly IUserPersonalDetailsService _service;

        public UserPersonalDetailsController(IUserPersonalDetailsService service)
        {
            _service = service;
        }

        [HttpGet("details/{userId}")]
        public async Task<IActionResult> GetUserPersonalDetails(int userId)
        {
            var result = await _service.GetUserPersonalDetailsByIdAsync(userId);

            if (result == null)
                return NotFound(new { message = "User not found." });

            return Ok(result);
        }

        // ------------------------ DROPDOWNS ----------------------------

        [HttpGet("nationality-options")]
        public async Task<IActionResult> GetNationalityOptions()
        {
            try
            {
                return Ok(await _service.GetNationalityOptionsAsync());
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("yesno-options")]
        public async Task<IActionResult> GetYesNoOptions()
        {
            try
            {
                return Ok(await _service.GetYesNoOptionsAsync());
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("vaccination-options")]
        public async Task<IActionResult> GetVaccinationOptions()
        {
            try
            {
                return Ok(await _service.GetVaccinationStatusOptionsAsync());
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("bloodgroups")]
        public async Task<IActionResult> GetBloodGroups()
        {
            try
            {
                return Ok(await _service.GetBloodGroupsAsync());
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpGet("gender-options")]
        public async Task<IActionResult> GetGenderOptions()
        {
            var result = await _service.GetGenderOptionsAsync();
            return Ok(result);
        }
    }
}
