using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class LeaveReportDto
    {
        public string EmployeeCode { get; set; }
        public string FullName { get; set; }
        public decimal SickLeave { get; set; }
        public decimal CasualLeave { get; set; }
        public decimal EarnedLeave { get; set; }
        public decimal MaternityLeave { get; set; }
        public decimal PaternityLeave { get; set; }
        public decimal BereavementLeave { get; set; }
        public decimal UnpaidLeave { get; set; }
    }
}
