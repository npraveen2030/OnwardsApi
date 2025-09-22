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
    public class SavedJobRepository : ISavedJobRepository
    {
        private readonly IConfiguration _configuration;

        public SavedJobRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        public async Task<bool> InsertSavedJobAsync(SavedJobModel savedjob)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertSavedJob", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Input parameters
                cmd.Parameters.AddWithValue("@UserId", savedjob.UserId);
                cmd.Parameters.AddWithValue("@JobId", savedjob.JobId);
                cmd.Parameters.AddWithValue("@LoginId", savedjob.LoginId);

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
                throw new ApplicationException($"Error inserting saved job: {ex.Message}", ex);
            }
        }


        public async Task<List<SavedJobDto>> GetSavedJobsAsync(int userId)
        {
            var savedJobs = new List<SavedJobDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetSavedJob", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var savedJob = new SavedJobDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),            // SavedJob table Id
                        JobId = reader.GetInt32(reader.GetOrdinal("JobId")),      // JobDetails table Id
                        RoleName = reader.GetString(reader.GetOrdinal("RoleName")),
                        LocationName = reader.GetString(reader.GetOrdinal("LocationName"))
                    };

                    savedJobs.Add(savedJob);
                }

                return savedJobs;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching saved jobs: {ex.Message}", ex);
            }
        }

        public async Task DeleteSavedJobAsync(int id)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteSavedJobs", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error deleting saved job: {ex.Message}", ex);
            }
        }
    }
}
