using System.Data.SqlClient;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class TrainingController : ControllerBase
  {
    private readonly ITrainingService _service;

    public TrainingController(ITrainingService service)
    {
      _service = service;
    }

    /// <summary>
    /// Get all training records for a specific location.
    /// </summary>
    /// <param name="locationId">The ID of the location.</param>
    /// <returns>List of trainings.</returns> 
    [HttpGet("location/{locationId}")]
    public IActionResult GetByLocation(int locationId)
    {
      try
      {
        var data = _service.GetByLocation(locationId);
        return Ok(data);
      }
      catch (SqlException ex)
      {
        return BadRequest(new { message = "DB error while fetching training.", dbError = ex.Message });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new { message = "Unexpected error.", error = ex.Message });
      }
    }

    /// <summary>
    /// Add a new training session.
    /// </summary>
    /// <param name="model">Training model to add.</param>
    [HttpPost]
    public IActionResult Add([FromBody] TrainingDto model)
    {
      try
      {
        _service.Add(model);
        return Ok(new { message = "Training added successfully" });
      }
      catch (SqlException ex)
      {
        return BadRequest(new { message = "DB error while inserting.", dbError = ex.Message });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new { message = "Unexpected error.", error = ex.Message });
      }
    }

    /// <summary>
    /// Update existing training details.
    /// </summary>
    /// <param name="id">Training ID.</param>
    /// <param name="model">Updated training model.</param>
    /// <returns>Status message.</returns>
    [HttpPut("{id}")]
    public IActionResult Update(int id, [FromBody] TrainingDto model)
    {
      if (id != model.Id)
        return BadRequest(new { message = "ID mismatch" });

      try
      {
        _service.Update(model);
        return Ok(new { message = "Training updated successfully" });
      }
      catch (SqlException ex)
      {
        return BadRequest(new { message = "DB error while updating.", dbError = ex.Message });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new { message = "Unexpected error.", error = ex.Message });
      }
    }

    /// <summary>
    /// Delete a training record by ID.
    /// </summary>
    /// <param name="id">Training ID.</param>
    /// <returns>Status message.</returns>
    [HttpDelete("{id}")]
    public IActionResult Delete(int id)
    {
      try
      {
        _service.Delete(id);
        return Ok(new { message = "Training deleted successfully" });
      }
      catch (SqlException ex)
      {
        return BadRequest(new { message = "DB error while deleting.", dbError = ex.Message });
      }
      catch (Exception ex)
      {
        return StatusCode(500, new { message = "Unexpected error.", error = ex.Message });
      }
    }
  }
}
