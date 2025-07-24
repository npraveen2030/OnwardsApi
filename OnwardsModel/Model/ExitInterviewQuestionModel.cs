using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("ExitInterviewQuestions", Schema = "Onwards")]
    public class ExitInterviewQuestionModel : BaseModel
    {
        public int Id { get; set; }

        [Required]
        public int? ExitInterviewId { get; set; }

        [Required]
        [StringLength(500)]
        public string Question { get; set; } = null!;

        [Required]
        public bool? HasOptions { get; set; }
    }
}
