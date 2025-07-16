using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BasicDetailsController : ControllerBase
    {
        private readonly IBasicDetailsService _basicDetailsService;
        public BasicDetailsController(IBasicDetailsService basicDetailsService)
        {
            _basicDetailsService = basicDetailsService;
        }
        [HttpPost]
        public async Task<IActionResult> AddPersonalDetails(BasicDetailsreqDto details)
        {
            try
            {
                await _basicDetailsService.AddOrUpdateBasicDetailsAsync(details);
                return Ok(new { message = "Details saved successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
