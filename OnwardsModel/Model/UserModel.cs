using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    [Table("Users", Schema = "Onwards")]
    public class UserModel : BaseModel
    {
        public int? Id { get;set;}

        public int ShiftId { get;set;}

        [Required]
        [StringLength(100)]
        public string Password { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string FullName { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string Email { get; set; } = null!;

        [Required]
        [StringLength(20)]
        public string Mobile { get; set; } = null!;

        public int LocationId { get;set;}

        [Required]
        public DateTime DOJ { get; set; }

        [Required]
        public DateTime DOR { get; set; }

        [Required]
        public int? RoleId { get; set; }

        [Required]
        [Column(TypeName = "decimal(3,2)")]
        public decimal GradeId { get; set; }

        [Required]
        public int? DepartmentId { get; set; }
        public int UserTypeId { get; set; }

        [Required]
        public int? ReportingManagerId { get; set; }

        [Required]
        public int? AdministrativeManagerId { get; set; }
    }

    public class EmailCheckRequest
    {
        public string Email { get; set; }
        public int? UserId { get; set; }
    }
}
