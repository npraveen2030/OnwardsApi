using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class SchedulerDetailsDto
    {
        public int Id { get; set; }
        public string EmployeeCode { get; set; }
        public string FullName { get; set; }
        public string RoleName { get; set; }
        public string Summary { get; set; }
        public string SkillList { get; set; }
        public decimal Rating { get; set; }
    }
}
