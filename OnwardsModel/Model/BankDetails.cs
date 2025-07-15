using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("BankDetails", Schema = "Onwards")]
    public class BankDetail : BaseModel
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(30)]
        public string BankAccountNumber { get; set; } = null!;

        [Required]
        [StringLength(150)]
        public string AccountHolderName { get; set; } = null!;

        [Required]
        [StringLength(15)]
        public string IFSCCode { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string BankName { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string BranchName { get; set; } = null!;
    }
}
