using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class AdminScheduleDto
    {
        public int Id { get; set; }
        public int CompanyId { get; set; }
        public string CompanyName { get; set; }
        public int NoOfDays { get; set; }
        public bool UserScheduleHoliday { get; set; }
        public bool UserScheduleWeekOff { get; set; }
    }
}
