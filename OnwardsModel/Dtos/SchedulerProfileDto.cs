using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class SchedulerProfileDto
    {
        public int? SummaryId { get; set; }
        public string Summary { get; set; }
        public List<SchedulerProfileSkillDto> Skills { get; set; }
    }

    public class SchedulerProfileSkillDto
    {
        public int? Id { get; set; }
        public string SkillName { get; set; }
        public int Rating { get; set; }
    }
}
