using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
  public class TrainingDto : BaseDto
  {
    public int Id { get; set; }

    public string Name { get; set; }

    public DateTime TrainingDate { get; set; }

    public int LocationId { get; set; } 
  }
}
