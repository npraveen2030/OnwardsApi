using Microsoft.AspNetCore.Http;


namespace OnwardsModel.Model
{
    public class UserLeaveAppliedModel : BaseModel
    {
        public int? Id { get; set; }
        public int LeaveTypeId { get; set; }

        public int Year { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }

        public decimal NoOfDays { get; set; }

        public int LocationId { get; set; }

        public string? Reason { get; set; }

        public string? Action { get; set; }

        public string? FileName { get; set; }

        public IFormFile? Data { get; set; }

        public int LeaveStatusId { get; set; }
    }
}
