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
    public class ReferralTrackingRepository : IReferralTrackingRepository
    {
        private readonly IConfiguration _configuration;

        public ReferralTrackingRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        public async Task InsertReferralTrackingAsync(ReferralTrackingModel referral)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertReferralTracking", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                byte[] fileBytes;
                using (var memoryStream = new MemoryStream())
                {
                    await referral.FileData.CopyToAsync(memoryStream);
                    fileBytes = memoryStream.ToArray();
                }

                // Input parameters
                cmd.Parameters.AddWithValue("@JobId", referral.JobId);
                cmd.Parameters.AddWithValue("@LoginId", referral.LoginId);
                cmd.Parameters.AddWithValue("@FirstName", referral.FirstName);
                cmd.Parameters.AddWithValue("@LastName", referral.LastName);
                cmd.Parameters.AddWithValue("@Email", referral.Email);
                cmd.Parameters.AddWithValue("@Phone", (object?)referral.Phone ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LocationId", referral.LocationId);
                cmd.Parameters.AddWithValue("@FileName", referral.FileData.FileName);     // Extracted from IFormFile
                cmd.Parameters.AddWithValue("@FileType", referral.FileData.ContentType);  // Extracted from IFormFile
                cmd.Parameters.AddWithValue("@FileData", fileBytes);                      // Raw byte[] for SQL
                cmd.Parameters.AddWithValue("@StatusId", referral.StatusId);

                await cmd.ExecuteNonQueryAsync();

            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error inserting referral tracking: {ex.Message}", ex);
            }
        }

        public async Task<List<ReferralTrackingDto>> GetReferralTrackingAsync(int createdBy)
        {
            var referrals = new List<ReferralTrackingDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetReferralTracking", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var referral = new ReferralTrackingDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        JobId = reader.GetInt32(reader.GetOrdinal("JobId")),
                        FirstName = reader.GetString(reader.GetOrdinal("FirstName")),
                        LastName = reader.GetString(reader.GetOrdinal("LastName")),
                        Email = reader.GetString(reader.GetOrdinal("Email")),
                        Phone = reader.IsDBNull(reader.GetOrdinal("Phone")) ? null : reader.GetString(reader.GetOrdinal("Phone")),
                        LocationName = reader.GetString(reader.GetOrdinal("LocationName")),
                        FileName = reader.GetString(reader.GetOrdinal("FileName")),
                        Status = reader.GetString(reader.GetOrdinal("Status"))
                    };

                    referrals.Add(referral);
                }

                return referrals;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching referral tracking records: {ex.Message}", ex);
            }
        }

        public async Task<ReferralTrackingDocumentDto?> GetReferralTrackingDocumentAsync(int id)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetReferralTrackingDocument", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);

                await using var reader = await cmd.ExecuteReaderAsync();

                if (await reader.ReadAsync())
                {
                    return new ReferralTrackingDocumentDto
                    {
                        FileName = reader.GetString(reader.GetOrdinal("FileName")),
                        FileType = reader.GetString(reader.GetOrdinal("FileType")),
                        FileData = (byte[])reader["FileData"]
                    };
                }

                return null; 
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error fetching referral tracking document: {ex.Message}", ex);
            }
        }


        public async Task DeleteReferralTrackingAsync(int id)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteReferralTracking", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error deleting referral tracking record: {ex.Message}", ex);
            }
        }
    }
}
