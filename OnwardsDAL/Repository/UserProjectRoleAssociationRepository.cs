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
    public class UserProjectRoleAssociationRepository : IUserProjectRoleAssociationRepository
    {
        private readonly IConfiguration _configuration;

        public UserProjectRoleAssociationRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        /// <summary>
        /// Insert a new user-project-role association
        /// </summary>
        public async Task<(bool Success, string Message)> InsertUserProjectRoleAssociationAsync(UserProjectRoleAssociationModel association)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertUserProjectRoleAssociation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Input params
                cmd.Parameters.AddWithValue("@LoginId", association.LoginId);
                cmd.Parameters.AddWithValue("@UserId", association.UserId);
                cmd.Parameters.AddWithValue("@ProjectId", association.ProjectId);
                cmd.Parameters.AddWithValue("@RoleId", association.RoleId);
                cmd.Parameters.AddWithValue("@AssociationStartDate", association.AssociationStartDate);
                cmd.Parameters.AddWithValue("@AssociationEndDate", (object?)association.AssociationEndDate ?? DBNull.Value);

                // Execute procedure (RAISERROR will trigger SqlException)
                await cmd.ExecuteNonQueryAsync();
                return (true, "Association inserted successfully.");
            }
            catch (SqlException sqlEx)
            {
                return (false, sqlEx.Message); // ✅ only SQL error message
            }
            catch (Exception ex)
            {
                return (false, "Unexpected error: " + ex.Message);
            }
        }


        /// <summary>
        /// Get all user-project-role associations for a project
        /// </summary>
        public async Task<List<UserProjectRoleAssociationDto>> GetUserProjectRoleAssociationAsync(int projectId)
        {
            var associations = new List<UserProjectRoleAssociationDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserProjectRoleAssociation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@ProjectId", projectId);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var association = new UserProjectRoleAssociationDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        ProjectId = reader.GetInt32(reader.GetOrdinal("ProjectId")),
                        RoleId = reader.GetInt32(reader.GetOrdinal("RoleId")),
                        AssociationStartDate = reader.GetDateTime(reader.GetOrdinal("AssociationStartDate")),
                };

                    associations.Add(association);
                }

                return associations;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching user project role associations: {ex.Message}", ex);
            }
        }

        /// <summary>
        /// Soft delete (set IsActive = 0) for an association
        /// </summary>
        public async Task DeleteUserProjectRoleAssociationAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteUserProjectRoleAssociation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Input params
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error deleting user project role association: {ex.Message}", ex);
            }
        }

    }
}
