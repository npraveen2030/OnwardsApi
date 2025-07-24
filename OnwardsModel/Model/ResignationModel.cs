using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnwardsModel.Model
{
    [Table("Resignation", Schema = "Onwards")]
    public class ResignationModel : BaseModel
    {
        public int Id { get; set; }

        [Required]
        public int? ResignationTypeId { get; set; }

        [Required]
        public int? ResignationReasonId { get; set; }

        [Required]
        public DateTime? ResignationLetterDate { get; set; }

        [Required]
        public DateTime? ResignationRelivingDate { get; set; }

        [Required]
        public DateTime? ResignationActualDate { get; set; }

        [Required]
        public int? NoticePeriod { get; set; }

        [Required]
        public int? EndOfNoticePeriod { get; set; }

        [StringLength(500)]
        public string? MailingAddress { get; set; }

        [StringLength(500)]
        public string? Address { get; set; }

        [StringLength(500)]
        public string? PersonalEmailid { get; set; }

        [StringLength(500)]
        public string? Comments { get; set; }

        [StringLength(500)]
        public string? AttachmentFile { get; set; }

        [StringLength(500)]
        public string? PullbackComment { get; set; }

        public int? StatusId { get; set; }

        public int? ApprovedBy { get; set; }

        public DateTime? ApprovalDate { get; set; }

        [StringLength(1000)]
        public string? ApproverRemarks { get; set; }
    }
}
