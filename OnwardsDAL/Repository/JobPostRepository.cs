using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System.Data;


namespace OnwardsDAL.Repository
{
    public class JobPostRepository : IJobPostRepository
    {
        private readonly IConfiguration _config;
        public JobPostRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task<List<SkillsDto>> GetSkillsAsync()
        {
            try
            {
                var list = new List<SkillsDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetSkills", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    list.Add(new SkillsDto
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        SkillName = reader["SkillName"].ToString() ?? ""
                    });
                }
                return list;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Skills.", ex);
            }
        }
    }
}
