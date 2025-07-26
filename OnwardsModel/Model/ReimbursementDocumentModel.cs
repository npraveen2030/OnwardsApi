using System;

namespace OnwardsModel.Model
{
    public class ReimbursementDocumentModel : BaseModel
    {
        public int Id { get; set; }

        public int ReimbursementId { get; set; }

        public string FileName { get; set; } = string.Empty;

        public string FileType { get; set; } = string.Empty;

        public int FileSizeKB { get; set; }

        public byte[] FileContent { get; set; } = Array.Empty<byte>();

        public DateTime UploadedAt { get; set; }
    }
}
