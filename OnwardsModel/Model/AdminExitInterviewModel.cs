﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class AdminExitInterviewModel : BaseModel
    {
        public int? Id { get; set; } = null;

        public int RowIndex { get; set; }

        [Required]
        public int? ExitInterviewId { get; set; }

        [Required]
        [StringLength(500)]
        public string Question { get; set; } = null!;

        [Required]
        public bool? HasOptions { get; set; }
        public List<ExitInterviewOptionModel> ExitInterviewOptions { get; set; } = new List<ExitInterviewOptionModel> ();
    }
}
