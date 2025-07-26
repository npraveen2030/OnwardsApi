using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ExitInterviewOptionDto : BaseDto
    {
        public int Id { get; set; } 

        [Required]
        public int? QuestionId { get; set; }

        [Required]
        [StringLength(100)]
        public string Description { get; set; } = null!;
    }
}
