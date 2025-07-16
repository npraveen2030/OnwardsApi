using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class PersonalDetailsDto : BaseDto
    {
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
        public int? PrimaryContactNumber_BasicDetails { get; set; }

        [Required]
        public int? Gender { get; set; }

        [Required]
        [StringLength(50)]
        public string FatherOrHusbandName { get; set; } = null!;

        [Required]
        [DataType(DataType.Date)]
        public DateTime DOB { get; set; }

        [Required]
        public int? Nationality { get; set; }

        [Required]
        public int? DifferentlyAbled { get; set; }

        [Required]
        public int? VaccinationStatus { get; set; }

        [Required]
        public int? BloodGroup { get; set; }

        [Required]
        public int? BloodDonor { get; set; }

        [Required]
        [StringLength(10)]
        public string PanNumber { get; set; } = null!;

        [Required]
        public int? AadhaarCardno { get; set; }

        public List<UserAddress> UserAddresses { get; set; } = [new UserAddress() {IsPresentAddress = true },
            new UserAddress() { IsPresentAddress = false }];

        [Required]
        [StringLength(30)]
        public string PFNo { get; set; } = null!;

        [Required]
        [StringLength(30)]
        public string UANNo { get; set; } = null!;

        [Required]
        [StringLength(30)]
        public string ESICNo { get; set; } = null!;

        [Required]
        [StringLength(30)]
        public string BankAccountNumber { get; set; } = null!;

        [Required]
        [StringLength(150)]
        public string AccountHolderName { get; set; } = null!;

        [Required]
        [StringLength(15)]
        public string IFSCCode { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string BankName { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string BranchName { get; set; } = null!;

        [Required]
        [StringLength(150)]
        public string ContactName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string ContactRelationship { get; set; } = null!;

        [Required]
        [StringLength(15)]
        public string PrimaryContactNumber_EmergencyContactDetails { get; set; } = null!;

        [StringLength(15)]
        public string? SecondaryContactNumber { get; set; }
    }
}
