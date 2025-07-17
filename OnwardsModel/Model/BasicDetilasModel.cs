using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class BasicDetilasModel : BaseModel
    {
        public List<EducationDetailsModel> EducationDetails { get; set; } = new List<EducationDetailsModel>();

        public List<CertificationDetailsModel> CertificationDetails { get; set; } = new List<CertificationDetailsModel>();

        public string PrimarySkills { get; set; } = null!;
        public string SecondarySkills { get; set; } = null!;

        public decimal PreviousExperience { get; set; }
        public decimal TotalExperience { get; set; }
        public decimal RelevantExperience { get; set; }
        public string NameOfCurrentEmployer { get; set; } = null!;

        public string CurrentDesignation { get; set; } = null!;
        public decimal PreviousOnwardExperience { get; set; }
        public string? PreviousOnwardEmployeeCode { get; set; }

        public List<PreviousExperienceDetailModel> PreviousExperienceDetail { get; set; } = new List<PreviousExperienceDetailModel>();

        [Required]
        public bool MaritalStatus { get; set; }

        [Required]
        public int TitleId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; } = null!;

        [Required]
        public bool IsHavingChildren { get; set; } = false;

        public List<ChildrenDetailModel> Children { get; set; } = new List<ChildrenDetailModel> ();

        [Required]
        [StringLength(50)]
        public string DocumentTypeId { get; set; } = null!;

        [Required]
        [StringLength(255)]
        public string FileName { get; set; } = null!;

        [Required]
        [StringLength(500)]
        public string FilePath { get; set; } = null!;

        public bool IsVerified { get; set; } = false;
        public DateTime? VerifiedDate { get; set; }
        public int? VerifiedBy { get; set; }
    }
}
