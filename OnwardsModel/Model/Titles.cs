using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("Titles", Schema = "Onwards")]
    public class Title : BaseModel
    {
        [Required]
        [StringLength(20)]
        public string TitleName { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string Description { get; set; } = null!;
    }
}
