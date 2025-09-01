using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class ResignationDto : BaseDto
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int ResignationTypeId { get; set; }
        public int ResignationReasonId { get; set; }
        public DateTime ResignationLetterDate { get; set; }
        public DateTime RequestedRelievingDate { get; set; }
        public DateTime ActualRelievingDate { get; set; }
        public int NoticePeriod { get; set; }
        public int EndOfNoticePeriod { get; set; }
        public string NextEmployer { get; set; }
        public string MailingAddress { get; set; }
        public string Address { get; set; }
        public string PersonalEmailId { get; set; }
        public string Comments { get; set; }
        public string? AttachmentFileName { get; set; }
        public byte[]? AttachmentFile { get; set; }
        public string PullbackComment { get; set; }
        public int? StatusId { get; set; }
        public int? ApprovedBy { get; set; }
        public DateTime? ApprovalDate { get; set; }
        public string ApproverRemarks { get; set; }
        //public DateTime? CreatedDate { get; set; }
        //public int? CreatedBy { get; set; }
        //public DateTime? ModifiedDate { get; set; }
        //public int? ModifiedBy { get; set; }
        //public bool? IsActive { get; set; }


        public string FullName { get; set; }
        public string Status { get; set; }
    }
}
