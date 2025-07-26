using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ReimbursementDto : BaseDto
    {
        public int? Id { get; set; }

        public string? ClaimCode { get; set; } 

        public decimal? Amount { get; set; }

        public string? Purpose { get; set; }

        public DateTime? ReimbursementDate { get; set; }

        public int? StatusId { get; set; }

        public string? Action { get; set; }

        public int Skip { get; set; }

        public int Take { get; set; }
    }
}
