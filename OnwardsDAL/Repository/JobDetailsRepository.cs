using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsDAL.Repository
{
    public class JobDetailRepository : IJobDetailRepository
    {
        private readonly string _connectionString;

        public JobDetailRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        // ------------------- INSERT -------------------
        public async Task InsertAsync(JobDetailModel model)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.InsertJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProjectId", model.ProjectId);
                cmd.Parameters.AddWithValue("@RoleId", model.RoleId);
                cmd.Parameters.AddWithValue("@RolePurpose", model.RolePurpose);
                cmd.Parameters.AddWithValue("@LocationId", model.LocationId);
                cmd.Parameters.AddWithValue("@CompanyId", model.CompanyId);
                cmd.Parameters.AddWithValue("@Skills", model.Skills);
                cmd.Parameters.AddWithValue("@Responsibilities", model.Responsibilities);
                cmd.Parameters.AddWithValue("@EducationDetails", model.EducationDetails);
                cmd.Parameters.AddWithValue("@ExperienceRequired", model.ExperienceRequired);
                cmd.Parameters.AddWithValue("@DomainFunctionalSkills", model.DomainFunctionalSkills);
                cmd.Parameters.AddWithValue("@RequesitionBy", model.RequesitionBy);
                cmd.Parameters.AddWithValue("@RequesitionDate", model.RequesitionDate);
                cmd.Parameters.AddWithValue("@CreatedBy", model.LoginId);

                await conn.OpenAsync();
                await cmd.ExecuteNonQueryAsync();
            }
        }

        // ------------------- UPDATE -------------------
        public async Task UpdateAsync(JobDetailModel model)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.UpdateJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", model.Id);  // Make sure to pass actual JobDetail Id
                cmd.Parameters.AddWithValue("@ProjectId", model.ProjectId);
                cmd.Parameters.AddWithValue("@RoleId", model.RoleId);
                cmd.Parameters.AddWithValue("@RolePurpose", model.RolePurpose);
                cmd.Parameters.AddWithValue("@LocationId", model.LocationId);
                cmd.Parameters.AddWithValue("@CompanyId", model.CompanyId);
                cmd.Parameters.AddWithValue("@Skills", model.Skills);
                cmd.Parameters.AddWithValue("@Responsibilities", model.Responsibilities);
                cmd.Parameters.AddWithValue("@EducationDetails", model.EducationDetails);
                cmd.Parameters.AddWithValue("@ExperienceRequired", model.ExperienceRequired);
                cmd.Parameters.AddWithValue("@DomainFunctionalSkills", model.DomainFunctionalSkills);
                cmd.Parameters.AddWithValue("@RequesitionBy", model.RequesitionBy);
                cmd.Parameters.AddWithValue("@RequesitionDate", model.RequesitionDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", model.CreatedBy);

                await conn.OpenAsync();
                await cmd.ExecuteNonQueryAsync();
            }
        }

        // ------------------- DELETE -------------------
        public async Task DeleteAsync(int id)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.DeleteJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                await conn.OpenAsync();
                await cmd.ExecuteNonQueryAsync();
            }
        }

        // ------------------- GET BY ID -------------------
        public async Task<JobDetailDto> GetByIdAsync(int id)
        {
            JobDetailDto dto = null;

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetJobDetailById", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                await conn.OpenAsync();

                using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
                {
                    if (await reader.ReadAsync())
                    {
                        dto = new JobDetailDto
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            RolePurpose = reader["RolePurpose"].ToString(),
                            Skills = reader["Skills"].ToString(),
                            EducationDetails = reader["EducationDetails"].ToString(),
                            ExperienceRequired = reader["ExperienceRequired"].ToString(),
                            DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString(),
                            CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate"))
                        };
                    }
                }
            }

            return dto;
        }

        // ------------------- GET ALL -------------------
        public async Task<List<JobDetailDto>> GetAllAsync()
        {
            var list = new List<JobDetailDto>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetAllJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                await conn.OpenAsync();

                using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        list.Add(new JobDetailDto
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            RolePurpose = reader["RolePurpose"].ToString(),
                            Skills = reader["Skills"].ToString(),
                            EducationDetails = reader["EducationDetails"].ToString(),
                            ExperienceRequired = reader["ExperienceRequired"].ToString(),
                            DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString(),
                            CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate"))
                        });
                    }
                }
            }

            return list;
        }

        // ------------------- SEARCH -------------------
        public async Task<List<JobDetailDto>> SearchAsync(string searchString)
        {
            var list = new List<JobDetailDto>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.SearchJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SearchString", searchString);

                await conn.OpenAsync();

                using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        list.Add(new JobDetailDto
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            RolePurpose = reader["RolePurpose"].ToString(),
                            Skills = reader["Skills"].ToString(),
                            EducationDetails = reader["EducationDetails"].ToString(),
                            ExperienceRequired = reader["ExperienceRequired"].ToString(),
                            DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString(),
                            CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate"))
                        });
                    }
                }
            }

            return list;
        }
    }
}
