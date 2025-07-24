using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
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
    public class UserExitInterviewRepository : IUserExitInterviewRepository
    {
        private readonly IConfiguration _configuration;

        public UserExitInterviewRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        public async Task InsertUserExitInterviewAsync(UserExitInterviewModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertUserExitInterview", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@ExitInterviewId", model.ExitInterviewId);
                cmd.Parameters.AddWithValue("@QuestionId", model.QuestionId);
                cmd.Parameters.AddWithValue("@OptionId", model.OptionId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Answer", model.Answer ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting UserExitInterview.", ex);
            }
        }

        public async Task UpdateUserExitInterviewAsync(UserExitInterviewModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateUserExitInterview", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id);
                cmd.Parameters.AddWithValue("@ExitInterviewId", model.ExitInterviewId);
                cmd.Parameters.AddWithValue("@QuestionId", model.QuestionId);
                cmd.Parameters.AddWithValue("@OptionId", model.OptionId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Answer", model.Answer ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating UserExitInterview.", ex);
            }
        }

        public async Task DeleteUserExitInterviewAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteUserExitInterview", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while deleting UserExitInterview.", ex);
            }
        }
    }

}
