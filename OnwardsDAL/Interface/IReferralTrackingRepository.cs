using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IReferralTrackingRepository
    {
        Task InsertReferralTrackingAsync(ReferralTrackingModel referral);
        Task<List<ReferralTrackingDto>> GetReferralTrackingAsync(int createdBy);
        public Task<ReferralTrackingDocumentDto?> GetReferralTrackingDocumentAsync(int id);
        Task DeleteReferralTrackingAsync(int id);
    }
}
