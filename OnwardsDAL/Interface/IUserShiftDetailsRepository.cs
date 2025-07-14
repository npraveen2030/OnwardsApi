using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;

namespace OnwardsDAL.Interface
{
  public interface IUserShiftDetailsRepository
  {
    UserShiftLogDto GetUserShiftDetails(int userId);

    int InsertOrUpdateUserShiftDetails(int userId);
  }
}
