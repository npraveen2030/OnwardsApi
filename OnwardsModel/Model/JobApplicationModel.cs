using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class JobApplicationModel
    {
        public int? Id { get; set; }     
        public int UserId { get; set; }
        public int JobId { get; set; }
        public int LoginId { get; set; }
        public int StatusId { get; set; }
    }
}
