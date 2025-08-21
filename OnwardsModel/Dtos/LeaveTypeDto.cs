using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class LeaveTypeDto
    {
        public int Id { get; set; }
        public string LeaveTypeName { get; set; } = string.Empty;
        public int MaxDaysPerYear { get; set; }
    }
}
