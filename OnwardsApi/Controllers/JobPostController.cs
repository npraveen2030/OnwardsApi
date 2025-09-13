using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobPostController : ControllerBase
    {
        private readonly IJobPostService _service;

        public JobPostController(IJobPostService service)
        {
            _service = service;
        }

        [HttpGet("getskills")]
        public async Task<IActionResult> GetSkills()
        {
            var result = await _service.GetSkillsAsync();
            return Ok(result);
        }
    }
}
