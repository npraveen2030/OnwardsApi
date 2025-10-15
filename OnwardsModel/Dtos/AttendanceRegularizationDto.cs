using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class AttendanceRegularizationDto
    {
        public int Id { get; set; }
        public int UserId { get;set;}
        public string FullName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal Duration { get; set; }
        public string Reason { get; set; }
        public string Action { get; set; }
        public string StatusName { get; set; }
    }
}
