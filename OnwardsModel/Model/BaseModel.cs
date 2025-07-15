using System.ComponentModel.DataAnnotations;

namespace OnwardsModel.Model
{
  public class BaseModel
  {
        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "UserId must be a positive integer.")]
        public int? UserId { get; set; }

        public int LoginId { get; set; }
       public int? CreatedBy { get; set; }

       public DateTime? CreatedDate { get; set; }

       public int? ModifiedBy { get; set; }

       public DateTime? ModifiedDate { get; set; }

       public bool IsActive { get; set; } = true;
  }
}
