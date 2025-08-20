using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class UserLeaveAppliedDto : BaseDto
    {
        public int Id { get; set; }
        public string LeaveTypeName { get; set; } = "";
        public decimal NoOfDays { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string StatusName { get; set; } = "";
    }
}
