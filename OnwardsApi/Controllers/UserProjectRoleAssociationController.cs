using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserProjectRoleAssociationController(IUserProjectRoleAssociationService _service) : ControllerBase
    {
        /// <summary>
        /// Insert a new User-Project-Role association
        /// </summary>
        [HttpPost("insert")]
        public async Task<IActionResult> Insert([FromBody] UserProjectRoleAssociationModel association)
        {
            var result = await _service.InsertUserProjectRoleAssociationAsync(association);

            return Ok(new
            {
                success = result.Success,
                message = result.Message
            });
        }

        /// <summary>
        /// Get all associations for a given project
        /// </summary>
        [HttpGet("get/{projectId}")]
        public async Task<IActionResult> Get([FromRoute] int projectId)
        {
            var associations = await _service.GetUserProjectRoleAssociationAsync(projectId);
            return Ok(associations ?? new List<UserProjectRoleAssociationDto>());
        }

        /// <summary>
        /// Delete (soft delete) an association
        /// </summary>
        [HttpDelete("delete/{id}/{loginId}")]
        public async Task<IActionResult> Delete([FromRoute] int id, [FromRoute] int loginId)
        {
            await _service.DeleteUserProjectRoleAssociationAsync(id, loginId);
            return Ok(new { message = "Association deleted successfully." });
        }
    }
}
