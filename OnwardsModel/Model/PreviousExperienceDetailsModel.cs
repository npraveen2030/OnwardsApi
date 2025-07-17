using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("PreviousExperienceDetails", Schema = "Onwards")]
    public class PreviousExperienceDetailModel : BaseModel
    {
        [Required]
        [StringLength(255)]
        public string CompanyName { get; set; } = null!;

        [Required]
        [StringLength(255)]
        public string Designation { get; set; } = null!;

        [Required]
        public DateTime StartDate { get; set; }

        [Required]
        public DateTime EndDate { get; set; }
    }
}
