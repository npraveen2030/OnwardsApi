using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using System.Data;

namespace OnwardsDAL.Repository
{
    public class DailyTaskRepository : IDailyTaskRepository
    {
        private readonly IConfiguration _configuration;

        public DailyTaskRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task RunAbsentCheckAsync(int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.AbsentCheck", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex)
            {
                throw new Exception("Database error occurred while running AbsentCheck procedure.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Unexpected error occurred while executing AbsentCheck.", ex);
            }
        }

    }
}
