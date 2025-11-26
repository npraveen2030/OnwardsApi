using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class AdminScheduleModel   
    {
        public int? Id { get; set; }        
        public int CompanyId { get; set; }
        public int NoOfDays { get; set; }
        public bool UserScheduleHoliday { get; set; }
        public bool UserScheduleWeekOff { get; set; }
        public int LoginId { get; set; }
    }

    public class AdminScheduleDeleteModel
    {
        public int Id { get; set; }
        public int LoginId { get; set; }
    }
}
