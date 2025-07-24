using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsBLL.Service;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ExitInterviewController :  ControllerBase
    {
        private readonly IExitInterviewService _exitInterviewService;

        public ExitInterviewController(IExitInterviewService exitInterviewService)
        {
            _exitInterviewService = exitInterviewService;
        }

        [HttpPost("insert")]
        public async Task<IActionResult> InsertExitInterview(AdminExitInterviewModel Questions)
        {
            try
            {
                await _exitInterviewService.InsertExitInterview(Questions);
                return Ok(new { message = "Inserted successfully."});
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
