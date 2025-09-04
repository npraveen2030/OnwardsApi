using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class ExitInterviewService (IExitInterviewQuestionRepository _repoQuestions) : IExitInterviewService
    {
        public async Task<List<ExitInterviewQuestionDto>> GetExitInterview()
        {
            return await _repoQuestions.GetExitInterview();
        }
        public async Task InsertExitInterview(List<AdminExitInterviewModel> Questions)
        {
            await _repoQuestions.InsertExitInterviewQuestionAsync(Questions);
        }

        public async Task InsertOrUpdateUserExitInterviewAsync(List<UserExitInterviewModel> model)
        {
            await _repoQuestions.InsertOrUpdateUserExitInterviewAsync(model);
        }

        public async Task DeleteUserExitInterviewAsync(int id, int loginId)
        {
            await _repoQuestions.DeleteUserExitInterviewAsync(id, loginId);
        }

        public async Task<List<UserExitInterviewModel>> GetUserExitInterviewAsync(int userId)
        {
            return await _repoQuestions.GetUserExitInterviewAsync(userId);
        }
    }
}
