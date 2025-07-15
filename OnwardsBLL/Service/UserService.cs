using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsBLL.Service
{
  public class UserService(IUserRepository _userRepository) : IUserService
  {
    //private readonly IUserRepository _userRepository;

    //public UserService(IUserRepository userRepository)
    //{
    //  _userRepository = userRepository;
    //}

    public bool ValidateUser(string employeeCode, string password)
    {
      return _userRepository.ValidateUser(employeeCode, password);
    }
   
  }
}
