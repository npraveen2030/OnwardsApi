using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;

namespace OnwardsDAL.Repository
{
  public class UserShiftDetailsRepository: IUserShiftDetailsRepository
  {
    private readonly IConfiguration _config;

    public UserShiftDetailsRepository(IConfiguration config)
    {
      _config = config;
    }
    public UserShiftLogDto GetUserShiftDetails(int userId)
    {
      try
      {
        var connectionString = _config.GetConnectionString("DefaultConnection");

        using var connection = new SqlConnection(connectionString);
        connection.Open();

        using var command = new SqlCommand("Onwards.GetUserShiftDetails", connection)
        {
          CommandType = CommandType.StoredProcedure
        };

        command.Parameters.AddWithValue("@UserId", userId);

        using var reader = command.ExecuteReader();

        if (reader.Read())
        {
          return new UserShiftLogDto
          {
            TodayDate = reader["TodayDate"]?.ToString(),
            ShiftStartTime = reader["ShiftStartTime"]?.ToString(),
            LoginTime = reader["LoginTime"]?.ToString(),
            LogOutTime = reader["LogOutTime"]?.ToString(),
            TotalLoggedInHours = reader["TotalLoggedInHours"]?.ToString(),
          };
        }

        return null;
      }
      catch (SqlException ex)
      {
        // Rethrow to the controller or log it
        throw new ApplicationException(ex.Message);
      }
    }

    public int InsertOrUpdateUserShiftDetails(int userId)
    {
      var connectionString = _config.GetConnectionString("DefaultConnection");

      using var connection = new SqlConnection(connectionString);
      connection.Open();

      using var command = new SqlCommand("Onwards.InsertOrUpdateUserShiftDetails", connection)
      {
        CommandType = CommandType.StoredProcedure
      };

      command.Parameters.AddWithValue("@UserId", userId);

      var outputParam = new SqlParameter("@ResultLogId", SqlDbType.Int)
      {
        Direction = ParameterDirection.Output
      };

      command.Parameters.Add(outputParam);

      try
      {
        command.ExecuteNonQuery();
        return (int)outputParam.Value;
      }
      catch (SqlException ex)
      {
        // Catch RAISERROR or other SQL issues
        throw new ApplicationException(ex.Message, ex);
      }
    }
  }
}
