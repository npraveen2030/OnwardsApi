using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
  public class HolidayListService : IHolidayListService
  {
    private readonly IHolidayListRepository _repo;

    public HolidayListService(IHolidayListRepository repo)
    {
      _repo = repo;
    }

    //public IEnumerable<HolidayListDto> GetByLocation(int locationId) =>
    //    _repo.GetByLocation(locationId);

    //public void Add(HolidayListDto holiday) =>
    //    _repo.Add(holiday);

    //public void Update(HolidayListDto holiday) =>
    //    _repo.Update(holiday);

    //public void Delete(int id) =>
    //    _repo.Delete(id);

        public async Task<IEnumerable<HolidayListDto>> GetAllHolidays()
        {
            return await _repo.GetAllHolidays();
        }

        public async Task<HolidayListDto> GetHolidayById(int id)
        {
            return await _repo.GetHolidayById(id);
        }

        public async Task<IEnumerable<HolidayListDto>> GetHolidayByLocationId(int locationId)
        {
            return await _repo.GetHolidayByLocationId(locationId);
        }

        public async Task InsertOrUpdateHoliday(HolidayListModel holiday)
        {
            await _repo.InsertOrUpdateHoliday(holiday);
        }

        public async Task DeleteHoliday(int id)
        {
            await _repo.DeleteHoliday(id);
        }
    }

}
