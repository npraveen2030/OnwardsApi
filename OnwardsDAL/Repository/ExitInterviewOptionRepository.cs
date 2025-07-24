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
    public class ExitInterviewOptionRepository : IExitInterviewOptionRepository
    {
        private readonly IConfiguration _configuration;

        public ExitInterviewOptionRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        public async Task InsertExitInterviewOptionAsync(List<ExitInterviewOptionModel> Options)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertExitInterviewOption", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                var dataTable = new DataTable();
                dataTable.Columns.Add("QuestionId", typeof(int));
                dataTable.Columns.Add("Description", typeof(string));
                dataTable.Columns.Add("LoginId", typeof(int));

                foreach (var option in Options)
                {
                    dataTable.Rows.Add(
                        option.QuestionId,
                        option.Description,
                        option.LoginId
                    );
                }

                var tvpParam = new SqlParameter("@Options", SqlDbType.Structured)
                {
                    TypeName = "Onwards.ExitInterviewOptionType",
                    Value = dataTable
                };

                cmd.Parameters.Add(tvpParam);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting ExitInterviewOption.", ex);
            }
        }

        public async Task UpdateExitInterviewOptionAsync(ExitInterviewOptionModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateExitInterviewOption", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id);
                cmd.Parameters.AddWithValue("@QuestionId", model.QuestionId);
                cmd.Parameters.AddWithValue("@Description", model.Description);
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating ExitInterviewOption.", ex);
            }
        }

        public async Task DeleteExitInterviewOptionAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteExitInterviewOption", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while deleting ExitInterviewOption.", ex);
            }
        }
    }

}
