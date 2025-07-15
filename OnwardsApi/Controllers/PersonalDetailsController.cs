using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonalDetailsController : ControllerBase
    {
        private readonly IPersonalDetailsService _personalDetailsService;
        public PersonalDetailsController(IPersonalDetailsService personalDetailsService)
        { 
            _personalDetailsService = personalDetailsService;
        }
        [HttpPost]
        public async Task<IActionResult> AddPersonalDetails(PersonalDetailsDto details)
        {
            try
            {
                await _personalDetailsService.AddOrUpdatePersonalDetails(details);
                return Ok(new { message = "Details saved successfully." });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }
    }
}
