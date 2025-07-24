using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ResignationReasonController : ControllerBase
    {
        private readonly IResignationReasonService _resignationreasonService;

        public ResignationReasonController(IResignationReasonService resignationreasonService)
        {
            _resignationreasonService = resignationreasonService;
        }

        [HttpPost("insert")]
        public async Task<IActionResult> Insert(ResignationReasonModel model)
        {
            try
            {
                await _resignationreasonService.InsertResignationReasonAsync(model);
                return Ok(new { message = "ResignationReason inserted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update(ResignationReasonModel model)
        {
            try
            {
                await _resignationreasonService.UpdateResignationReasonAsync(model);
                return Ok(new { message = "ResignationReason updated successfully." });
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
                await _resignationreasonService.DeleteResignationReasonAsync(id, loginId);
                return Ok(new { message = "ResignationReason deleted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
