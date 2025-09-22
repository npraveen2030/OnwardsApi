using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SavedSearchController : ControllerBase
    {
        private readonly ISavedSearchService _service;

        public SavedSearchController(ISavedSearchService service)
        {
            _service = service;
        }

        /// <summary>
        /// Insert or update a saved search.
        /// Returns true if the search name is unique.
        /// </summary>
        [HttpPost("insertorupdate")]
        public async Task<IActionResult> InsertOrUpdateSavedSearch([FromBody] SavedSearchModel model)
        {
            var isUnique = await _service.InsertOrUpdateSavedSearchAsync(model);
            return Ok(new { IsUnique = isUnique });
        }

        /// <summary>
        /// Get all active saved searches.
        /// </summary>
        [HttpGet("getall")]
        public async Task<IActionResult> GetAllSavedSearch([FromQuery] int UserId)
        {
            var result = await _service.GetAllSavedSearchAsync(UserId);
            return Ok(result);
        }

        /// <summary>
        /// Delete a saved search by Id.
        /// </summary>
        [HttpDelete("delete/{id}")]
        public async Task<IActionResult> DeleteSavedSearch(int id)
        {
            await _service.DeleteSavedSearchAsync(id);
            return Ok(new { message = "Saved search deleted successfully." });
        }
    }
}
