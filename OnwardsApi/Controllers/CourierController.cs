using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CourierController : ControllerBase
    {
        private readonly ICourierService _courierService;

        public CourierController(ICourierService courierService)
        {
            _courierService = courierService;
        }

        [HttpGet("getusersforcourier")]
        public async Task<IActionResult> GetUsersForCourier()
        {
            try
            {
                var users = await _courierService.GetUsersForCourierAsync();
                return Ok(users);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }

        [HttpPost("insert-or-update")]
        public async Task<IActionResult> InsertOrUpdateCourier([FromBody] CourierDto courier)
        {
            try
            {
                 await _courierService.InsertOrUpdateCourierAsync(courier);
                
                    return Ok();

            }
            catch (Exception ex)
            {
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("getcouriers")]
        public async Task<IActionResult> GetCouriers()
        {
            try
            {
                var couriers = await _courierService.GetCouriersAsync();
                return Ok(couriers);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = ex.Message });
            }
        }
    }

}
