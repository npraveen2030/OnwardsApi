using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class AttendanceRegularizationReportDto
    {
        public string EmployeeCode { get; set; }
        public string FullName { get; set; }
        public decimal Total { get; set; }
        public decimal Approved { get; set; }
        public decimal Rejected { get; set; }
    }
}
