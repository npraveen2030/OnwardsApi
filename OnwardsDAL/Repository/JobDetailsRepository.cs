using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
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

        public void Insert(JobDetailModel model)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.InsertJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProjectId", model.ProjectId);
                cmd.Parameters.AddWithValue("@RoleId", model.RoleId);
                cmd.Parameters.AddWithValue("@RolePurpose", model.RolePurpose);
                cmd.Parameters.AddWithValue("@LocationId", model.LocationId);
                cmd.Parameters.AddWithValue("@SlkId", model.SlkId);
                cmd.Parameters.AddWithValue("@SkillsId", model.SkillsId);
                cmd.Parameters.AddWithValue("@Responsibilities", model.Responsibilities);
                cmd.Parameters.AddWithValue("@EducationDetails", model.EducationDetails);
                cmd.Parameters.AddWithValue("@ExperienceRequired", model.ExperienceRequired);
                cmd.Parameters.AddWithValue("@DomainFunctionalSkills", model.DomainFunctionalSkills);
                cmd.Parameters.AddWithValue("@RequesitionBy", model.RequesitionBy);
                cmd.Parameters.AddWithValue("@RequesitionDate", model.RequesitionDate);
                cmd.Parameters.AddWithValue("@Status", model.Status);
                cmd.Parameters.AddWithValue("@CreatedBy", model.CreatedBy);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void Update(JobDetailModel model)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.UpdateJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", model.ProjectId);  // Assuming ProjectId is key? (should use proper Id)
                cmd.Parameters.AddWithValue("@ProjectId", model.ProjectId);
                cmd.Parameters.AddWithValue("@RoleId", model.RoleId);
                cmd.Parameters.AddWithValue("@RolePurpose", model.RolePurpose);
                cmd.Parameters.AddWithValue("@LocationId", model.LocationId);
                cmd.Parameters.AddWithValue("@SlkId", model.SlkId);
                cmd.Parameters.AddWithValue("@SkillsId", model.SkillsId);
                cmd.Parameters.AddWithValue("@Responsibilities", model.Responsibilities);
                cmd.Parameters.AddWithValue("@EducationDetails", model.EducationDetails);
                cmd.Parameters.AddWithValue("@ExperienceRequired", model.ExperienceRequired);
                cmd.Parameters.AddWithValue("@DomainFunctionalSkills", model.DomainFunctionalSkills);
                cmd.Parameters.AddWithValue("@RequesitionBy", model.RequesitionBy);
                cmd.Parameters.AddWithValue("@RequesitionDate", model.RequesitionDate);
                cmd.Parameters.AddWithValue("@Status", model.Status);
                cmd.Parameters.AddWithValue("@ModifiedBy", model.CreatedBy);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void Delete(int id)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.DeleteJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public JobDetailDto GetById(int id)
        {
            JobDetailDto dto = null;

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetJobDetailById", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        dto = new JobDetailDto
                        {
                            Id = (int)reader["Id"],
                            RolePurpose = reader["RolePurpose"].ToString(),
                            SkillsId = reader["SkillsId"].ToString(),
                            EducationDetails = reader["EducationDetails"].ToString(),
                            ExperienceRequired = reader["ExperienceRequired"].ToString(),
                            DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString(),
                            CreatedDate = (DateTime)reader["CreatedDate"]
                        };
                    }
                }
            }

            return dto;
        }

        public List<JobDetailDto> GetAll()
        {
            var list = new List<JobDetailDto>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetAllJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new JobDetailDto
                        {
                            Id = (int)reader["Id"],
                            RolePurpose = reader["RolePurpose"].ToString(),
                            SkillsId = reader["SkillsId"].ToString(),
                            EducationDetails = reader["EducationDetails"].ToString(),
                            ExperienceRequired = reader["ExperienceRequired"].ToString(),
                            DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString(),
                            CreatedDate = (DateTime)reader["CreatedDate"]
                        });
                    }
                }
            }

            return list;
        }

        public List<JobDetailDto> Search(string searchString)
        {
            var list = new List<JobDetailDto>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.SearchJobDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SearchString", searchString);

                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new JobDetailDto
                        {
                            Id = (int)reader["Id"],
                            RolePurpose = reader["RolePurpose"].ToString(),
                            SkillsId = reader["SkillsId"].ToString(),
                            EducationDetails = reader["EducationDetails"].ToString(),
                            ExperienceRequired = reader["ExperienceRequired"].ToString(),
                            DomainFunctionalSkills = reader["DomainFunctionalSkills"].ToString(),
                            CreatedDate = (DateTime)reader["CreatedDate"]
                        });
                    }
                }
            }

            return list;
        }
    }
}
