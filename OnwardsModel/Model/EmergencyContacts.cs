using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("EmergencyContacts", Schema = "Onwards")]
    public class EmergencyContact : BaseModel
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(150)]
        public string ContactName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string ContactRelationship { get; set; } = null!;

        [Required]
        [StringLength(15)]
        public string PrimaryContactNumber { get; set; } = null!;

        [StringLength(15)]
        public string? SecondaryContactNumber { get; set; }
    }
}
