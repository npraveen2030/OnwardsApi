using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;

namespace OnwardsBLL.Interface
{
  public interface IHolidayListService
  {
    IEnumerable<HolidayListDto> GetByLocation(int locationId);
    void Add(HolidayListDto holiday);
    void Update(HolidayListDto holiday);
    void Delete(int id);
  }
}
