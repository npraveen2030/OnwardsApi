namespace OnwardsModel.Dtos
{
  public class UserShiftLogDto : BaseDto
  {
    public int LogId { get; set; }

    public int ShiftId { get; set; }

    //public TimeOnly LoginTime { get; set; }

    public DateOnly Date { get; set; }

    //public TimeOnly? LogOutTime { get; set; }

    public virtual ShiftDto Shift { get; set; }


    public string TodayDate { get; set; }
    public string ShiftStartTime { get; set; }
    public string LoginTime { get; set; }
    public string LogOutTime { get; set; }
    public string TotalLoggedInHours { get; set; }
  }
}
