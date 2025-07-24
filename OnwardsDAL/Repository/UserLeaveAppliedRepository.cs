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
        public async Task InsertUserLeaveAppliedAsync(UserLeaveAppliedModel leave)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@LoginId", leave.LoginId); 
                cmd.Parameters.AddWithValue("@UserId", leave.UserId);
                cmd.Parameters.AddWithValue("@LeaveTypeId", leave.LeaveTypeId);
                cmd.Parameters.AddWithValue("@Year", leave.Year);
                cmd.Parameters.AddWithValue("@StartDate", leave.StartDate);
                cmd.Parameters.AddWithValue("@EndDate", leave.EndDate);
                cmd.Parameters.AddWithValue("@Reason", leave.Reason ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@LeaveStatusId", leave.LeaveStatusId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting user leave application.", ex);
            }
        }

        public async Task UpdateUserLeaveAppliedAsync(UserLeaveAppliedUpdateModel Modification)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", Modification.Id);
                cmd.Parameters.AddWithValue("@LoginId", Modification.LoginId);
                cmd.Parameters.AddWithValue("@LeaveStatusId", Modification.LeaveStatusId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating user leave application.", ex);
            }
        }

    }
}
