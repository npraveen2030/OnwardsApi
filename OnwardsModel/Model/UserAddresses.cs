using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("UserAddresses", Schema = "Onwards")]
    public class UserAddress : BaseModel
    {
        [Required]
        [StringLength(50)]
        public string DoorNo { get; set; } = null!;

        [Required]
        [StringLength(255)]
        public string AddressLine { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string State { get; set; } = null!;

        [Required]
        [StringLength(20)]
        public string Pincode { get; set; } = null!;

        [Required]
        public bool IsPresentAddress { get; set; }

        [Required]
        public bool SameAsPresent { get; set; }
    }
}
