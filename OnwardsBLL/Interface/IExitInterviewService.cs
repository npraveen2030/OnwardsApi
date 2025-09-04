using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IExitInterviewService
    {
        public Task<List<ExitInterviewQuestionDto>> GetExitInterview();
        public Task InsertExitInterview(List<AdminExitInterviewModel> Questions);

        public Task InsertOrUpdateUserExitInterviewAsync(List<UserExitInterviewModel> model);

        public Task DeleteUserExitInterviewAsync(int id, int loginId);
        public Task<List<UserExitInterviewModel>> GetUserExitInterviewAsync(int userId);
    }
}
