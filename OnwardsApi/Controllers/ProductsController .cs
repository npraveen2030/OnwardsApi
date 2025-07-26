using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace OnwardsApi.Controllers.v1
{
    [ApiController]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class ProductsController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get() => Ok("This is Products V1");
    }
}
