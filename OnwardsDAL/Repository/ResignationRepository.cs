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
            try
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
                        NextEmployer =  "" ,
                        MailingAddress = reader["MailingAddress"] as string,
                        Address = reader["Address"] as string,
                        PersonalEmailId = reader["PersonalEmailId"] as string,
                        Comments = reader["Comments"] as string,
                        AttachmentFileName = reader["AttachmentFileName"] as string,
                        AttachmentFile = reader["AttachmentFile"] as byte[],
                        PullbackComment = reader["PullbackComment"] as string,
                        StatusId = reader["StatusId"] as int?,
                        ApprovedBy = reader["ApprovedBy"] as int?,
                        ApprovalDate = reader["ApprovalDate"] as DateTime?,
                        ApproverRemarks = reader["ApproverRemarks"] as string
                    };
                }

                return resignation;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while updating resignation.", ex);
            }
        }

        public async Task InsertOrUpdateResignationAsync(ResignationModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateResignation", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id != 0 ? model.Id : DBNull.Value);
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
                cmd.Parameters.AddWithValue("@PersonalEmailid", string.IsNullOrWhiteSpace(model.PersonalEmailId?.ToString()) ? DBNull.Value : (object)model.PersonalEmailId);
                cmd.Parameters.AddWithValue("@Comments", string.IsNullOrWhiteSpace(model.Comments?.ToString()) ? DBNull.Value : (object)model.Comments);
                cmd.Parameters.AddWithValue("@AttachmentFileName", string.IsNullOrWhiteSpace(model.AttachmentFileName?.ToString()) ? DBNull.Value : (object)model.AttachmentFileName);
                byte[]? fileBytes = null;
                if (model.AttachmentFile != null && model.AttachmentFile.Length > 0)
                {
                    using (var ms = new MemoryStream())
                    {
                        model.AttachmentFile.CopyTo(ms);
                        fileBytes = ms.ToArray();
                    }
                }

                cmd.Parameters.AddWithValue(
                    "@AttachmentFile",
                    (object?)fileBytes ?? DBNull.Value
                );
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

        //public async Task<IEnumerable<ResignationDto>> GetAllResignations(int userId)
        //{
        //    using (var connection = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
        //    {
        //        var parameters = new { UserId = userId };

        //        var result = await connection.QueryAsync<ResignationDto>(
        //            "Onwards.GetAllResignations",
        //            parameters,
        //            commandType: CommandType.StoredProcedure);

        //        return result.ToList();
        //    }
        //}

        public async Task<IEnumerable<ResignationDto>> GetAllResignations(int userId)
        {
            try
            { 
                var resignations = new List<ResignationDto>();

                using (var connection = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                using (var command = new SqlCommand("Onwards.GetAllResignations", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@UserId", userId);

                    await connection.OpenAsync();

                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            var resignation = new ResignationDto
                            {
                                UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                                FullName = reader.GetString(reader.GetOrdinal("EmployeeName")),
                                //CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate")),
                                //CreatedBy = reader.GetInt32(reader.GetOrdinal("CreatedBy")),
                                //ModifiedDate = reader.IsDBNull(reader.GetOrdinal("ModifiedDate"))
                                //                ? null
                                //                : reader.GetDateTime(reader.GetOrdinal("ModifiedDate")),
                                //ModifiedBy = reader.IsDBNull(reader.GetOrdinal("ModifiedBy"))
                                //                ? null
                                //                : reader.GetInt32(reader.GetOrdinal("ModifiedBy")),
                                //IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive")),
                                Status = reader.GetString(reader.GetOrdinal("Status"))
                            };

                            resignations.Add(resignation);
                        }
                    }
                }

                return resignations;
            }
            catch (Exception ex)
            {
                throw new Exception("Error while deleting resignation.", ex);
            }
        }

    }
}
