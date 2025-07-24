using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

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
                cmd.Parameters.AddWithValue("@ResignationRelivingDate", model.ResignationRelivingDate);
                cmd.Parameters.AddWithValue("@ResignationActualDate", model.ResignationActualDate);
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
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);


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
                cmd.Parameters.AddWithValue("@ResignationRelivingDate", model.ResignationRelivingDate);
                cmd.Parameters.AddWithValue("@ResignationActualDate", model.ResignationActualDate);
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
                cmd.Parameters.AddWithValue("@LoginId", model.ModifiedBy);


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
