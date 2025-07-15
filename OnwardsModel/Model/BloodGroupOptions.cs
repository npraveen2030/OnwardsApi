using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class BloodGroupOptions : BaseModel
    {
        public int Id { get; set; }
        public string Value { get; set; } = null!;
    }
}
