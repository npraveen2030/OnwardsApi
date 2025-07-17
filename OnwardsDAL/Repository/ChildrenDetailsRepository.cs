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
    public class ChildrenDetailsRepository : IChildrenDetailsRepository
    {
        private readonly IConfiguration _config;
        public ChildrenDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() => new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateChildAsync(List<ChildrenDetailModel> children)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                foreach (var child in children)
                {
                    await using var cmd = new SqlCommand("Onwards.InsertOrUpdateChildrenDetails", conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@UserId", child.UserId);
                    cmd.Parameters.AddWithValue("@ChildName", child.ChildName);
                    cmd.Parameters.AddWithValue("@GenderId", child.GenderId);
                    cmd.Parameters.AddWithValue("@DateOfBirth", (object?)child.DateOfBirth ?? DBNull.Value);
                    cmd.Parameters.AddWithValue("@LoginId", child.LoginId);

                    await cmd.ExecuteNonQueryAsync();
                } 
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating child details.", ex);
            }
        }
    }
}
