using Microsoft.AspNetCore.Mvc;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonalDetailsController : ControllerBase
    {
        [HttpPost]
        public IActionResult AddPersonalDetails(PersonalDetailsDto details)
        {
            
            return Ok("Details Added.");
        }
    }
}
