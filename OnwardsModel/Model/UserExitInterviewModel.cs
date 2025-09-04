using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("UserExitInterview", Schema = "Onwards")]
    public class UserExitInterviewModel : BaseModel
    {

        [Required]
        public int QuestionId { get; set; }

        public int? OptionId { get; set; }

        [StringLength(500)]
        public string? Answer { get; set; }
    }
}
