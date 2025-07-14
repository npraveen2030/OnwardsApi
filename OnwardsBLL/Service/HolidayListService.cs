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
  public class HolidayListService : IHolidayListService
  {
    private readonly IHolidayListRepository _repo;

    public HolidayListService(IHolidayListRepository repo)
    {
      _repo = repo;
    }

    public IEnumerable<HolidayListDto> GetByLocation(int locationId) =>
        _repo.GetByLocation(locationId);

    public void Add(HolidayListDto holiday) =>
        _repo.Add(holiday);

    public void Update(HolidayListDto holiday) =>
        _repo.Update(holiday);

    public void Delete(int id) =>
        _repo.Delete(id);
  }

}
