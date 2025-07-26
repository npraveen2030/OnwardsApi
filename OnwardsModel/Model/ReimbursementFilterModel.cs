using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class ReimbursementFilterModel : BaseFilterModel
    {
        public string? ClaimCode { get; set; }
        public decimal? Amount { get; set; }
        public string? Purpose { get; set; }
        public DateTime? ReimbursementDate { get; set; }
        public int? StatusId { get; set; }
        public string? Action { get; set; }  
    }
}
