using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
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

        [HttpPost("insert")]
        public async Task<IActionResult> Insert(ResignationModel model)
        {
            try
            {
                await _resignationService.InsertResignationAsync(model);
                return Ok(new { message = "Resignation inserted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update(ResignationModel model)
        {
            try
            {
                await _resignationService.UpdateResignationAsync(model);
                return Ok(new { message = "Resignation updated successfully." });
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
    }
}
