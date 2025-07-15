using System.Data.SqlClient;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

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


    // GET: api/HolidayList/location/1
    [HttpGet("location/{locationId}")]
    public IActionResult GetByLocation(int locationId)
    {
      try
      {
        var holidays = _service.GetByLocation(locationId);
        return Ok(holidays);
      }
      catch (SqlException ex)
      {
        return StatusCode(400, new
        {
          status = 400,
          message = "Database error occurred while fetching holiday list.",
          dbError = ex.Message
        });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new
        {
          status = 500,
          message = "Unexpected error occurred while fetching holiday list.",
          error = ex.Message
        });
      }
    }

    // POST: api/HolidayList
    [HttpPost]
    public IActionResult Add([FromBody] HolidayListDto holiday)
    {
      try
      {
        _service.Add(holiday);
        return Ok(new { status = 200, message = "Holiday added successfully" });
      }
      catch (SqlException ex)
      {
        return StatusCode(400, new
        {
          status = 400,
          message = "Database error occurred while adding holiday.",
          dbError = ex.Message
        });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new
        {
          status = 500,
          message = "Unexpected error occurred while adding holiday.",
          error = ex.Message
        });
      }
    }

    // PUT: api/HolidayList/5
    [HttpPut("{id}")]
    public IActionResult Update(int id, [FromBody] HolidayListDto holiday)
    {
      if (id != holiday.HolidayId)
      {
        return BadRequest(new { status = 400, message = "Holiday ID mismatch." });
      }

      try
      {
        _service.Update(holiday);
        return Ok(new { status = 200, message = "Holiday updated successfully" });
      }
      catch (SqlException ex)
      {
        return StatusCode(400, new
        {
          status = 400,
          message = "Database error occurred while updating holiday.",
          dbError = ex.Message
        });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new
        {
          status = 500,
          message = "Unexpected error occurred while updating holiday.",
          error = ex.Message
        });
      }
    }

    // DELETE: api/HolidayList/5
    [HttpDelete("{id}")]
    public IActionResult Delete(int id)
    {
      try
      {
        _service.Delete(id);
        return Ok(new { status = 200, message = "Holiday deleted successfully" });
      }
      catch (SqlException ex)
      {
        return StatusCode(400, new
        {
          status = 400,
          message = "Database error occurred while deleting holiday.",
          dbError = ex.Message
        });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new
        {
          status = 500,
          message = "Unexpected error occurred while deleting holiday.",
          error = ex.Message
        });
      }
    }

  }
}
