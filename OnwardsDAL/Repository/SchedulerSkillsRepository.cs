using Microsoft.Extensions.Configuration;
using Microsoft.Data.SqlClient;
using System.Data;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class SchedulerSkillsRepository : ISchedulerSkillsRepository
    {
        private readonly IConfiguration _configuration;

        public SchedulerSkillsRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<SchedulerDetailsDto>> GetSchedulersBySkillsAsync(List<string> skills)
        {
            try
            {
                var result = new List<SchedulerDetailsDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetSchedulersBySkills", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // ✅ Build TVP for @skills
                var tvp = new DataTable();
                tvp.Columns.Add("SkillName", typeof(string));

                if (skills != null)
                {
                    foreach (var skill in skills)
                        tvp.Rows.Add(skill);
                }

                var param = cmd.Parameters.AddWithValue("@skills", tvp);
                param.SqlDbType = SqlDbType.Structured;
                param.TypeName = "Onwards.NewSkillList";

                // Execute reader
                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var scheduler = new SchedulerDetailsDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        EmployeeCode = reader.GetString(reader.GetOrdinal("EmployeeCode")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        RoleName = reader.GetString(reader.GetOrdinal("RoleName")),
                        Summary = reader.GetString(reader.GetOrdinal("Summary")),
                        SkillList = reader.IsDBNull(reader.GetOrdinal("SkillList"))
                            ? null
                            : reader.GetString(reader.GetOrdinal("SkillList")),
                        Rating = reader.GetDecimal(reader.GetOrdinal("Rating"))
                    };

                    result.Add(scheduler);
                }

                return result;
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while fetching schedulers by skills.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching schedulers by skills.", ex);
            }
        }
    }
}
