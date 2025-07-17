using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class SkillDetailsModel : BaseModel
    {
        public string PrimarySkills { get; set; } = null!;
        public string SecondarySkills { get; set; } = null!;
    }

}
