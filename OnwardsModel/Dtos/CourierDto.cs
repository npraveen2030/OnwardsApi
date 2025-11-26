using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class CourierDto
    {
        public int? Id { get; set; }
        public int UserId { get; set; }
        public string Comments { get; set; }
        public int StatusId { get; set; }
        public int LoginId { get; set; }
    }
}
