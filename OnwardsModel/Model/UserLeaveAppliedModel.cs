using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class UserLeaveAppliedModel : BaseModel
    {
        public int LeaveTypeId { get; set; }

        public int Year { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }

        public string? Reason { get; set; }

        public int LeaveStatusId { get; set; }
    }

    public class UserLeaveAppliedUpdateModel
    {
        public int Id { get;set;}
        public int LoginId { get; set; }
        public int LeaveStatusId { get; set; }
    }
}
