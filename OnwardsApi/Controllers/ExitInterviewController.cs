using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
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

        [HttpGet("get")]
        public async Task<IActionResult> GetExitInterview()
        {
            try
            {
                var questions = await _exitInterviewService.GetExitInterview();
                return Ok(new { questions });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPost("insert")]
        public async Task<IActionResult> InsertOrUpdateExitInterview(List<AdminExitInterviewModel> Questions)
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

        [HttpPost("insertorupdateanswers")]
        public async Task<IActionResult> InsertOrUpdateUserExitInterview(List<UserExitInterviewModel> Answers)
        {
            try
            {
                await _exitInterviewService.InsertOrUpdateUserExitInterviewAsync(Answers);
                return Ok(new { message = "Inserted Or Updated successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("getanswers")]
        public async Task<IActionResult> GetUserExitInterview(int UserId)
        {
            try
            {
                var answers = await _exitInterviewService.GetUserExitInterviewAsync(UserId);
                return Ok(answers);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

    }
}
