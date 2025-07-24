using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class LeavesAddedModel : BaseModel
    {
        public int LeaveTypeId { get; set; }
        public int NoOfLeaves { get; set; }
    }
}
