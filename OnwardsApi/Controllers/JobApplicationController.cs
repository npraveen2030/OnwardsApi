using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobApplicationController : ControllerBase
    {
        private readonly IJobApplicationService _service;

        public JobApplicationController(IJobApplicationService service)
        {
            _service = service;
        }

        /// <summary>
        /// Insert or update a job application.
        /// </summary>
        [HttpPost("insertorupdate")]
        public async Task<IActionResult> InsertOrUpdateJobApplication([FromBody] JobApplicationModel model)
        {
            var Inserted = await _service.InsertOrUpdateJobApplicationAsync(model);
            return Ok(Inserted);
        }

        /// <summary>
        /// Get all job applications for a specific user.
        /// </summary>
        [HttpGet("get")]
        public async Task<IActionResult> GetJobApplications(int userId)
        {
            var result = await _service.GetJobApplicationsAsync(userId);
            return Ok(result);
        }

        /// <summary>
        /// Delete (withdraw) a job application by Id.
        /// </summary>
        [HttpDelete("delete/{id}/{loginId}")]
        public async Task<IActionResult> DeleteJobApplication(int id, int loginId)
        {
            await _service.DeleteJobApplicationAsync(id, loginId);
            return Ok(new {message = "Job application withdrawn successfully." });
        }
    }
}
