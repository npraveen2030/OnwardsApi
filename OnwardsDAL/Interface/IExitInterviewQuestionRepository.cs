using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IExitInterviewQuestionRepository
    {
        public Task InsertExitInterviewQuestionAsync(List<ExitInterviewQuestionModel> questions);
        Task UpdateExitInterviewQuestionAsync(ExitInterviewQuestionModel model);
        Task DeleteExitInterviewQuestionAsync(int id, int loginId);
    }
}