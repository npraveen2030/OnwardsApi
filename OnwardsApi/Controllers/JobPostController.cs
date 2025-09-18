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

        [HttpGet("getroles")]
        public async Task<IActionResult> GetRoles()
        {
            var result = await _service.GetRolesAsync();
            return Ok(result);
        }

        [HttpGet("getprojects")]
        public async Task<IActionResult> GetProjects()
        {
            var result = await _service.GetProjectsAsync();
            return Ok(result);
        }

        [HttpGet("getusers")]
        public async Task<IActionResult> GetUsers()
        {
            var result = await _service.GetUsersAsync();
            return Ok(result);
        }

        [HttpGet("getcompanies")]
        public async Task<IActionResult> GetCompanies()
        {
            var result = await _service.GetCompaniesAsync();
            return Ok(result);
        }
    }
}
