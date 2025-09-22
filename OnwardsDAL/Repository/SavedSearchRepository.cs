using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class SavedSearchRepository : ISavedSearchRepository
    {
        private readonly IConfiguration _configuration;

        public SavedSearchRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        /// <summary>
        /// Inserts a new SavedSearch record or updates an existing one.
        /// </summary>
        public async Task<bool> InsertOrUpdateSavedSearchAsync(SavedSearchModel savedSearch)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateSavedSearch", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Input parameters
                cmd.Parameters.AddWithValue("@Id", savedSearch.Id ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@UserId", savedSearch.UserId);
                cmd.Parameters.AddWithValue("@SearchName", savedSearch.SearchName);
                cmd.Parameters.AddWithValue("@Search", savedSearch.Search);
                cmd.Parameters.AddWithValue("@LoginId", savedSearch.LoginId);

                // Output parameter for uniqueness check
                var isUniqueParam = new SqlParameter("@IsUnique", SqlDbType.Bit)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(isUniqueParam);

                await cmd.ExecuteNonQueryAsync();

                // Return whether the search name was unique
                return isUniqueParam.Value != DBNull.Value && (bool)isUniqueParam.Value;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error inserting or updating saved search: {ex.Message}", ex);
            }
        }

        /// <summary>
        /// Retrieves all active saved searches.
        /// </summary>
        public async Task<List<SavedSearchDto>> GetAllSavedSearchAsync(int UserId)
        {
            var savedSearches = new List<SavedSearchDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllSavedSearch", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", UserId);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var savedSearch = new SavedSearchDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        SearchName = reader.GetString(reader.GetOrdinal("SearchName")),
                        Search = reader.GetString(reader.GetOrdinal("Search"))
                    };

                    savedSearches.Add(savedSearch);
                }

                return savedSearches;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching saved searches: {ex.Message}", ex);
            }
        }

        /// <summary>
        /// Deletes a saved search by Id.
        /// </summary>
        public async Task DeleteSavedSearchAsync(int id)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteSavedSearch", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error deleting saved search: {ex.Message}", ex);
            }
        }
    }
}
