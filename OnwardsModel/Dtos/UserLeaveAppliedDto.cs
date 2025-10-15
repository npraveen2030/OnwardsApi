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
        public int UserId { get;set;}
        public string FullName { get; set; }
        public string PhoneNo { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal NoOfDays { get; set; }
        public string Reason { get; set; }
        public string Action { get; set; }
        public string NotifiedUserName { get; set; }
        public string LeaveTypeName { get; set; }
        public string StatusName { get; set; }
        public string FileName { get; set; }
    }

    public class UserLeaveAppliedDetailsDto
    {
        public string UserName { get; set; } = string.Empty;
        public string ManagerName { get; set; } = string.Empty;
        public string LeaveTypeName { get; set; } = string.Empty;
        public decimal NoOfDays { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Reason { get; set; } = string.Empty;
        public string? Action { get; set; }
        public string StatusName { get; set; } = string.Empty;
    }
}
