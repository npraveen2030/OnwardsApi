using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class UserModelDto
    {
        public string EmployeeCode { get; set; } = null!;
        public string FullName { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string Mobile { get; set; } = null!;
        public DateTime DOJ { get; set; }
        public DateTime DOR { get; set; }
        public string Role { get; set; } = null!;
        public string Grade { get; set; } = null!;
        public string Department { get; set; } = null!;
        public string ReportingManager { get; set; } = null!;
        public string AdministrativeManager { get; set; } = null!;
    };

    public class UserModelFilter
    {
        public string? EmployeeCode { get; set; } 
        public string? FullName { get; set; } 
        public string? Email { get; set; } 
        public string? Mobile { get; set; } 
    }
}
