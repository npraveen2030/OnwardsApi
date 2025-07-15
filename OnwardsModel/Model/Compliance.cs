using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("Compliance", Schema = "Onwards")]
    public class Compliance : BaseModel
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(30)]
        public string PFNo { get; set; } = null!;

        [Required]
        [StringLength(30)]
        public string UANNo { get; set; } = null!;

        [Required]
        [StringLength(30)]
        public string ESICNo { get; set; } = null!;
    }
}
