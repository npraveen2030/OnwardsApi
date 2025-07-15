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
    public class ComplianceRepository : IComplianceRepository
    {
        private readonly IConfiguration _config;

        public ComplianceRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateUserComplianceAsync(Compliance compliance)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserCompliance", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", compliance.UserId);
                cmd.Parameters.AddWithValue("@PFNo", compliance.PFNo);
                cmd.Parameters.AddWithValue("@UANNo", compliance.UANNo);
                cmd.Parameters.AddWithValue("@ESICNo", compliance.ESICNo);
                cmd.Parameters.AddWithValue("@LoginId", compliance.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating compliance details.", ex);
            }
        }

    }
}
