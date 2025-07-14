using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsDAL.Repository
{
  public class TrainingRepository : ITrainingRepository
  {
    private readonly IConfiguration _config;

    public TrainingRepository(IConfiguration config)
    {
      _config = config;
    }

    public void Add(TrainingDto model)
    {
      using var conn = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
      using var cmd = new SqlCommand("Onwards.InsertTraining", conn) { CommandType = CommandType.StoredProcedure };

      cmd.Parameters.AddWithValue("@Name", model.Name);
      cmd.Parameters.AddWithValue("@TrainingDate", model.TrainingDate);
      cmd.Parameters.AddWithValue("@LocationId", model.LocationId);
      cmd.Parameters.AddWithValue("@CreatedBy", model.CreatedBy);

      conn.Open();
      cmd.ExecuteNonQuery();
    }

    public void Update(TrainingDto model)
    {
      using var conn = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
      using var cmd = new SqlCommand("Onwards.UpdateTraining", conn) { CommandType = CommandType.StoredProcedure };

      cmd.Parameters.AddWithValue("@Id", model.Id);
      cmd.Parameters.AddWithValue("@Name", model.Name);
      cmd.Parameters.AddWithValue("@TrainingDate", model.TrainingDate);
      cmd.Parameters.AddWithValue("@LocationId", model.LocationId);
      cmd.Parameters.AddWithValue("@ModifiedBy", model.ModifiedBy);

      conn.Open();
      cmd.ExecuteNonQuery();
    }

    public void Delete(int id)
    {
      using var conn = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
      using var cmd = new SqlCommand("Onwards.DeleteTraining", conn) { CommandType = CommandType.StoredProcedure };

      cmd.Parameters.AddWithValue("@Id", id);

      conn.Open();
      cmd.ExecuteNonQuery();
    }

    public List<TrainingDto> GetByLocation(int locationId)
    {
      var trainings = new List<TrainingDto>();
      using var conn = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
      using var cmd = new SqlCommand("Onwards.GetTrainingByLocation", conn) { CommandType = CommandType.StoredProcedure };

      cmd.Parameters.AddWithValue("@LocationId", locationId);

      conn.Open();
      using var reader = cmd.ExecuteReader();
      while (reader.Read())
      {
        trainings.Add(new TrainingDto
        {
          Id = Convert.ToInt32(reader["Id"]),
          Name = reader["Name"].ToString(),
          TrainingDate = Convert.ToDateTime(reader["TrainingDate"]),
          LocationId = Convert.ToInt32(reader["LocationId"]),
          IsActive = Convert.ToBoolean(reader["IsActive"])
        });
      }
      return trainings;
    }
  }

}
