using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class EducationDetailsModel : BaseModel
    {
        public string Qualification { get; set; } = null!;
        public string Specialization { get; set; } = null!;
        public string CollegeName { get; set; } = null!;
        public int Year { get; set; }
        public string BoardOrUniversity { get; set; } = null!;
        public decimal Percentage { get; set; }
    }
}
