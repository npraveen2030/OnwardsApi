using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class BaseFilterModel
    {
        public int? UserId {  get; set; }
        public int Skip { get; set; } = 0;
        public int Take { get; set; } = 10;
    }
}
