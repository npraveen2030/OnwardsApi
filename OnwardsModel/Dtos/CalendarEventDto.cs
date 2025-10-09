using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class CalendarEventDto
    {
        public DateTime Date { get; set; }
        public int StatusId { get; set; }
        public TimeSpan? LoginTime { get; set; }   
        public TimeSpan? LogOutTime { get; set; }
    }
}
