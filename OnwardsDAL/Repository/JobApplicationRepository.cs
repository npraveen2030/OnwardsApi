using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class JobApplicationRepository : IJobApplicationRepository
    {
        private readonly IConfiguration _configuration;

        public JobApplicationRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        /// <summary>
        /// Insert a new job application or update an existing one.
        /// </summary>
        public async Task<bool> InsertOrUpdateJobApplicationsAsync(JobApplicationModel jobApplication)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateJobApplications", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Parameters
                cmd.Parameters.AddWithValue("@Id", jobApplication.Id ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@UserId", jobApplication.UserId);
                cmd.Parameters.AddWithValue("@JobId", jobApplication.JobId);
                cmd.Parameters.AddWithValue("@LoginId", jobApplication.LoginId);
                cmd.Parameters.AddWithValue("@StatusId", jobApplication.StatusId);

                // Output parameter
                var InsertedParam = new SqlParameter("@Inserted", SqlDbType.Bit)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(InsertedParam);

                await cmd.ExecuteNonQueryAsync();

                bool Inserted = InsertedParam.Value != DBNull.Value && (bool)InsertedParam.Value;

                return Inserted;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error inserting or updating job application: {ex.Message}", ex);
            }
        }

        /// <summary>
        /// Get job applications for a given user.
        /// </summary>
        public async Task<List<JobApplicationDto>> GetJobApplicationsAsync(int userId)
        {
            var jobApplications = new List<JobApplicationDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetJobApplications", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var jobApplication = new JobApplicationDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        JobId = reader.GetInt32(reader.GetOrdinal("JobId")),
                        RoleName = reader.GetString(reader.GetOrdinal("RoleName")),
                        LocationName = reader.GetString(reader.GetOrdinal("LocationName")),
                        StatusId = reader.GetInt32(reader.GetOrdinal("StatusId")),
                        StatusName = reader.GetString(reader.GetOrdinal("Status")),
                        CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate"))
                    };

                    jobApplications.Add(jobApplication);
                }

                return jobApplications;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching job applications: {ex.Message}", ex);
            }
        }

        /// <summary>
        /// Mark a job application as Withdrawn (StatusId = 3).
        /// </summary>
        public async Task DeleteJobApplicationsAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteJobApplications", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error deleting (withdrawing) job application: {ex.Message}", ex);
            }
        }
    }
}
