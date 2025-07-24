using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System.Data;
using System.Data.SqlClient;

namespace OnwardsDAL.Repository
{
        public class ExitInterviewQuestionRepository : IExitInterviewQuestionRepository
    {
        private readonly IConfiguration _configuration;

        public ExitInterviewQuestionRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection()
        {
            return new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        public async Task InsertExitInterviewQuestionAsync(List<ExitInterviewQuestionModel> questions)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertExitInterviewQuestion", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                var dataTable = new DataTable();
                dataTable.Columns.Add("ExitInterviewId", typeof(int));
                dataTable.Columns.Add("Question", typeof(string));
                dataTable.Columns.Add("HasOptions", typeof(bool));
                dataTable.Columns.Add("LoginId", typeof(int));

                foreach (var question in questions)
                {
                    dataTable.Rows.Add(
                        question.ExitInterviewId,
                        question.Question,
                        question.HasOptions,
                        question.LoginId
                    );
                }

                var tvpParam = new SqlParameter("@Questions", SqlDbType.Structured)
                {
                    TypeName = "Onwards.ExitInterviewQuestionType",
                    Value = dataTable
                };

                cmd.Parameters.Add(tvpParam);
                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting ExitInterviewQuestion.", ex);
            }
        }

        public async Task UpdateExitInterviewQuestionAsync(ExitInterviewQuestionModel model)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateExitInterviewQuestion", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", model.Id);
                cmd.Parameters.AddWithValue("@ExitInterviewId", model.ExitInterviewId);
                cmd.Parameters.AddWithValue("@Question", model.Question);
                cmd.Parameters.AddWithValue("@HasOptions", model.HasOptions);
                cmd.Parameters.AddWithValue("@LoginId", model.CreatedBy);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating ExitInterviewQuestion.", ex);
            }
        }

        public async Task DeleteExitInterviewQuestionAsync(int id, int loginId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteExitInterviewQuestion", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@LoginId", loginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while deleting ExitInterviewQuestion.", ex);
            }
        }
        }
}
