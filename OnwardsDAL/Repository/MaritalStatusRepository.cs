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
    public class MaritalStatusRepository : IMaritalStatusRepository
    {
        private readonly IConfiguration _config;
        public MaritalStatusRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() => new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateMaritalStatusAsync(MaritalStatus maritalStatus)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateMaritalStatus", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", maritalStatus.UserId);
                cmd.Parameters.AddWithValue("@MaritalStatus", maritalStatus.Status);
                cmd.Parameters.AddWithValue("@TitleId", maritalStatus.TitleId);
                cmd.Parameters.AddWithValue("@Name", maritalStatus.Name);
                cmd.Parameters.AddWithValue("@IsHavingChildrens", maritalStatus.IsHavingChildren);
                cmd.Parameters.AddWithValue("@LoginId", maritalStatus.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating marital status.", ex);
            }
        }
    }
}
