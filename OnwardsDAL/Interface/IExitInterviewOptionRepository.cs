using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IExitInterviewOptionRepository
    {
        Task InsertExitInterviewOptionAsync(List<ExitInterviewOptionModel> Options);
        Task UpdateExitInterviewOptionAsync(ExitInterviewOptionModel model);
        Task DeleteExitInterviewOptionAsync(int id, int loginId);
    }
}