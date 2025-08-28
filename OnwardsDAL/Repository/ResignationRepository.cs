using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsDAL.Repository
{
    public class ResignationRepository : IResignationRepository
    {
        private readonly IConfiguration _configuration;

        public ResignationRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<ResignationDto> GetResignationDetailsByUserId(int userId)
        {
            ResignationDto? resignation = null;

            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

            await using var cmd = new SqlCommand("Onwards.GetResignationDetailsByUserId", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@UserId", userId);

            await conn.OpenAsync();

            await using var reader = await cmd.ExecuteReaderAsync();

            if (await reader.ReadAsync())
            {
                resignation = new ResignationDto
                {
                    Id = reader.GetInt32(reader.GetOrdinal("Id")),
                    UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                    ResignationTypeId = reader.GetInt32(reader.GetOrdinal("ResignationTypeId")),
                    ResignationReasonId = reader.GetInt32(reader.GetOrdinal("ResignationReasonId")),
                    ResignationLetterDate = reader.GetDateTime(reader.GetOrdinal("ResignationLetterDate")),
                    RequestedRelievingDate = reader.GetDateTime(reader.GetOrdinal("RequestedRelievingDate")),
                    ActualRelievingDate = reader.GetDateTime(reader.GetOrdinal("ActualRelievingDate")),
                    NoticePeriod = reader.GetInt32(reader.GetOrdinal("NoticePeriod")),
                    EndOfNoticePeriod = reader.GetInt32(reader.GetOrdinal("EndOfNoticePeriod")),
                    NextEmployer = reader["NextEmployer"] as string,
                    MailingAddress = reader["MailingAddress"] as string,
                    Address = reader["Address"] as string,
                    PersonalEmailId = reader["PersonalEmailId"] as string,
                    Comments = reader["Comments"] as string,
                    AttachmentFile = reader["AttachmentFile"] as string,
                    PullbackComment = reader["PullbackComment"] as string,
                    StatusId = reader["StatusId"] as int?,
                    ApprovedBy = reader["ApprovedBy"] as int?,
                    ApprovalDate = reader["ApprovalDate"] as DateTime?,
                    ApproverRemarks = reader["ApproverRemarks"] as string
                };
            }

            return resignation;
        }

        public async Task InsertResignationAsync(ResignationModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertResignation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", model.UserId);
                cmd.Parameters.AddWithValue("@ResignationTypeId", model.ResignationTypeId);
                cmd.Parameters.AddWithValue("@ResignationReasonId", model.ResignationReasonId);
                cmd.Parameters.AddWithValue("@ResignationLetterDate", model.ResignationLetterDate);
                cmd.Parameters.AddWithValue("@RequestedRelievingDate", model.RequestedRelievingDate);
                cmd.Parameters.AddWithValue("@ActualRelievingDate", model.ActualRelievingDate);
                cmd.Parameters.AddWithValue("@NoticePeriod", model.NoticePeriod);
                cmd.Parameters.AddWithValue("@NextEmployer", model.NextEmployer);
                cmd.Parameters.AddWithValue("@EndOfNoticePeriod", model.EndOfNoticePeriod);
                cmd.Parameters.AddWithValue("@MailingAddress", string.IsNullOrWhiteSpace(model.MailingAddress?.ToString()) ? DBNull.Value : (object)model.MailingAddress);
                cmd.Parameters.AddWithValue("@Address", string.IsNullOrWhiteSpace(model.Address?.ToString()) ? DBNull.Value : (object)model.Address);
                cmd.Parameters.AddWithValue("@PersonalEmailid", string.IsNullOrWhiteSpace(model.PersonalEmailid?.ToString()) ? DBNull.Value : (object)model.PersonalEmailid);
                cmd.Parameters.AddWithValue("@Comments", string.IsNullOrWhiteSpace(model.Comments?.ToString()) ? DBNull.Value : (object)model.Comments);
                cmd.Parameters.AddWithValue("@AttachmentFile", string.IsNullOrWhiteSpace(model.AttachmentFile?.ToString()) ? DBNull.Value : (object)model.AttachmentFile);
                cmd.Parameters.AddWithValue("@PullbackComment", string.IsNullOrWhiteSpace(model.PullbackComment?.ToString()) ? DBNull.Value : (object)model.PullbackComment);
                cmd.Parameters.AddWithValue("@StatusId", model.StatusId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ApprovedBy", model.ApprovedBy ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ApprovalDate", model.ApprovalDate ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ApproverRemarks", string.IsNullOrWhiteSpace(model.ApproverRemarks?.ToString()) ? DBNull.Value : (object)model.ApproverRemarks);
                cmd.Parameters.AddWithValue("@LoginId", model.LoginId);


                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while inserting resignation.", ex);
            }
        }

        public async Task UpdateResignationAsync(ResignationModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateResignation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id);
                cmd.Parameters.AddWithValue("@UserId", model.UserId);
                cmd.Parameters.AddWithValue("@ResignationTypeId", model.ResignationTypeId);
                cmd.Parameters.AddWithValue("@ResignationReasonId", model.ResignationReasonId);
                cmd.Parameters.AddWithValue("@ResignationLetterDate", model.ResignationLetterDate);
                cmd.Parameters.AddWithValue("@RequestedRelievingDate", model.RequestedRelievingDate);
                cmd.Parameters.AddWithValue("@ActualRelievingDate", model.ActualRelievingDate);
                cmd.Parameters.AddWithValue("@NoticePeriod", model.NoticePeriod);
                cmd.Parameters.AddWithValue("@EndOfNoticePeriod", model.EndOfNoticePeriod);
                cmd.Parameters.AddWithValue("@MailingAddress", string.IsNullOrWhiteSpace(model.MailingAddress?.ToString()) ? DBNull.Value : (object)model.MailingAddress);
                cmd.Parameters.AddWithValue("@Address", string.IsNullOrWhiteSpace(model.Address?.ToString()) ? DBNull.Value : (object)model.Address);
                cmd.Parameters.AddWithValue("@PersonalEmailid", string.IsNullOrWhiteSpace(model.PersonalEmailid?.ToString()) ? DBNull.Value : (object)model.PersonalEmailid);
                cmd.Parameters.AddWithValue("@Comments", string.IsNullOrWhiteSpace(model.Comments?.ToString()) ? DBNull.Value : (object)model.Comments);
                cmd.Parameters.AddWithValue("@AttachmentFile", string.IsNullOrWhiteSpace(model.AttachmentFile?.ToString()) ? DBNull.Value : (object)model.AttachmentFile);
                cmd.Parameters.AddWithValue("@PullbackComment", string.IsNullOrWhiteSpace(model.PullbackComment?.ToString()) ? DBNull.Value : (object)model.PullbackComment);
                cmd.Parameters.AddWithValue("@StatusId", model.StatusId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ApprovedBy", model.ApprovedBy ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ApprovalDate", model.ApprovalDate ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ApproverRemarks", string.IsNullOrWhiteSpace(model.ApproverRemarks?.ToString()) ? DBNull.Value : (object)model.ApproverRemarks);
                cmd.Parameters.AddWithValue("@LoginId", model.LoginId);


                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while updating resignation.", ex);
            }
        }

        public async Task DeleteResignationAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteResignation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while deleting resignation.", ex);
            }
        }
    }
}
