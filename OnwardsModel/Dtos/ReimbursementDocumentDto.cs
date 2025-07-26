using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ReimbursementDocumentDto : BaseDto
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
