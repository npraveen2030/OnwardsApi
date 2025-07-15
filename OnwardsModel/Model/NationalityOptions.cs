using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class NationalityOptions : BaseModel
    {
        public int Id { get; set; }
        public string Value { get; set; } = null!;
    }
}
