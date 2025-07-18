using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsDAL.Interface
{
    public interface IHolidayListRepository
    {
        //IEnumerable<HolidayList> GetAll();
        //HolidayList GetById(int id);
        //IEnumerable<HolidayList> GetByLocation(string location);
        //void Add(HolidayList holiday);
        //void Update(HolidayList holiday);
        //void Delete(int id);

        public Task<IEnumerable<HolidayListDto>> GetAllHolidays();
        public Task<HolidayListDto> GetHolidayById(int id);
        public Task<IEnumerable<HolidayListDto>> GetHolidayByLocationId(int locationId);
        public Task InsertOrUpdateHoliday(HolidayListModel holiday);
        //void UpdateHoliday(HolidayListModel holiday);
        public Task DeleteHoliday(int id);
    }
}
