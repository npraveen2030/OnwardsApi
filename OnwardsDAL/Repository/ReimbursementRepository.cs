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

        private DataTable CreateDocumentsTable(List<ReimbursementDocumentModel> documents)
        {
            var table = new DataTable();

            // Define the schema to match Onwards.ReimbursementDocumentType
            table.Columns.Add("Id", typeof(int));
            table.Columns.Add("ReimbursementId", typeof(int));
            table.Columns.Add("FileName", typeof(string));
            table.Columns.Add("FileType", typeof(string));
            table.Columns.Add("FileSizeKB", typeof(int));
            table.Columns.Add("FileContent", typeof(byte[]));
            table.Columns.Add("UploadedAt", typeof(DateTime));
            table.Columns.Add("IsActive", typeof(bool));

            // Fill the table with values from the list
            foreach (var doc in documents)
            {
                table.Rows.Add(
                    doc.Id == 0 ? (object)DBNull.Value : doc.Id,
                    doc.ReimbursementId == 0 ? (object)DBNull.Value : doc.ReimbursementId,
                    doc.FileName,
                    doc.FileType,
                    doc.FileSizeKB,
                    doc.FileContent ?? Array.Empty<byte>(),
                    doc.UploadedAt,
                    doc.IsActive
                );
            }

            return table;
        }

        public async Task InsertReimbursementAsync(ReimbursementModel model)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.InsertReimbursement", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@LoginId", model.LoginId);
            cmd.Parameters.AddWithValue("@ClaimCode", model.ClaimCode);
            cmd.Parameters.AddWithValue("@UserId", model.UserId);
            cmd.Parameters.AddWithValue("@Amount", model.Amount);
            cmd.Parameters.AddWithValue("@Purpose", model.Purpose);
            cmd.Parameters.AddWithValue("@ReimbursementDate", model.ReimbursementDate);
            cmd.Parameters.AddWithValue("@StatusId", model.StatusId);
            cmd.Parameters.AddWithValue("@Action", model.Action);

            var table = model.Documents != null && model.Documents.Any()
                            ? CreateDocumentsTable(model.Documents)
                            : CreateDocumentsTable(new List<ReimbursementDocumentModel>()); // Empty table

            var tvp = new SqlParameter("@Documents", SqlDbType.Structured)
            {
                TypeName = "Onwards.ReimbursementDocumentType",
                Value = table
            };
            cmd.Parameters.Add(tvp);

            await cmd.ExecuteNonQueryAsync();
        }

        public async Task<(List<ReimbursementModel> reimbursements, List<ReimbursementDocumentModel> documents)>
            GetReimbursementsAsync(ReimbursementFilterModel filter)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetReimbursement", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@ClaimCode", (object?)filter.ClaimCode ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@UserId", (object?)filter.UserId ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@Amount", (object?)filter.Amount ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@Purpose", (object?)filter.Purpose ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@ReimbursementDate", (object?)filter.ReimbursementDate ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@StatusId", (object?)filter.StatusId ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@Action", (object?)filter.Action ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@Skip", filter.Skip);
            cmd.Parameters.AddWithValue("@Take", filter.Take);

            var reimbursements = new List<ReimbursementModel>();
            var documents = new List<ReimbursementDocumentModel>();

            await using var reader = await cmd.ExecuteReaderAsync();

            // First result set - reimbursements
            while (await reader.ReadAsync())
            {
                reimbursements.Add(new ReimbursementModel
                {
                    Id = reader.GetInt32(reader.GetOrdinal("Id")),
                    ClaimCode = reader.GetString(reader.GetOrdinal("ClaimCode")),
                    UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                    Amount = reader.GetDecimal(reader.GetOrdinal("Amount")),
                    Purpose = reader.GetString(reader.GetOrdinal("Purpose")),
                    ReimbursementDate = reader.GetDateTime(reader.GetOrdinal("ReimbursementDate")),
                    StatusId = reader.GetInt32(reader.GetOrdinal("StatusId")),
                    Action = reader.GetString(reader.GetOrdinal("Action"))
                    // Add other properties as needed
                });
            }

            // Second result set - documents
            if (await reader.NextResultAsync())
            {
                while (await reader.ReadAsync())
                {
                    documents.Add(new ReimbursementDocumentModel
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        ReimbursementId = reader.GetInt32(reader.GetOrdinal("ReimbursementId")),
                        FileName = reader.GetString(reader.GetOrdinal("FileName")),
                        FileType = reader.GetString(reader.GetOrdinal("FileType")),
                        FileSizeKB = reader.GetInt32(reader.GetOrdinal("FileSizeKB")),
                        FileContent = (byte[])reader["FileContent"],
                        UploadedAt = reader.GetDateTime(reader.GetOrdinal("UploadedAt"))
                        // Add other properties as needed
                    });
                }
            }

            return (reimbursements, documents);
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
