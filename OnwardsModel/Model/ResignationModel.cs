using Microsoft.AspNetCore.Http;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("Resignation", Schema = "Onwards")]
    public class ResignationModel : BaseModel
    {
        public int Id { get; set; }

        public int? ResignationTypeId { get; set; }

        public int? ResignationReasonId { get; set; }

        public DateTime? ResignationLetterDate { get; set; }

        public DateTime? RequestedRelievingDate { get; set; }

        public DateTime? ActualRelievingDate { get; set; }

        public int? NoticePeriod { get; set; }

        public int? EndOfNoticePeriod { get; set; }
        public string? NextEmployer { get; set; }

        [StringLength(500)]
        public string? MailingAddress { get; set; }

        [StringLength(500)]
        public string? Address { get; set; }

        [StringLength(500)]
        public string? PersonalEmailId { get; set; }

        [StringLength(500)]
        public string? Comments { get; set; }

        public string? AttachmentFileName { get;set;}
        public IFormFile? AttachmentFile { get; set; }

        [StringLength(500)]
        public string? PullbackComment { get; set; }

        public int? StatusId { get; set; }

        public int? ApprovedBy { get; set; }

        public DateTime? ApprovalDate { get; set; }

        [StringLength(1000)]
        public string? ApproverRemarks { get; set; }
    }
}
