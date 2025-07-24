using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserExitInterviewRepository
    {
        Task InsertUserExitInterviewAsync(UserExitInterviewModel model);
        Task UpdateUserExitInterviewAsync(UserExitInterviewModel model);
        Task DeleteUserExitInterviewAsync(int id, int loginId);
    }
}
