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
    public class EducationDetailsRepository : IEducationDetailsRepository
    {
        private readonly IConfiguration _config;
        public EducationDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateEducationDetailsAsync(List<EducationDetailsModel> details)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                foreach (var detail in details)
                {
                    await using var cmd = new SqlCommand("Onwards.InsertOrUpdateEducationDetails", conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@UserId", detail.UserId);
                    cmd.Parameters.AddWithValue("@Qualification", detail.Qualification);
                    cmd.Parameters.AddWithValue("@Specialization", detail.Specialization);
                    cmd.Parameters.AddWithValue("@CollegeName", detail.CollegeName);
                    cmd.Parameters.AddWithValue("@Year", detail.Year);
                    cmd.Parameters.AddWithValue("@BoardOrUniversity", detail.BoardOrUniversity);
                    cmd.Parameters.AddWithValue("@Percentage", detail.Percentage);
                    cmd.Parameters.AddWithValue("@LoginId", detail.LoginId);

                    await cmd.ExecuteNonQueryAsync();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating Education Details.", ex);
            }
        }
    }
}
