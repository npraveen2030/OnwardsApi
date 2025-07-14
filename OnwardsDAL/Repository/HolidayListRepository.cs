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
  public class HolidayListRepository : IHolidayListRepository
  {
    private readonly IConfiguration _config;
    public HolidayListRepository(IConfiguration config)
    {
      _config = config;
    }

    private SqlConnection GetConn() =>
        new SqlConnection(_config.GetConnectionString("DefaultConnection"));

    public IEnumerable<HolidayListDto> GetByLocation(int locationId)
    {
      var list = new List<HolidayListDto>();
      using var conn = GetConn();
      conn.Open();
      using var cmd = new SqlCommand("Onwards.sp_GetHolidaysByLocation", conn)
      {
        CommandType = CommandType.StoredProcedure
      };
      cmd.Parameters.AddWithValue("@LocationId", locationId);
      using var reader = cmd.ExecuteReader();
      while (reader.Read())
      {
        list.Add(new HolidayListDto
        {
          HolidayId = Convert.ToInt32(reader["HolidayId"]),
          HolidayName = reader["HolidayName"].ToString(),
          HolidayDate = Convert.ToDateTime(reader["HolidayDate"]),
          LocationId = Convert.ToInt32(reader["LocationId"]),
          Year = Convert.ToInt32(reader["Year"]),
          CreatedBy = reader["CreatedBy"]?.ToString(),
          ModifiedBy = reader["ModifiedBy"]?.ToString(),
          CreatedDate = reader["CreatedDate"] as DateTime?,
          ModifiedDate = reader["ModifiedDate"] as DateTime?,
          IsActive = Convert.ToBoolean(reader["IsActive"])
        });
      }
      return list;
    }

    public void Add(HolidayListDto h)
    {
      using var conn = GetConn();
      conn.Open();
      using var cmd = new SqlCommand("Onwards.sp_InsertHoliday", conn)
      {
        CommandType = CommandType.StoredProcedure
      };
      cmd.Parameters.AddWithValue("@HolidayName", h.HolidayName);
      cmd.Parameters.AddWithValue("@HolidayDate", h.HolidayDate);
      cmd.Parameters.AddWithValue("@LocationId", h.LocationId);
      cmd.Parameters.AddWithValue("@Year", h.Year);
      cmd.Parameters.AddWithValue("@CreatedBy", h.CreatedBy ?? "System");
      cmd.ExecuteNonQuery();
    }

    public void Update(HolidayListDto h)
    {
      using var conn = GetConn();
      conn.Open();
      using var cmd = new SqlCommand("Onwards.sp_UpdateHoliday", conn)
      {
        CommandType = CommandType.StoredProcedure
      };
      cmd.Parameters.AddWithValue("@HolidayId", h.HolidayId);
      cmd.Parameters.AddWithValue("@HolidayName", h.HolidayName);
      cmd.Parameters.AddWithValue("@HolidayDate", h.HolidayDate);
      cmd.Parameters.AddWithValue("@LocationId", h.LocationId);
      cmd.Parameters.AddWithValue("@Year", h.Year);
      cmd.Parameters.AddWithValue("@ModifiedBy", h.ModifiedBy ?? "System");
      cmd.ExecuteNonQuery();
    }

    public void Delete(int id)
    {
      using var conn = GetConn();
      conn.Open();
      using var cmd = new SqlCommand("Onwards.sp_DeleteHoliday", conn)
      {
        CommandType = CommandType.StoredProcedure
      };
      cmd.Parameters.AddWithValue("@HolidayId", id);
      cmd.ExecuteNonQuery();
    }
  }


}
