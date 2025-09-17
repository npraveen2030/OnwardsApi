using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class JobDetailModel : BaseModel
    {
        public int Id { get; set; }
        public int ProjectId { get; set; }
        public int RoleId { get; set; }
        public string RolePurpose { get; set; }
        public int LocationId { get; set; }
        public int CompanyId { get; set; }
        public string[] Skills { get; set; }
        public string[] NonDbSkills { get;set;}
        public string Responsibilities { get; set; }
        public string EducationDetails { get; set; }
        public string ExperienceRequired { get; set; }
        public string DomainFunctionalSkills { get; set; }
        public int RequesitionBy { get; set; }
        public DateTime RequesitionDate { get; set; }
    }
}
