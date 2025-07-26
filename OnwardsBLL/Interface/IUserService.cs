using OnwardsModel.Dtos;

namespace OnwardsBLL.Interface
{
    public interface IUserService
    {
        bool ValidateUser(string employeeCode, string password);
        UserLoginDto ValidateLogin(string employeeCode, string password);
    }
}
