using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class AdminUserDto
    {
        public int Id { get; set; }
        public string EmployeeCode { get; set; } = string.Empty;
        public string FullName { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string Password { get; set; } = "";
        public string Mobile { get; set; } = string.Empty;
        public DateTime DOJ { get; set; }
        public DateTime? DOR { get; set; }
        public int RoleId { get;set;}
        public string RoleName { get; set; } = string.Empty;
        public int GradeId { get;set;}
        public string GradeValue { get; set; } = string.Empty;
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; } = string.Empty;
        public int AdministrativeManagerId { get;set;}
        public string AdministrativeManagerName { get; set; } = "";
        public int UserTypeId { get;set;}
        public string TypeName { get; set; } = string.Empty;
        public int ShiftId { get;set;}
        public int ReportingManagerId { get;set;}
        public string ReportingManagerName { get; set; } = string.Empty;
        public int LocationId { get;set;}
        public string LocationName { get; set; } = string.Empty;
    }

    public class GradeDto
    {
        public int Id { get; set; }
        public string GradeValue { get; set; }
    }

    public class DepartmentDto
    {
        public int Id { get; set; }
        public string DepartmentName { get; set; }
    }

    public class UserTypeDto
    {
        public int Id { get; set; }
        public string TypeName { get; set; }
    }

    public class ShiftsDto
    {
        public int ShiftId { get; set; }
        public string ShiftName { get; set; }
    }
}
