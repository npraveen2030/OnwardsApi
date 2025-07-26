namespace OnwardsModel.Model
{
    public class ReimbursementModel : BaseModel
    {
        public int Id { get; set; }

        public string ClaimCode { get; set; } = string.Empty;

        public decimal Amount { get; set; }

        public string Purpose { get; set; } = string.Empty;

        public DateTime ReimbursementDate { get; set; }

        public int? StatusId { get; set; }

        public string Action { get; set; } = string.Empty;

        public List<ReimbursementDocumentModel> Documents { get; set; } = new List<ReimbursementDocumentModel>();
    }
}
