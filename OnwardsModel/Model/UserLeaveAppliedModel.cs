using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace OnwardsModel.Model
{
    public class UserLeaveAppliedModel : BaseModel
    {
        public int? Id { get; set; }
        public int LeaveTypeId { get; set; }

        public int Year { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }

        public string? Reason { get; set; }

        public string? Action { get; set; }

        public string? FileName { get; set; }

        public string? ContentType { get; set; }

        public byte[]? Data { get; set; }

        public int LeaveStatusId { get; set; }
    }
}
