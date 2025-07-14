using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;

namespace OnwardsDAL.Interface
{
  public interface ITrainingRepository
  {
    void Add(TrainingDto training);
    void Update(TrainingDto training);
    void Delete(int id);
    List<TrainingDto> GetByLocation(int locationId);
  }

}
