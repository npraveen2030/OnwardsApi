using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
    }
}
