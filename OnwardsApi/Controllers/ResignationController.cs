using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ResignationController : ControllerBase
    {
        private readonly IResignationService _resignationService;

        public ResignationController(IResignationService resignationService)
        {
            _resignationService = resignationService;
        }

        [HttpGet("GetResignationDetailsByUserId/{userId:int}")]
        public async Task<ActionResult<ResignationDto>> GetResignationDetailsByUserId(int userId)
        {
            var resignation = await _resignationService.GetResignationDetailsByUserId(userId);

            //if (resignation is null)
            //    return NotFound(new { Message = "No resignation details found for this user." });

            return Ok(resignation);
        }

        [HttpPost("insertorupdate")]
        public async Task<IActionResult> InsertOrUpdate([FromForm] ResignationModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _resignationService.InsertOrUpdateResignationAsync(model);
                return Ok(new { message = "Resignation inserted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpDelete("delete/{id}/{loginId}")]
        public async Task<IActionResult> Delete(int id, int loginId)
        {
            try
            {
                await _resignationService.DeleteResignationAsync(id, loginId);
                return Ok(new { message = "Resignation deleted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        // GET: api/resignation/all/2
        [HttpGet("GetAllResignations/{userId}")]
        public async Task<IActionResult> GetAllResignations(int userId)
        {
            var result = await _resignationService.GetAllResignations(userId);

            //if (result == null || !result.Any())
            //    return NotFound("No resignations found.");

            return Ok(result);
        }
    }
}
