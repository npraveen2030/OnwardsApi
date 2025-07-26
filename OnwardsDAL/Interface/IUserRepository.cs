using OnwardsModel.Dtos;

namespace OnwardsDAL.Interface
{
    public interface IUserRepository
    {
        bool ValidateUser(string employeeCode, string password);
        UserLoginDto ValidateLogin(string employeeCode, string password);

    }
}
