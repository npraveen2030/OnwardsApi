using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserLeaveAppliedRepository : IUserLeaveAppliedRepository
    {
        private readonly IConfiguration _configuration;

        public UserLeaveAppliedRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int userId)
        {
            try
            {
                var result = new List<UserLeaveAppliedDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var leave = new UserLeaveAppliedDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        LeaveTypeName = reader.GetString(reader.GetOrdinal("LeaveTypeName")),
                        NoOfDays = reader.GetDecimal(reader.GetOrdinal("NoOfDays")),
                        StartDate = reader.GetDateTime(reader.GetOrdinal("StartDate")),
                        EndDate = reader.GetDateTime(reader.GetOrdinal("EndDate")),
                        StatusName = reader.GetString(reader.GetOrdinal("Name"))
                    };
                    result.Add(leave);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching user applied leaves.", ex);
            }
        }

        public async Task InsertOrUpdateUserLeaveAppliedAsync(UserLeaveAppliedModel leave)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Pass all parameters defined in SP
                cmd.Parameters.AddWithValue("@Id", leave.Id ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", leave.LoginId);
                cmd.Parameters.AddWithValue("@UserId", leave.UserId);
                cmd.Parameters.AddWithValue("@LeaveTypeId", leave.LeaveTypeId);
                cmd.Parameters.AddWithValue("@Year", leave.Year);
                cmd.Parameters.AddWithValue("@StartDate", leave.StartDate);
                cmd.Parameters.AddWithValue("@EndDate", leave.EndDate);
                cmd.Parameters.AddWithValue("@Reason", (object?)leave.Reason ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@Action", (object?)leave.Action ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@FileName", (object?)leave.FileName ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@ContentType", (object?)leave.ContentType ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@Data", (object?)leave.Data ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LeaveStatusId", leave.LeaveStatusId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting or updating user leave application.", ex);
            }
        }
    }
}
