using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class CourierRepository : ICourierRepository
    {
        private readonly IConfiguration _configuration;

        public CourierRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<CourierUserDto>> GetUsersForCourierAsync()
        {
            try
            {
                var result = new List<CourierUserDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUsersForCourier", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var user = new CourierUserDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        EmployeeCode = reader.GetString(reader.GetOrdinal("EmployeeCode")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        Mobile = reader.GetString(reader.GetOrdinal("Mobile"))
                    };

                    result.Add(user);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching active courier users.", ex);
            }
        }

        public async Task InsertOrUpdateCourierAsync(CourierDto courier)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateCouriers", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", (object?)courier.Id ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@UserId", courier.UserId);
                cmd.Parameters.AddWithValue("@Comments", courier.Comments ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@StatusId", courier.StatusId);
                cmd.Parameters.AddWithValue("@LoginId", courier.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting or updating courier record.", ex);
            }
        }
        public async Task<List<CourierListDto>> GetCouriersAsync()
        {
            try
            {
                var result = new List<CourierListDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetCouriers", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var courier = new CourierListDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        Comments = reader.IsDBNull(reader.GetOrdinal("Comments"))
                            ? null
                            : reader.GetString(reader.GetOrdinal("Comments")),
                        StatusId = reader.GetInt32(reader.GetOrdinal("StatusId")),
                        Status = reader.GetString(reader.GetOrdinal("Status"))
                    };

                    result.Add(courier);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching couriers.", ex);
            }
        }

    }

}
