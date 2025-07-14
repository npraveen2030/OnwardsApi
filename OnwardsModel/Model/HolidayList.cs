using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
  public class HolidayListModel : BaseModel
  {
    public int HolidayId { get; set; }
    public DateTime HolidayDate { get; set; }
    public string HolidayName { get; set; }
    public int LocationId { get; set; }
    public string Location { get; set; }
    public int Year { get; set; }
  }
}
