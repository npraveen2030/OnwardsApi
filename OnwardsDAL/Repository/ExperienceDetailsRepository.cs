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
    public class ExperienceDetailsRepository : IExperienceDetailsRepository
    {
        private readonly IConfiguration _config;
        public ExperienceDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateExperienceDetailsAsync(ExperienceDetailsModel exp)
        {
            await using var conn = GetConn();
            await conn.OpenAsync();

            await using var cmd = new SqlCommand("Onwards.InsertOrUpdateExperienceDetails", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@UserId", exp.UserId);
            cmd.Parameters.AddWithValue("@PreviousExperience", exp.PreviousExperience);
            cmd.Parameters.AddWithValue("@TotalExperience", exp.TotalExperience);
            cmd.Parameters.AddWithValue("@RelevantExperience", exp.RelevantExperience);
            cmd.Parameters.AddWithValue("@CurrentDesignation", exp.CurrentDesignation);
            cmd.Parameters.AddWithValue("@CurrentEmployer", exp.CurrentEmployer);
            cmd.Parameters.AddWithValue("@PreviousOnwardExperience", exp.PreviousOnwardExperience);
            cmd.Parameters.AddWithValue("@PreviousOnwardEmployeeCode", exp.PreviousOnwardEmployeeCode);
            cmd.Parameters.AddWithValue("@LoginId", exp.LoginId);

            await cmd.ExecuteNonQueryAsync();
        }
    }
}
