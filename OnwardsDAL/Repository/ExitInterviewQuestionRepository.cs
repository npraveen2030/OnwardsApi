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
                        ExitInterviewName = reader.GetString(reader.GetOrdinal("Value")),
                        Question = reader.GetString(reader.GetOrdinal("Question")),
                        HasOptions = reader.GetBoolean(reader.GetOrdinal("HasOptions"))
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
                        Description = readeropt.GetString(readeropt.GetOrdinal("Description"))
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

        public async Task InsertOrUpdateUserExitInterviewAsync(List<UserExitInterviewModel> answers)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserExitInterview", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Create DataTable matching Onwards.AnswerType
                var dataTableAnswers = new DataTable();
                dataTableAnswers.Columns.Add("UserId", typeof(int));
                dataTableAnswers.Columns.Add("QuestionId", typeof(int));
                dataTableAnswers.Columns.Add("OptionId", typeof(int));
                dataTableAnswers.Columns.Add("Answer", typeof(string));
                dataTableAnswers.Columns.Add("LoginId", typeof(int));

                // Populate rows
                foreach (var answer in answers)
                {
                    dataTableAnswers.Rows.Add(
                        answer.UserId,
                        answer.QuestionId,
                        answer.OptionId ?? (object)DBNull.Value,
                        string.IsNullOrEmpty(answer.Answer) ? (object)DBNull.Value : answer.Answer,
                        answer.LoginId
                    );
                }

                // Create structured TVP parameter
                var tvpParam = new SqlParameter("@Answers", SqlDbType.Structured)
                {
                    TypeName = "Onwards.AnswerType",
                    Value = dataTableAnswers
                };

                cmd.Parameters.Add(tvpParam);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting or updating User Exit Interview answers.", ex);
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

        public async Task<List<UserExitInterviewModel>> GetUserExitInterviewAsync(int userId)
        {
            try
            {
                var answers = new List<UserExitInterviewModel>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserExitInterview", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Add parameter
                cmd.Parameters.AddWithValue("@UserId", userId);

                // Execute reader
                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var answer = new UserExitInterviewModel
                    {
                        QuestionId = reader.GetInt32(reader.GetOrdinal("QuestionId")),
                        OptionId = reader.IsDBNull(reader.GetOrdinal("OptionId"))
                                    ? (int?)null
                                    : reader.GetInt32(reader.GetOrdinal("OptionId")),
                        Answer = reader.IsDBNull(reader.GetOrdinal("Answer"))
                                    ? null
                                    : reader.GetString(reader.GetOrdinal("Answer"))
                    };

                    answers.Add(answer);
                }

                return answers;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching User Exit Interview answers.", ex);
            }
        }

    }
}
