using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IExitInterviewQuestionRepository
    {
        public Task<List<ExitInterviewQuestionDto>> GetExitInterview();
        public Task InsertExitInterviewQuestionAsync(List<AdminExitInterviewModel> questions);

        public Task InsertOrUpdateUserExitInterviewAsync(List<UserExitInterviewModel> model);

        public Task DeleteUserExitInterviewAsync(int id, int loginId);
        public Task<List<UserExitInterviewModel>> GetUserExitInterviewAsync(int userId);
    }
}