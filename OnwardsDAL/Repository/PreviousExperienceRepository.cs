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
    public class PreviousExperienceRepository : IPreviousExperienceRepository
    {
        private readonly IConfiguration _config;
        public PreviousExperienceRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() => new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdatePreviousExperienceAsync(List<PreviousExperienceDetailModel> experiences)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                foreach (var experience in experiences)
                {
                    await using var cmd = new SqlCommand("Onwards.InsertOrUpdatePreviousExperienceDetails", conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@UserId", experience.UserId);
                    cmd.Parameters.AddWithValue("@CompanyName", experience.CompanyName);
                    cmd.Parameters.AddWithValue("@Designation", experience.Designation);
                    cmd.Parameters.AddWithValue("@StartDate", experience.StartDate);
                    cmd.Parameters.AddWithValue("@EndDate", (object?)experience.EndDate ?? DBNull.Value);
                    cmd.Parameters.AddWithValue("@LoginId", experience.LoginId);

                    await cmd.ExecuteNonQueryAsync();
                }
                
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating experience details.", ex);
            }
        }
    }
}
