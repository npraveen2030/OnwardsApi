using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Reflection;
using System.Threading.Tasks;

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
            try
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
                    var SkillString = "";
                    foreach (var skill in model.Skills)
                    {
                        SkillString += (skill + ",");
                    }
                    cmd.Parameters.AddWithValue("@Skills", SkillString);
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
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Projects.", ex);
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

                var SkillString = "";
                foreach (var skill in model.Skills)
                {
                    SkillString += (skill + ",");
                }
                cmd.Parameters.AddWithValue("@Skills", SkillString);
                cmd.Parameters.AddWithValue("@Responsibilities", model.Responsibilities);
                cmd.Parameters.AddWithValue("@EducationDetails", model.EducationDetails);
                cmd.Parameters.AddWithValue("@ExperienceRequired", model.ExperienceRequired);
                cmd.Parameters.AddWithValue("@DomainFunctionalSkills", model.DomainFunctionalSkills);
                cmd.Parameters.AddWithValue("@RequesitionBy", model.RequesitionBy);
                cmd.Parameters.AddWithValue("@RequesitionDate", model.RequesitionDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", model.LoginId);

                await conn.OpenAsync();
                await cmd.ExecuteNonQueryAsync();
            }
        }

        private DataTable CreateSkillsTable(List<string> skills)
        {
            var table = new DataTable();
            table.Columns.Add("SkillName", typeof(string));

            foreach (var skill in skills)
            {
                if (!string.IsNullOrWhiteSpace(skill))
                {
                    table.Rows.Add(skill);
                }
            }

            return table;
        }

        public async Task AddNewSkills(List<string> skills)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_connectionString))
                using (SqlCommand cmd = new SqlCommand("Onwards.InsertNewSkills", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Convert the list of skills into a DataTable for the TVP
                    var table = CreateSkillsTable(skills);

                    // Add the TVP parameter
                    var tvp = new SqlParameter("@Skills", SqlDbType.Structured)
                    {
                        TypeName = "Onwards.NewSkillList", // Must match the SQL user-defined type name
                        Value = table
                    };

                    cmd.Parameters.Add(tvp);

                    await conn.OpenAsync();
                    await cmd.ExecuteNonQueryAsync();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Projects.", ex);
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
            try
            {
                JobDetailDto? dto = null;

                using (SqlConnection conn = new SqlConnection(_connectionString))
                using (SqlCommand cmd = new SqlCommand("Onwards.GetJobDetailsById", conn))
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
                                // Job Info
                                Id = id,
                                RolePurpose = reader["RolePurpose"].ToString() ?? "",
                                Skills = reader["Skills"].ToString() ?? "",
                                Responsibilities = reader["Responsibilities"].ToString() ?? "",
                                EducationDetails = reader["EducationDetails"].ToString() ?? "",
                                ExperienceRequired = reader["ExperienceRequired"].ToString() ?? "",
                                DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString() ?? "",
                                RequesitionBy = reader.GetInt32(reader.GetOrdinal("RequesitionBy")),
                                RequesitionDate = reader.GetDateTime(reader.GetOrdinal("RequesitionDate")),
                                RequesitionUserName = reader["FullName"].ToString() ?? "",
                                CreatedBy = reader.GetInt32(reader.GetOrdinal("CreatedBy")),
                                CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate")),
                                ModifiedBy = reader["ModifiedBy"] != DBNull.Value ? reader.GetInt32(reader.GetOrdinal("ModifiedBy")) : (int?)null,
                                ModifiedDate = reader["ModifiedDate"] != DBNull.Value ? reader.GetDateTime(reader.GetOrdinal("ModifiedDate")) : (DateTime?)null,
                                IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive")),

                                // Project Info
                                ProjectId = reader.GetInt32(reader.GetOrdinal("ProjectId")),
                                ProjectName = reader["ProjectName"].ToString() ?? "",

                                // Role Info
                                RoleId = reader.GetInt32(reader.GetOrdinal("RoleId")),
                                RoleName = reader["RoleName"].ToString() ?? "",

                                // Location Info
                                LocationId = reader.GetInt32(reader.GetOrdinal("LocationId")),
                                LocationName = reader["Name"].ToString() ?? "",

                                // Company Info
                                CompanyId = reader.GetInt32(reader.GetOrdinal("CompanyId")),
                                CompanyDescription = reader["Description"].ToString() ?? ""
                            };
                        }
                    }
                }

                return dto;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while Getting Projects.", ex);
            }
        }


        // ------------------- GET ALL -------------------
        public async Task<List<AllJobdetailsDto>> GetAllAsync(int? userId)
        {
            var list = new List<AllJobdetailsDto>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetAllJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserId", (object?)userId ?? DBNull.Value);

                await conn.OpenAsync();

                using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        list.Add(new AllJobdetailsDto
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            RequesitionId = reader.GetInt32(reader.GetOrdinal("RequesitionBy")),
                            RoleName = reader["RoleName"].ToString() ?? "",
                            LocationName = reader["Name"].ToString() ?? "",
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
