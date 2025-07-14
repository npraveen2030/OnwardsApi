using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;

namespace OnwardsBLL.Interface
{
  public interface ITrainingService
  {
    void Add(TrainingDto model);
    void Update(TrainingDto model);
    void Delete(int id);
    List<TrainingDto> GetByLocation(int locationId);
  }

}
