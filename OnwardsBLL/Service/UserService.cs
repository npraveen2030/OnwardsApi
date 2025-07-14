using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;

namespace OnwardsBLL.Service
{
    public class UserService : IUserService
    {
        private readonly IUserRepository _userRepository;

        public UserService(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public bool ValidateUser(string employeeCode, string password)
        {
            return _userRepository.ValidateUser(employeeCode, password);
        }
    }
}
