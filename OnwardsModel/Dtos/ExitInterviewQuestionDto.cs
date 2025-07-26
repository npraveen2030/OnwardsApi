using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ExitInterviewQuestionDto : BaseDto
    {
        public int Id { get; set; }

        [Required]
        public int? ExitInterviewId { get; set; }

        [Required]
        [StringLength(500)]
        public string Question { get; set; } = null!;

        [Required]
        public bool? HasOptions { get; set; }

        public List<ExitInterviewOptionDto> exitInterviewOptions { get; set; } = new List<ExitInterviewOptionDto>();
    }
}
