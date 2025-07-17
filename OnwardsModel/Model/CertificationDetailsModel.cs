using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class CertificationDetailsModel : BaseModel
    {
        public string Course { get; set; } = null!;
        public string Institute { get; set; } = null!;
        public int Year { get; set; }
    }
}
