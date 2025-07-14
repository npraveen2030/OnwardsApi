using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;

namespace OnwardsBLL.Interface
{
  public interface IUserShiftDetailsService
  {
    UserShiftLogDto GetUserShiftDetails(int userId);
    int InsertOrUpdateUserShiftDetails(int userId);
  }
}
