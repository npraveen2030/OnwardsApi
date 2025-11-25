using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SchedulerSkillsController : ControllerBase
    {
        private readonly ISchedulerSkillsService _schedulerSkillsService;

        public SchedulerSkillsController(ISchedulerSkillsService schedulerSkillsService)
        {
            _schedulerSkillsService = schedulerSkillsService;
        }

        [HttpPost("getschedulersbyskills")]
        public async Task<IActionResult> GetSchedulersBySkills([FromBody] List<string> skills)
        {
            try
            {
                var schedulers = await _schedulerSkillsService.GetSchedulersBySkillsAsync(skills);
                return Ok(schedulers);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
