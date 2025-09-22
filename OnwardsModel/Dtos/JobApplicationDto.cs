using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class JobApplicationDto
    {
        public int Id { get; set; }
        public int JobId { get; set; }
        public string RoleName { get; set; }
        public string LocationName { get; set; }
        public int StatusId { get; set; }
        public string StatusName { get; set; } = string.Empty;
        public DateTime CreatedDate { get; set; }
    }
}
