using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class HolidayListDto : BaseDto
    {
        public int Id { get; set; }
        public DateTime HolidayDate { get; set; }
        public string HolidayName { get; set; } = null!;
        public int LocationId { get; set; }
        public string Location { get; set; } = null!;
        public int Year { get; set; }
    }
}
