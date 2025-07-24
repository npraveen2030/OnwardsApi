using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ResignationTypeController : ControllerBase
    {
        private readonly IResignationTypeService _resignationtypeService;

        public ResignationTypeController(IResignationTypeService resignationtypeService)
        {
            _resignationtypeService = resignationtypeService;
        }

        [HttpPost("insert")]
        public async Task<IActionResult> Insert(ResignationTypeModel model)
        {
            try
            {
                await _resignationtypeService.InsertResignationTypeAsync(model);
                return Ok(new { message = "ResignationType inserted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update(ResignationTypeModel model)
        {
            try
            {
                await _resignationtypeService.UpdateResignationTypeAsync(model);
                return Ok(new { message = "ResignationType updated successfully." });
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
                await _resignationtypeService.DeleteResignationTypeAsync(id, loginId);
                return Ok(new { message = "ResignationType deleted successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
