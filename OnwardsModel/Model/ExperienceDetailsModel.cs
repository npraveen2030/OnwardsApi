using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class ExperienceDetailsModel : BaseModel
    {
        public decimal PreviousExperience { get; set; }
        public decimal TotalExperience { get; set; }
        public decimal RelevantExperience { get; set; }
        public string CurrentEmployer { get; set; } = null!;

        public string CurrentDesignation { get; set; } = null!;
        public decimal PreviousOnwardExperience { get; set; }
        public string? PreviousOnwardEmployeeCode { get; set; }
    }

}
