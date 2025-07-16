using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("MaritalStatus", Schema = "Onwards")]
    public class MaritalStatus : BaseModel
    {
        [Required]
        public bool Status { get; set; }

        [Required]
        public int TitleId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; } = null!;

        [Required]
        public bool IsHavingChildren { get; set; } = false;
    }
}
