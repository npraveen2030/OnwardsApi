using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LeavesAddedController : ControllerBase
    {
        private readonly ILeavesAddedService _leavesAddedService;

        public LeavesAddedController(ILeavesAddedService leavesAddedService)
        {
            _leavesAddedService = leavesAddedService;
        }

        // POST: api/LeavesAdded/insert
        [HttpPost("insert")]
        public async Task<IActionResult> InsertLeavesAdded(LeavesAddedModel model)
        {
            try
            {
                await _leavesAddedService.InsertLeavesAddedAsync(model);
                return Ok(new { message = "Leaves added and balance updated successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
