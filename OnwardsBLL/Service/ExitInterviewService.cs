using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class ExitInterviewService (IExitInterviewQuestionRepository _repoQuestions,
        IExitInterviewOptionRepository _repoOptions) : IExitInterviewService
    {
        public async Task InsertExitInterview(AdminExitInterviewModel Questions)
        {
            await _repoQuestions.InsertExitInterviewQuestionAsync(Questions.ExitInterviewQuestions);
            await _repoOptions.InsertExitInterviewOptionAsync(Questions.ExitInterviewOptions);
        }
    }
}
