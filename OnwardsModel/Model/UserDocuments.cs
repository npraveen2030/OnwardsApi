using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("UserDocuments", Schema = "Onwards")]
    public class UserDocument : BaseModel
    {
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
