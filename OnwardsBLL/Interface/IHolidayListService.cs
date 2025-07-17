using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Interface
{
  public interface IHolidayListService
  {
    //IEnumerable<HolidayListDto> GetByLocation(int locationId);
    //void Add(HolidayListDto holiday);
    //void Update(HolidayListDto holiday);
    //void Delete(int id);

        public Task<IEnumerable<HolidayListDto>> GetAllHolidays();
        public Task<HolidayListDto> GetHolidayById(int id);
        public Task<IEnumerable<HolidayListDto>> GetHolidayByLocationId(int locationId);
        public Task InsertOrUpdateHoliday(HolidayListModel holiday);
        //void UpdateHoliday(HolidayListModel holiday);
        public Task DeleteHoliday(int id);
    }
}
