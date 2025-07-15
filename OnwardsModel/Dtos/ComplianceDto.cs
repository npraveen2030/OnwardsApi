using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ComplianceDto : BaseDto
    {
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
