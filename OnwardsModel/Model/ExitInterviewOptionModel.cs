using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("ExitInterviewOptions", Schema = "Onwards")]
    public class ExitInterviewOptionModel : BaseModel
    {
        public int Id { get; set; }

        [Required]
        public int? QuestionId { get; set; }

        [Required]
        [StringLength(100)]
        public string Description { get; set; } = null!;
    }
}
