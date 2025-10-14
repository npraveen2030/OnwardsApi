using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System.Data;


namespace OnwardsDAL.Repository
{
    public class AttendanceRegularizationRepository : IAttendanceRegularizationRepository
    {
        private readonly IConfiguration _config;

        public AttendanceRegularizationRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertAttendanceRegularization", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Add parameters
                cmd.Parameters.AddWithValue("@UserId", regularization.UserId);
                cmd.Parameters.AddWithValue("@TypeId", regularization.TypeId);
                cmd.Parameters.AddWithValue("@StartDate", regularization.StartDate);
                cmd.Parameters.AddWithValue("@EndDate", regularization.EndDate);
                cmd.Parameters.AddWithValue("@Duration", regularization.Duration);
                cmd.Parameters.AddWithValue("@Reason", (object?)regularization.Reason ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", regularization.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex) when (ex.Message.Contains("Cant be more than 30 days from today"))
            {
                throw new InvalidOperationException("You can only regularize attendance within 30 days from today.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting attendance regularization request.", ex);
            }
        }
        public async Task UpdateAttendanceRegularizationAsync(AttendanceRegularizationUpdateModel regularization)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateAttendanceRegularization", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Parameters - must match the stored procedure exactly
                cmd.Parameters.AddWithValue("@Id", regularization.Id);
                cmd.Parameters.AddWithValue("@UserId", regularization.UserId);
                cmd.Parameters.AddWithValue("@StartDate", regularization.StartDate.Date);
                cmd.Parameters.AddWithValue("@EndDate", regularization.EndDate.Date);
                cmd.Parameters.AddWithValue("@Action", (object?)regularization.Action ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@StatusId", regularization.StatusId);
                cmd.Parameters.AddWithValue("@LoginId", regularization.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while updating attendance regularization.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating attendance regularization.", ex);
            }
        }


    }
}

