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

        public async Task<List<RolesDto>> GetRolesAsync()
        {
            try
            {
                var list = new List<RolesDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllRoles", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    list.Add(new RolesDto
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        RoleName = reader["RoleName"].ToString() ?? ""
                    });
                }
                return list;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Roles.", ex);
            }
        }

        public async Task<List<ProjectsDto>> GetProjectsAsync()
        {
            try
            {
                var list = new List<ProjectsDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllProjects", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    list.Add(new ProjectsDto
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        ProjectName = reader["ProjectName"].ToString() ?? ""
                    });
                }
                return list;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Projects.", ex);
            }
        }

        public async Task<List<UserDto>> GetUsersAsync()
        {
            try
            {
                var list = new List<UserDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllUsers", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    list.Add(new UserDto
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        UserName = reader["FullName"].ToString() ?? ""
                    });
                }
                return list;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Users.", ex);
            }
        }

        public async Task<List<CompanyDto>> GetCompaniesAsync()
        {
            try
            {
                var list = new List<CompanyDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllCompanies", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    list.Add(new CompanyDto
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        CompanyName = reader["CompanyName"].ToString() ?? ""
                    });
                }
                return list;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting CompanyName.", ex);
            }
        }
    }
}
