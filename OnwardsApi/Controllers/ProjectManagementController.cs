using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsBLL.Service;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjectManagementController(IProjectManagementService _service) : ControllerBase
    {
        /// <summary>
        /// Insert or Update a Project
        /// </summary>
        [HttpPost("insertOrUpdate")]
        public async Task<IActionResult> InsertOrUpdate([FromBody] ProjectManagementModel project)
        {
            var result = await _service.InsertOrUpdateProjectAsync(project);

            return Ok(new
            {
                success = result.Success,
                message = result.Message
            });
        }

        /// <summary>
        /// Get all active projects
        /// </summary>
        [HttpGet("get")]
        public async Task<IActionResult> Get()
        {
            var projects = await _service.GetProjectsAsync();
            return Ok(projects ?? new List<ProjectManagementDto>());
        }

        /// <summary>
        /// Delete (soft delete) a project
        /// </summary>
        [HttpDelete("delete/{id}/{loginId}")]
        public async Task<IActionResult> Delete([FromRoute] int id, [FromRoute] int loginId)
        {
            var result = await _service.DeleteProjectAsync(id, loginId);

            return Ok(new
            {
                success = result.Success,
                message = result.Message
            });
        }
    }
}
