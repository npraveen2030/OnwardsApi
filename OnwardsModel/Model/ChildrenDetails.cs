using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("ChildrenDetails", Schema = "Onwards")]
    public class ChildrenDetail : BaseModel
    {
        [Required]
        [StringLength(100)]
        public string ChildName { get; set; } = null!;

        [Required]
        public int GenderId { get; set; }

        [Required]
        public DateTime DateOfBirth { get; set; }
    }
}
