using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class SchedulerProfileSaveModel
    {
        public int LoginId { get; set; }
        public int? SummaryId { get; set; }
        public string Summary { get; set; }
        public List<SchedulerProfileSkillDto> Skills { get; set; }
    }
}
