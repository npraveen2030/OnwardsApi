using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class AdminScheduleRepository : IAdminScheduleRepository
    {
        private readonly IConfiguration _configuration;

        public AdminScheduleRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<AdminScheduleDto>> GetAdminScheduleAsync()
        {
            try
            {
                var result = new List<AdminScheduleDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAdminSchedule", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    result.Add(new AdminScheduleDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        CompanyId = reader.GetInt32(reader.GetOrdinal("CompanyId")),
                        CompanyName = reader.GetString(reader.GetOrdinal("CompanyName")),
                        NoOfDays = reader.GetInt32(reader.GetOrdinal("NoOfDays")),
                        UserScheduleHoliday = reader.GetBoolean(reader.GetOrdinal("UserScheduleHoliday")),
                        UserScheduleWeekOff = reader.GetBoolean(reader.GetOrdinal("UserScheduleWeekOff"))
                    });
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error fetching admin schedule.", ex);
            }
        }

        public async Task InsertOrUpdateAdminScheduleAsync(AdminScheduleModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateAdminSchedule", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", (object?)model.Id ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@CompanyId", model.CompanyId);
                cmd.Parameters.AddWithValue("@NoOfDays", model.NoOfDays);
                cmd.Parameters.AddWithValue("@UserScheduleHoliday", model.UserScheduleHoliday);
                cmd.Parameters.AddWithValue("@UserScheduleWeekOff", model.UserScheduleWeekOff);
                cmd.Parameters.AddWithValue("@LoginId", model.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error saving admin schedule.", ex);
            }
        }

        public async Task DeleteAdminScheduleAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteAdminSchedule", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error deleting admin schedule.", ex);
            }
        }

        public async Task<List<CompanyDto>> GetCompaniesForAdminScheduleAsync()
        {
            try
            {
                var companies = new List<CompanyDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetCompaniesForAdminSchedule", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    companies.Add(new CompanyDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        CompanyName = reader.GetString(reader.GetOrdinal("CompanyName"))
                    });
                }

                return companies;
            }
            catch (Exception ex)
            {
                throw new Exception("Error fetching company list for admin schedule.", ex);
            }
        }
    }

}
