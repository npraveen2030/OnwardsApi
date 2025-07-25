﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class UserAddressesDto : BaseDto
    {
        [Required]
        [StringLength(255)]
        public string PresentDoorNo { get; set; } = null!;

        [Required]
        [StringLength(255)]
        public string PresentAddressLine { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string PresentState { get; set; } = null!;

        [Required]
        [StringLength(10)]
        public string PresentPincode { get; set; } = null!;

        [Required]
        public bool IsSameAsPermanent { get; set; } = false;

        [StringLength(255)]
        public string? PermanentDoorNo { get; set; }

        [StringLength(255)]
        public string? PermanentAddressLine { get; set; }

        [StringLength(100)]
        public string? PermanentState { get; set; }

        [StringLength(10)]
        public string? PermanentPincode { get; set; }
    }
}
