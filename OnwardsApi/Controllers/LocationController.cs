using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LocationController : ControllerBase
    {
        private readonly ILocationService _locationService;

        public LocationController(ILocationService locationService)
        {
            _locationService = locationService;
        }

        [HttpPost]
        public IActionResult Insert([FromBody] LocationModel location)
        {
            _locationService.Insert(location);
            return Ok();
        }

        [HttpPut]
        public IActionResult Update([FromBody] LocationModel location)
        {
            _locationService.Update(location);
            return Ok();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _locationService.Delete(id);
            return Ok();
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            var location = _locationService.GetLocationById(id);
            if (location == null)
                return NotFound();
            return Ok(location);
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            List<LocationModel> locations = _locationService.GetLocations();
            return Ok(locations);
        }
    }
}
