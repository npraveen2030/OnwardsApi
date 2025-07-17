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
    public class SkillDetailsRepository : ISkillDetailsRepository
    {
        private readonly IConfiguration _config;
        public SkillDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateSkillsAsync(SkillDetailsModel skill)
        {
            await using var conn = GetConn();
            await conn.OpenAsync();

            await using var cmd = new SqlCommand("Onwards.InsertOrUpdateSkillDetails", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@UserId", skill.UserId);
            cmd.Parameters.AddWithValue("@PrimarySkills", skill.PrimarySkills);
            cmd.Parameters.AddWithValue("@SecondarySkills", skill.SecondarySkills);
            cmd.Parameters.AddWithValue("@LoginId", skill.LoginId);

            await cmd.ExecuteNonQueryAsync();
        }
    }
}
