using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class LeavesAddedRepository : ILeavesAddedRepository
    {
        private readonly IConfiguration _configuration;

        public LeavesAddedRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task InsertLeavesAddedAsync(LeavesAddedModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertLeavesAdded", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", model.UserId);
                cmd.Parameters.AddWithValue("@LeaveTypeId", model.LeaveTypeId);
                cmd.Parameters.AddWithValue("@NoOfLeaves", model.NoOfLeaves);
                cmd.Parameters.AddWithValue("@LoginId", model.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting leaves added entry.", ex);
            }
        }
    }
}
