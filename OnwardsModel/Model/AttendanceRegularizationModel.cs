using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class AttendanceRegularizationModel
    {
        public int UserId { get; set; }
        public int TypeId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal Duration { get; set; }   
        public string Reason { get; set; } = "";
        public int LoginId { get; set; }
    }
}
