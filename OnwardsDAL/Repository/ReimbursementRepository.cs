using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class ReimbursementRepository : IReimbursementRepository
    {
        private readonly IConfiguration _configuration;

        public ReimbursementRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }
        private async Task<byte[]> ConvertToByteArrayAsync(IFormFile file)
        {
            using (var memoryStream = new MemoryStream())
            {
                await file.CopyToAsync(memoryStream);
                return memoryStream.ToArray();
            }
        }

        private async Task<DataTable> CreateDocumentsTable(List<ReimbursementDocumentModel> documents)
        {
            var table = new DataTable();

            table.Columns.Add("Id", typeof(int));
            table.Columns.Add("ReimbursementId", typeof(int));
            table.Columns.Add("FileName", typeof(string));
            table.Columns.Add("FileContent", typeof(byte[]));
            table.Columns.Add("UploadedAt", typeof(DateTime));
            table.Columns.Add("IsActive", typeof(bool));

            foreach (var doc in documents)
            {
                if (doc.FileContent != null)
                {
                    table.Rows.Add(
                        doc.Id == null ? (object)DBNull.Value : doc.Id,
                        doc.ReimbursementId == null ? (object)DBNull.Value : doc.ReimbursementId,
                        doc.FileName ?? (object)DBNull.Value,
                        await ConvertToByteArrayAsync(doc.FileContent),
                        DBNull.Value,
                        true
                    );
                }
            }

            return table;
        }

        public async Task InsertOrUpdateReimbursementAsync(ReimbursementModel model)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            await using var cmd = new SqlCommand("Onwards.InsertOrUpdateReimbursement", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            // Core parameters
            cmd.Parameters.AddWithValue("@Id", model.Id == null ? (object)DBNull.Value : model.Id);
            cmd.Parameters.AddWithValue("@LoginId", model.LoginId);
            cmd.Parameters.AddWithValue("@ClaimCode", model.ClaimCode ?? string.Empty);
            cmd.Parameters.AddWithValue("@UserId", model.UserId);
            cmd.Parameters.AddWithValue("@Amount", model.Amount);
            cmd.Parameters.AddWithValue("@Purpose", model.Purpose ?? string.Empty);
            cmd.Parameters.AddWithValue("@ReimbursementDate", model.ReimbursementDate);
            cmd.Parameters.AddWithValue("@StatusId", model.StatusId ?? (object)DBNull.Value);
            cmd.Parameters.AddWithValue("@Action", model.Action ?? string.Empty);

            var table = await CreateDocumentsTable(model.Documents);

            var tvp = new SqlParameter("@Documents", SqlDbType.Structured)
            {
                TypeName = "Onwards.ReimbursementDocumentType",
                Value = table
            };
            cmd.Parameters.Add(tvp);

            await cmd.ExecuteNonQueryAsync();
        }


        public async Task<List<ReimbursementDto>> GetReimbursementsByIdAsync(int UserId , int StatusId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                using var cmd = new SqlCommand("Onwards.GetReimbursementById", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Parameters for filtering
                cmd.Parameters.AddWithValue("@UserId", UserId);
                cmd.Parameters.AddWithValue("@StatusId", StatusId);

                var reimbursements = new List<ReimbursementDto>();

                var reimbursementMap = new Dictionary<int, ReimbursementDto>();

                await using var reader = await cmd.ExecuteReaderAsync();

                // ---------- First Result Set: Reimbursements ----------
                while (await reader.ReadAsync())
                {
                    var reimbursement = new ReimbursementDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        ClaimCode = reader.GetString(reader.GetOrdinal("ClaimCode")),
                        UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                        Amount = reader.GetDecimal(reader.GetOrdinal("Amount")),
                        Purpose = reader.GetString(reader.GetOrdinal("Purpose")),
                        ReimbursementDate = reader.GetDateTime(reader.GetOrdinal("ReimbursementDate")),
                        StatusId = reader.IsDBNull(reader.GetOrdinal("StatusId"))
                                   ? (int?)null
                                   : reader.GetInt32(reader.GetOrdinal("StatusId")),
                        Action = reader.GetString(reader.GetOrdinal("Action")),
                        CreatedDate = reader.IsDBNull(reader.GetOrdinal("CreatedDate"))
                                      ? (DateTime?)null
                                      : reader.GetDateTime(reader.GetOrdinal("CreatedDate")),
                        CreatedBy = reader.IsDBNull(reader.GetOrdinal("CreatedBy"))
                                    ? (int?)null
                                    : reader.GetInt32(reader.GetOrdinal("CreatedBy")),
                        ModifiedDate = reader.IsDBNull(reader.GetOrdinal("ModifiedDate"))
                                       ? (DateTime?)null
                                       : reader.GetDateTime(reader.GetOrdinal("ModifiedDate")),
                        ModifiedBy = reader.IsDBNull(reader.GetOrdinal("ModifiedBy"))
                                     ? (int?)null
                                     : reader.GetInt32(reader.GetOrdinal("ModifiedBy")),
                        IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive")),
                        Documents = new List<ReimbursementDocumentDto>() 
                    };

                    reimbursements.Add(reimbursement);
                    reimbursementMap[reimbursement.Id] = reimbursement;
                }

                // ---------- Second Result Set: Documents ----------
                if (await reader.NextResultAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var document = new ReimbursementDocumentDto
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            ReimbursementId = reader.GetInt32(reader.GetOrdinal("ReimbursementId")),
                            FileName = reader.GetString(reader.GetOrdinal("FileName")),
                            FileContent = (byte[])reader["FileContent"],
                            UploadedAt = reader.GetDateTime(reader.GetOrdinal("UploadedAt")),
                            CreatedDate = reader.IsDBNull(reader.GetOrdinal("CreatedDate"))
                                          ? (DateTime?)null
                                          : reader.GetDateTime(reader.GetOrdinal("CreatedDate")),
                            CreatedBy = reader.IsDBNull(reader.GetOrdinal("CreatedBy"))
                                        ? (int?)null
                                        : reader.GetInt32(reader.GetOrdinal("CreatedBy")),
                            ModifiedDate = reader.IsDBNull(reader.GetOrdinal("ModifiedDate"))
                                           ? (DateTime?)null
                                           : reader.GetDateTime(reader.GetOrdinal("ModifiedDate")),
                            ModifiedBy = reader.IsDBNull(reader.GetOrdinal("ModifiedBy"))
                                         ? (int?)null
                                         : reader.GetInt32(reader.GetOrdinal("ModifiedBy")),
                            IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive"))
                        };

                        // Attach document to the correct reimbursement
                        if (reimbursementMap.TryGetValue(document.ReimbursementId, out var parentReimbursement))
                        {
                            parentReimbursement.Documents.Add(document);
                        }
                    }
                }

                return reimbursements;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error validating login: {ex.Message}", ex);
            }
        }


        public async Task UpdateReimbursementAsync(ReimbursementModel model)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.UpdateReimbursement", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@Id", model.Id);
            cmd.Parameters.AddWithValue("@LoginId", model.LoginId);
            cmd.Parameters.AddWithValue("@ClaimCode", model.ClaimCode);
            cmd.Parameters.AddWithValue("@UserId", model.UserId);
            cmd.Parameters.AddWithValue("@Amount", model.Amount);
            cmd.Parameters.AddWithValue("@Purpose", model.Purpose);
            cmd.Parameters.AddWithValue("@ReimbursementDate", model.ReimbursementDate);
            cmd.Parameters.AddWithValue("@StatusId", model.StatusId);
            cmd.Parameters.AddWithValue("@Action", model.Action);

            var table = CreateDocumentsTable(model.Documents);
            var tvp = new SqlParameter("@Documents", SqlDbType.Structured)
            {
                TypeName = "Onwards.ReimbursementDocumentType",
                Value = table
            };
            cmd.Parameters.Add(tvp);

            await cmd.ExecuteNonQueryAsync();
        }

        public async Task DeleteReimbursementAsync(int id, int loginId)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.DeleteReimbursement", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@Id", id);
            cmd.Parameters.AddWithValue("@LoginId", loginId);

            await cmd.ExecuteNonQueryAsync();
        }
    }
}
