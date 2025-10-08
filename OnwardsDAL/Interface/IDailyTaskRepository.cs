
namespace OnwardsDAL.Interface
{
    public interface IDailyTaskRepository
    {
        public Task RunAbsentCheckAsync(int loginId);
    }
}
