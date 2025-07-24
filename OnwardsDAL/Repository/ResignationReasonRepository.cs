using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class ResignationReasonRepository : IResignationReasonRepository
    {
        private readonly IConfiguration _configuration;

        public ResignationReasonRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task InsertResignationReasonAsync(ResignationReasonModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertResignationReason", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Reason", string.IsNullOrWhiteSpace(model.Reason) ? DBNull.Value : (object)model.Reason);
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while inserting ResignationReason.", ex);
            }
        }

        public async Task UpdateResignationReasonAsync(ResignationReasonModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateResignationReason", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id);
                cmd.Parameters.AddWithValue("@Reason", string.IsNullOrWhiteSpace(model.Reason) ? DBNull.Value : (object)model.Reason);
                cmd.Parameters.AddWithValue("@LoginId", model.ModifiedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while updating ResignationReason.", ex);
            }
        }

        public async Task DeleteResignationReasonAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteResignationReason", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while deleting ResignationReason.", ex);
            }
        }
    }
}
