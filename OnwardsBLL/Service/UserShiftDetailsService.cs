using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsBLL.Service
{
  public class UserShiftDetailsService
  {
    private readonly IUserShiftDetailsRepository _userShiftDetailsRepository;

    public UserShiftDetailsService(IUserShiftDetailsRepository userShiftDetailsRepository)
    {
      _userShiftDetailsRepository = userShiftDetailsRepository;
    }
    public UserShiftLogDto GetUserShiftDetails(int userId)
    {
      _userShiftDetailsRepository.InsertOrUpdateUserShiftDetails(userId);
      return _userShiftDetailsRepository.GetUserShiftDetails(userId);
    }

    public int InsertOrUpdateUserShiftDetails(int userId)
    {
      return _userShiftDetailsRepository.InsertOrUpdateUserShiftDetails(userId);
    }
  }
}
