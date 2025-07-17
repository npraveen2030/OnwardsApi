using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("BasicUserDetails", Schema = "Onwards")]
    public class BasicUserDetail : BaseModel
    {
        //[Required]
        //public int UserId { get; set; }

        [Required]
        [StringLength(50)]
        public string FirstName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string MiddleName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string LastName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string PersonalEmailID { get; set; } = null!;

        [Required]
        public int PrimaryContactNumber { get; set; }

        [Required]
        public int Gender { get; set; }

        [Required]
        [StringLength(50)]
        public string FatherOrHusbandName { get; set; } = null!;

        [Required]
        [DataType(DataType.Date)]
        public DateTime DOB { get; set; }

        [Required]
        public int Nationality { get; set; }

        [Required]
        public int DifferentlyAbled { get; set; }

        [Required]
        public int VaccinationStatus { get; set; }

        [Required]
        public int BloodGroup { get; set; }

        [Required]
        public int BloodDonor { get; set; }

        [Required]
        [StringLength(10)]
        public string PanNumber { get; set; } = null!;

        [Required]
        public int AadhaarCardno { get; set; }
    }
}
