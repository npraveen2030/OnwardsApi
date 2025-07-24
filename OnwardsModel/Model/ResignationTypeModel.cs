using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("ResignationType", Schema = "Onwards")]
    public class ResignationTypeModel : BaseModel
    {
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string TypeName { get; set; } = null!;

        [StringLength(255)]
        public string? Description { get; set; }
    }
}
