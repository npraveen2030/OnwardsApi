using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class AdminExitInterviewModel
    {
        public List<ExitInterviewQuestionModel> ExitInterviewQuestions { get; set; } = new List<ExitInterviewQuestionModel>();
        public List<ExitInterviewOptionModel> ExitInterviewOptions { get; set; } = new List<ExitInterviewOptionModel> ();
    }
}
