using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ReferralTrackingDto
    {
        public int Id { get; set; }
        public int JobId { get; set; }
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string Email { get; set; } = "";
        public string Phone { get; set; } = "";
        public string LocationName { get; set; } = "";
        public string FileName { get; set; } = "";
        public string Status { get; set; } = "";
    }

    public class ReferralTrackingDocumentDto
    {
        public string FileName { get; set; } = "";
        public string FileType { get; set; } = "";
        public byte[] FileData { get; set; } = Array.Empty<byte>();
    }
}
