using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class HolidayListModel : BaseModel
    {
        public int Id { get; set; }
        public DateTime HolidayDate { get; set; }
        public string HolidayName { get; set; }
        public int LocationId { get; set; }
        public string Location { get; set; }
        public int Year { get; set; }

        //public int Id { get; set; }                     // Primary Key
        //public DateTime Date { get; set; }              // Holiday Date
        //public string? Day { get; set; }                // Optional day name
        //public int LocationId { get; set; }             // FK to Locations table
        //public string? Description { get; set; }        // Holiday name/description

        //public DateTime CreatedDate { get; set; }       // Audit
        //public int? CreatedBy { get; set; }
        //public DateTime? ModifiedDate { get; set; }
        //public int? ModifiedBy { get; set; }
        //public bool IsActive { get; set; }
    }
}
