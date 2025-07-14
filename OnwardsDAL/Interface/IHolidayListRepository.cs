using OnwardsModel.Dtos;

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
    IEnumerable<HolidayListDto> GetByLocation(int locationId);
    void Add(HolidayListDto holiday);
    void Update(HolidayListDto holiday);
    void Delete(int id);
  }
}
