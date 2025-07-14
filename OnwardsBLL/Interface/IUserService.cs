using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IUserService
    {
        bool ValidateUser(string employeeCode, string password);
    }
}
