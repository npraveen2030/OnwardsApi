using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace OnwardsModel.Model
{
    [Table("DocumentTypes", Schema = "Onwards")]
    public class DocumentType : BaseModel
    {

        [Required]
        [StringLength(100)]
        public string Name { get; set; } = null!;

    }
}
