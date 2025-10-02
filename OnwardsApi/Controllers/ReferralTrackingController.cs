using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReferralTrackingController (IReferralTrackingService _service) : ControllerBase
    {
        [HttpPost("insert")]
        public async Task<IActionResult> Insert([FromForm] ReferralTrackingModel referral)
        {
            await _service.InsertReferralTrackingAsync(referral);
            return Ok(new {message = "Referral inserted successfully." });
        }

        [HttpGet("get/{id}")]
        public async Task<IActionResult> Get([FromRoute] int id)
        {
            var result = await _service.GetReferralTrackingAsync(id);
            return Ok(result);
        }

        [HttpGet("getdocument/{id}")]
        public async Task<IActionResult> GetReferralDocument([FromRoute] int id)
        {
            var document = await _service.GetReferralTrackingDocumentAsync(id);

            if (document == null)
                return NotFound();

            return File(document.FileData, document.FileType, document.FileName);
        }

        [HttpDelete("delete/{id}")]
        public async Task<IActionResult> Delete([FromRoute] int id)
        {
            await _service.DeleteReferralTrackingAsync(id);
            return Ok(new { message = "Referral deleted successfully." });
        }
    }
}

