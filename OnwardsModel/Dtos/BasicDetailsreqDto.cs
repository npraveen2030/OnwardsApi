using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class BasicDetailsreqDto : BaseDto
    {
        [Required]
        [StringLength(255)]
        public string CompanyName { get; set; } = null!;

        [Required]
        public DateTime StartDate { get; set; }

        [Required]
        public DateTime EndDate { get; set; }

        [Required]
        public bool MaritalStatus { get; set; }

        [Required]
        public int TitleId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; } = null!;

        [Required]
        public bool IsHavingChildren { get; set; } = false;

        [Required]
        [StringLength(100)]
        public string ChildName { get; set; } = null!;

        [Required]
        public int GenderId { get; set; }

        [Required]
        public DateTime DateOfBirth { get; set; }

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
