

namespace OnwardsModel.Dtos
{
    public class ReimbursementDto : BaseDto
    {
        public string ClaimCode { get; set; } = string.Empty;
        public decimal Amount { get; set; }
        public string Purpose { get; set; } = string.Empty;
        public DateTime ReimbursementDate { get; set; }
        public int? StatusId { get; set; }
        public string Action { get; set; } = string.Empty;
        public DateTime? CreatedDate { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? ModifiedBy { get; set; }
        public List<ReimbursementDocumentDto> Documents { get; set; } = new List<ReimbursementDocumentDto>();
    }

    public class ReimbursementDocumentDto
    {
        public int Id { get; set; }
        public int ReimbursementId { get; set; }
        public string FileName { get; set; } = string.Empty;
        public byte[] FileContent { get; set; } = Array.Empty<byte>();
        public DateTime UploadedAt { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? ModifiedBy { get; set; }
        public bool IsActive { get; set; }
    }
}



