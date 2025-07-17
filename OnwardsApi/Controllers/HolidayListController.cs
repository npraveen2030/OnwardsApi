using System.Data.SqlClient;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsApi.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class HolidayListController : ControllerBase
  {
    private readonly IHolidayListService _service;

    public HolidayListController(IHolidayListService service)
    {
      _service = service;
    }


        //// GET: api/HolidayList/location/1
        //[HttpGet("location/{locationId}")]
        //public IActionResult GetByLocation(int locationId)
        //{
        //  try
        //  {
        //    var holidays = _service.GetByLocation(locationId);
        //    return Ok(holidays);
        //  }
        //  catch (SqlException ex)
        //  {
        //    return StatusCode(400, new
        //    {
        //      status = 400,
        //      message = "Database error occurred while fetching holiday list.",
        //      dbError = ex.Message
        //    });
        //  }
        //  catch (Exception ex)
        //  {
        //    return StatusCode(500, new
        //    {
        //      status = 500,
        //      message = "Unexpected error occurred while fetching holiday list.",
        //      error = ex.Message
        //    });
        //  }
        //}

        //// POST: api/HolidayList
        //[HttpPost]
        //public IActionResult InsertOrUpdateHoliday([FromBody] HolidayListDto holiday)
        //{
        //  try
        //  {
        //    _service.Add(holiday);
        //    return Ok(new { status = 200, message = "Holiday added successfully" });
        //  }
        //  catch (SqlException ex)
        //  {
        //    return StatusCode(400, new
        //    {
        //      status = 400,
        //      message = "Database error occurred while adding holiday.",
        //      dbError = ex.Message
        //    });
        //  }
        //  catch (Exception ex)
        //  {
        //    return StatusCode(500, new
        //    {
        //      status = 500,
        //      message = "Unexpected error occurred while adding holiday.",
        //      error = ex.Message
        //    });
        //  }
        //}

        //// PUT: api/HolidayList/5
        //[HttpPut("{id}")]
        //public IActionResult Update(int id, [FromBody] HolidayListDto holiday)
        //{
        //  if (id != holiday.HolidayId)
        //  {
        //    return BadRequest(new { status = 400, message = "Holiday ID mismatch." });
        //  }

        //  try
        //  {
        //    _service.Update(holiday);
        //    return Ok(new { status = 200, message = "Holiday updated successfully" });
        //  }
        //  catch (SqlException ex)
        //  {
        //    return StatusCode(400, new
        //    {
        //      status = 400,
        //      message = "Database error occurred while updating holiday.",
        //      dbError = ex.Message
        //    });
        //  }
        //  catch (Exception ex)
        //  {
        //    return StatusCode(500, new
        //    {
        //      status = 500,
        //      message = "Unexpected error occurred while updating holiday.",
        //      error = ex.Message
        //    });
        //  }
        //}

        //// DELETE: api/HolidayList/5
        //[HttpDelete("{id}")]
        //public IActionResult Delete(int id)
        //{
        //  try
        //  {
        //    _service.Delete(id);
        //    return Ok(new { status = 200, message = "Holiday deleted successfully" });
        //  }
        //  catch (SqlException ex)
        //  {
        //    return StatusCode(400, new
        //    {
        //      status = 400,
        //      message = "Database error occurred while deleting holiday.",
        //      dbError = ex.Message
        //    });
        //  }
        //  catch (Exception ex)
        //  {
        //    return StatusCode(500, new
        //    {
        //      status = 500,
        //      message = "Unexpected error occurred while deleting holiday.",
        //      error = ex.Message
        //    });
        //  }
        //}

        [HttpGet]
        public async Task<IActionResult> GetAllHolidays()
        {
            try
            {
                var holidays = await _service.GetAllHolidays();
                return Ok(holidays);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetHolidayById(int id)
        {
            try
            {
                var holiday = await _service.GetHolidayById(id);
                if (holiday == null)
                    return NotFound($"Holiday with ID {id} not found.");

                return Ok(holiday);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }

        [HttpGet("location/{locationId}")]
        public async Task<IActionResult> GetHolidayByLocationId(int locationId)
        {
            try
            {
                var holidays = await _service.GetHolidayByLocationId(locationId);
                return Ok(holidays);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }

        [HttpPost]
        public async Task<IActionResult> InsertOrUpdateHoliday([FromBody] HolidayListModel holiday)
        {
            try
            {
                if (holiday == null)
                    return BadRequest("Holiday data is null.");

                await _service.InsertOrUpdateHoliday(holiday);
                return Ok("Holiday inserted or updated successfully.");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteHoliday(int id)
        {
            try
            {
                await _service.DeleteHoliday(id);
                return Ok($"Holiday with ID {id} deleted successfully.");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }

    }
}
