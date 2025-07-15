using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class EmergencyContactsDto : BaseDto
    {
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
