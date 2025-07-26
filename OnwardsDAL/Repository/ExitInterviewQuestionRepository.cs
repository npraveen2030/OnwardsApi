using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
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

        public async Task<List<ExitInterviewQuestionDto>> GetExitInterview()
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmdQuestion = new SqlCommand("Onwards.GetExitInterviewQuestions", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                var questions = new List<ExitInterviewQuestionDto>();

                await using var reader = await cmdQuestion.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var question = new ExitInterviewQuestionDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        ExitInterviewId = reader.GetInt32(reader.GetOrdinal("ExitInterviewId")),
                        Question = reader.GetString(reader.GetOrdinal("Question")),
                        HasOptions = reader.GetBoolean(reader.GetOrdinal("HasOptions")),
                        CreatedDate = reader.IsDBNull(reader.GetOrdinal("CreatedDate")) ? null : reader.GetDateTime(reader.GetOrdinal("CreatedDate")),
                        CreatedBy = reader.IsDBNull(reader.GetOrdinal("CreatedBy")) ? null : reader.GetInt32(reader.GetOrdinal("CreatedBy")),
                        ModifiedDate = reader.IsDBNull(reader.GetOrdinal("ModifiedDate")) ? null : reader.GetDateTime(reader.GetOrdinal("ModifiedDate")),
                        ModifiedBy = reader.IsDBNull(reader.GetOrdinal("ModifiedBy")) ? null : reader.GetInt32(reader.GetOrdinal("ModifiedBy")),
                        IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive"))
                    };

                    questions.Add(question);
                }

                await reader.DisposeAsync();

                await using var cmdOption = new SqlCommand("Onwards.GetExitInterviewOptions", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                var Options = new List<ExitInterviewOptionDto>();

                await using var readeropt = await cmdOption.ExecuteReaderAsync();
                while (await readeropt.ReadAsync())
                {
                    var option = new ExitInterviewOptionDto
                    {
                        Id = readeropt.GetInt32(readeropt.GetOrdinal("Id")),
                        QuestionId = readeropt.GetInt32(readeropt.GetOrdinal("QuestionId")),
                        Description = readeropt.GetString(readeropt.GetOrdinal("Description")),
                        CreatedDate = readeropt.IsDBNull(readeropt.GetOrdinal("CreatedDate")) ? null : readeropt.GetDateTime(readeropt.GetOrdinal("CreatedDate")),
                        CreatedBy = readeropt.IsDBNull(readeropt.GetOrdinal("CreatedBy")) ? null : readeropt.GetInt32(readeropt.GetOrdinal("CreatedBy")),
                        ModifiedDate = readeropt.IsDBNull(readeropt.GetOrdinal("ModifiedDate")) ? null : readeropt.GetDateTime(readeropt.GetOrdinal("ModifiedDate")),
                        ModifiedBy = readeropt.IsDBNull(readeropt.GetOrdinal("ModifiedBy")) ? null : readeropt.GetInt32(readeropt.GetOrdinal("ModifiedBy")),
                        IsActive = readeropt.GetBoolean(readeropt.GetOrdinal("IsActive"))
                    };

                    questions.FirstOrDefault(q => q.Id == option.QuestionId)?.exitInterviewOptions.Add(option);
                }

                return questions;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while Getting ExitInterviewQuestion.", ex);
            }
        }

        public async Task InsertExitInterviewQuestionAsync(List<AdminExitInterviewModel> questions)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                // InsertingOrUpdatingQuestions
                await using var cmdQuestion = new SqlCommand("Onwards.InsertOrUpdateExitInterviewQuestions", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // DataTable --> Questions
                var dataTableQuestions = new DataTable();
                dataTableQuestions.Columns.Add("RowIndex", typeof(int));
                dataTableQuestions.Columns.Add("LoginId", typeof(int));
                dataTableQuestions.Columns.Add("Id", typeof(int));
                dataTableQuestions.Columns.Add("ExitInterviewId", typeof(int));
                dataTableQuestions.Columns.Add("Question", typeof(string));
                dataTableQuestions.Columns.Add("HasOptions", typeof(bool));
                dataTableQuestions.Columns.Add("IsActive", typeof(bool));

                int index = 0;

                foreach (var question in questions)
                {
                    index++;
                    question.RowIndex = index;

                    dataTableQuestions.Rows.Add(
                        question.RowIndex,
                        question.LoginId,
                        question.Id ?? (object)DBNull.Value,
                        question.ExitInterviewId,
                        question.Question,
                        question.HasOptions,
                        question.IsActive
                    );
                }

                var tvpParamQues = new SqlParameter("@Questions", SqlDbType.Structured)
                {
                    TypeName = "Onwards.ExitInterviewQuestionsType",
                    Value = dataTableQuestions
                };

                cmdQuestion.Parameters.Add(tvpParamQues);

                var createdIds = new List<(int Id, int RowIndex)>();

                await using var reader = await cmdQuestion.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var id = reader.GetInt32(0);
                    var rowIndex = reader.GetInt32(1);
                    createdIds.Add((id, rowIndex));
                }

                await reader.DisposeAsync();

                foreach (var question in questions)
                {
                    foreach (var cid in createdIds)
                    {
                        if (question.RowIndex == cid.RowIndex)
                        {
                            question.Id = cid.Id;
                            if (question.HasOptions == true)
                            {
                                foreach (var option in question.ExitInterviewOptions)
                                {
                                    option.QuestionId = cid.Id;
                                }
                            }
                        }
                    }
                }

                // InsertingOrUpdatingoptions
                await using var cmdOption = new SqlCommand("Onwards.InsertOrUpdateExitInterviewOptions", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // DataTable --> Options
                var dataTableOptions = new DataTable();
                dataTableOptions.Columns.Add("LoginId", typeof(int));
                dataTableOptions.Columns.Add("Id", typeof(int));
                dataTableOptions.Columns.Add("QuestionId", typeof(int));
                dataTableOptions.Columns.Add("Description", typeof(string));
                dataTableOptions.Columns.Add("IsActive", typeof(bool));

                foreach (var question in questions.Where(q => q.HasOptions == true).ToList())
                {
                    foreach (var option in question.ExitInterviewOptions)
                    {
                        dataTableOptions.Rows.Add(
                        option.LoginId,
                        option.Id ?? (object)DBNull.Value,
                        option.QuestionId,
                        option.Description,
                        option.IsActive
                        );
                    }
                }

                var tvpParamOpt = new SqlParameter("@Options", SqlDbType.Structured)
                {
                    TypeName = "Onwards.ExitInterviewOptionsType",
                    Value = dataTableOptions
                };

                cmdOption.Parameters.Add(tvpParamOpt);
                await cmdOption.ExecuteNonQueryAsync();

            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting ExitInterviewQuestion.", ex);
            }
        }
    }
}
