using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class UserLoginDto
    {
        public int Id { get;set;} 
        public string EmployeeCode { get; set; } = null!;
        public string FullName { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string RoleName { get; set; } = null!;
        public string MobileNo { get;set;} = null!;
        public int CompanyId { get;set;}

        public int LocationId { get; set; } 
        public string ReportingManagerEmpCode { get;set;} = null!;
        public string ReportingManagerName { get;set;} = null!;

        public string LocationName { get; set; }
        public string DepartmentName { get; set; }
        public string GradeValue { get; set; }
        public DateTime? DOJ { get; set; }

        public string AdministrativeManagerEmpCode { get; set; }
        public string AdministrativeManagerName { get; set; }

        public string FunctionalReportingManagerEmpCode { get; set; }
        public string FunctionalReportingManagerName { get; set; }
    }
}
