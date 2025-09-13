using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReimbursementController : ControllerBase
    {
        private readonly IReimbursementService _service;

        public ReimbursementController(IReimbursementService service)
        {
            _service = service;
        }

        [HttpPost("insertorupdate")]
        public async Task<IActionResult> Add([FromBody] ReimbursementModel model)
        {
            await _service.InsertOrUpdateReimbursementAsync(model);
            return Ok("Reimbursement inserted Or Updated successfully.");
        }

        [HttpGet("get")]
        public async Task<IActionResult> Get(int UserId , int StatusId)
        {
            var result = await _service.GetReimbursementsByIdAsync(UserId, StatusId);
            return Ok(result);
        }

        //[HttpPut("update")]
        //public async Task<IActionResult> Update([FromBody] ReimbursementModel model)
        //{
        //    await _service.UpdateAsync(model);
        //    return Ok("Reimbursement updated successfully.");
        //}

        [HttpDelete("delete/{id}/{loginId}")]
        public async Task<IActionResult> Delete(int id, int loginId)
        {
            await _service.DeleteAsync(id, loginId);
            return Ok("Reimbursement deleted successfully.");
        }
    }
}
