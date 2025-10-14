using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class LeavesAndAttendanceDto
    {
        public bool IsLeave { get; set; }
        public int Id { get; set; }
        public int? LeaveTypeId { get; set; }
        public string? LeaveTypeName { get; set; }   // for leave
        public int? Type { get; set; }               // for attendance regularization
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal Duration { get; set; }
        public string? Status { get; set; }
        public string? Reason { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
