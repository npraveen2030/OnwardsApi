using Azure.Core;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsBLL.Service;
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

        [HttpGet("getusersforadmin")]
        public async Task<IActionResult> GetUsersForAdmin()
        {
            try
            {
                var users = await _userDetalilsService.GetUsersForAdminAsync();
                return Ok(users);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        // POST: api/UserDetails/insert
        [HttpPost("insertorupdate")]
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

        [HttpDelete("{id}/{loginId}")]
        public async Task<IActionResult> DeleteUserDetailsById(
           [FromRoute] int id, [FromRoute] int loginId)
        {
            try
            {
                await _userDetalilsService.DeleteUserAsync(id,loginId);
                return Ok(new { message = "Details Delted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("grades")]
        public async Task<IActionResult> GetGrades() =>
        Ok(await _userDetalilsService.GetAllGradesAsync());

        [HttpGet("departments")]
        public async Task<IActionResult> GetDepartments() =>
            Ok(await _userDetalilsService.GetAllDepartmentsAsync());

        [HttpGet("types")]
        public async Task<IActionResult> GetTypes() =>
            Ok(await _userDetalilsService.GetAllTypesAsync());

        [HttpGet("shifts")]
        public async Task<IActionResult> GetShifts() =>
            Ok(await _userDetalilsService.GetAllShiftsAsync());


        [HttpPost("DuplicateEmailCheck")]
        public async Task<IActionResult> DuplicateEmailCheck([FromBody] EmailCheckRequest request)
        {
            if (string.IsNullOrWhiteSpace(request?.Email))
                return BadRequest("Email cannot be empty.");

            try
            {
                bool isUnique = await _userDetalilsService.DuplicateEmailCheckAsync(request.Email,request?.UserId);
                return Ok(new
                {
                    IsUnique = isUnique
                });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new
                {
                    Message = "Error occurred while checking duplicate email.",
                    Error = ex.Message
                });
            }
        }
    }
}
