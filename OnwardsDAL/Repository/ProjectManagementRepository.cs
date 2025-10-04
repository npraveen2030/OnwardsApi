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
    public class ProjectManagementRepository : IProjectManagementRepository
    {
        private readonly IConfiguration _configuration;

        public ProjectManagementRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        /// <summary>
        /// Insert or update a project
        /// </summary>
        public async Task<(bool Success, string Message)> InsertOrUpdateProjectAsync(ProjectManagementModel project)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateProjects", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Input parameters
                cmd.Parameters.AddWithValue("@Id", (object?)project.Id ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", project.LoginId);
                cmd.Parameters.AddWithValue("@ProjectName", project.ProjectName);
                cmd.Parameters.AddWithValue("@StartDate", project.StartDate);
                cmd.Parameters.AddWithValue("@EndDate", project.EndDate);

                await cmd.ExecuteNonQueryAsync();
                return (true, project.Id == null ? "Project inserted successfully." : "Project updated successfully.");
            }
            catch (SqlException sqlEx)
            {
                return (false, sqlEx.Message);
            }
            catch (Exception ex)
            {
                return (false, "Unexpected error: " + ex.Message);
            }
        }

        /// <summary>
        /// Get all active projects
        /// </summary>
        public async Task<List<ProjectManagementDto>> GetProjectsAsync()
        {
            var projects = new List<ProjectManagementDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetProjects", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var project = new ProjectManagementDto
                    {
                        Id = reader.IsDBNull(reader.GetOrdinal("Id"))
            ? 0
            : reader.GetInt32(reader.GetOrdinal("Id")),

                        ProjectName = reader.IsDBNull(reader.GetOrdinal("ProjectName"))
            ? string.Empty
            : reader.GetString(reader.GetOrdinal("ProjectName")),

                        StartDate = reader.IsDBNull(reader.GetOrdinal("StartDate"))
            ? (DateTime?)null
            : reader.GetDateTime(reader.GetOrdinal("StartDate")),

                        EndDate = reader.IsDBNull(reader.GetOrdinal("EndDate"))
            ? (DateTime?)null
            : reader.GetDateTime(reader.GetOrdinal("EndDate"))
                    };

                    projects.Add(project);
                }

                return projects;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching projects: {ex.Message}", ex);
            }
        }

        /// <summary>
        /// Soft delete project (set IsActive = 0)
        /// </summary>
        public async Task DeleteProjectAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteProjects", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error deleting project: {ex.Message}", ex);
            }
        }
    }
}
