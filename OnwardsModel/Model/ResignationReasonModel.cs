using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("ResignationReason", Schema = "Onwards")]
    public class ResignationReasonModel : BaseModel
    {
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Reason { get; set; } = null!;
    }
}
