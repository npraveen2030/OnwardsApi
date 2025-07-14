using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsBLL.Service
{
  public class TrainingService : ITrainingService
  {
    private readonly ITrainingRepository _repo;

    public TrainingService(ITrainingRepository repo)
    {
      _repo = repo;
    }

    public void Add(TrainingDto model) => _repo.Add(model);
    public void Update(TrainingDto model) => _repo.Update(model);
    public void Delete(int id) => _repo.Delete(id);
    public List<TrainingDto> GetByLocation(int locationId) => _repo.GetByLocation(locationId);
  }

}
