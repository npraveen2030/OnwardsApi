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
    public class CertificationDetailsRepository : ICertificationDetailsRepository
    {
        private readonly IConfiguration _config;
        public CertificationDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateCertificationDetailsAsync(List<CertificationDetailsModel> certs)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                foreach (var cert in certs)
                {
                    await using var cmd = new SqlCommand("Onwards.InsertOrUpdateCertificationDetails", conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@UserId", cert.UserId);
                    cmd.Parameters.AddWithValue("@Course", cert.Course);
                    cmd.Parameters.AddWithValue("@Institute", cert.Institute);
                    cmd.Parameters.AddWithValue("@Year", cert.Year);
                    cmd.Parameters.AddWithValue("@LoginId", cert.LoginId);

                    await cmd.ExecuteNonQueryAsync();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating Certification Details.", ex);
            }
        }
    }
}
