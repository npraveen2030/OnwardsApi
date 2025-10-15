using Microsoft.AspNetCore.Http;


namespace OnwardsModel.Model
{
    public class UserLeaveAppliedModel : BaseModel
    {
        public int LeaveTypeId { get; set; }

        public int? Year { get; set; }

        public string? PhoneNo { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }

        public bool IsFullDay { get; set; }

        public int? LocationId { get; set; }

        public string? Reason { get; set; }

        public IFormFile? Data { get; set; }

        public string? FileName => Data?.FileName;

        public int LeaveStatusId { get; set; }

        public int NotifiedUserId { get; set; }
    }



    public class UserLeaveAppliedUpdateModel :  BaseModel
    {
        public int Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int NoOfDays { get; set; }
        public string? Action { get; set; }
        public int LeaveTypeId { get; set; }
        public int LeaveStatusId { get; set; }
        public int UserId { get; set; }
        public int LoginId { get; set; }
    }
}


