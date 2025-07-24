using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class ResignationTypeRepository : IResignationTypeRepository
    {
        private readonly IConfiguration _configuration;

        public ResignationTypeRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task InsertResignationTypeAsync(ResignationTypeModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertResignationType", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@TypeName", string.IsNullOrWhiteSpace(model.TypeName) ? DBNull.Value : (object)model.TypeName);
                cmd.Parameters.AddWithValue("@Description", string.IsNullOrWhiteSpace(model.Description) ? DBNull.Value : (object)model.Description);
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while inserting ResignationType.", ex);
            }
        }

        public async Task UpdateResignationTypeAsync(ResignationTypeModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateResignationType", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id);
                cmd.Parameters.AddWithValue("@TypeName", string.IsNullOrWhiteSpace(model.TypeName) ? DBNull.Value : (object)model.TypeName);
                cmd.Parameters.AddWithValue("@Description", string.IsNullOrWhiteSpace(model.Description) ? DBNull.Value : (object)model.Description);
                cmd.Parameters.AddWithValue("@LoginId", model.ModifiedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while updating ResignationType.", ex);
            }
        }

        public async Task DeleteResignationTypeAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteResignationType", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while deleting ResignationType.", ex);
            }
        }
    }
}
