using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IExitInterviewQuestionRepository
    {
        public Task<List<ExitInterviewQuestionDto>> GetExitInterview();
        public Task InsertExitInterviewQuestionAsync(List<AdminExitInterviewModel> questions);
    }
}