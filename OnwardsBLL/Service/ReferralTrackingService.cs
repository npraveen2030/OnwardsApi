using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class ReferralTrackingService (IReferralTrackingRepository _repo) : IReferralTrackingService
    {
        public async Task InsertReferralTrackingAsync(ReferralTrackingModel referral)
        {
             await _repo.InsertReferralTrackingAsync(referral);
        }
        public async Task<List<ReferralTrackingDto>>  GetReferralTrackingAsync(int createdBy)
        {
            return await _repo.GetReferralTrackingAsync(createdBy);
        }
        public async Task<ReferralTrackingDocumentDto?> GetReferralTrackingDocumentAsync(int id)
        {
            return await _repo.GetReferralTrackingDocumentAsync(id);
        }
        public async Task DeleteReferralTrackingAsync(int id)
        {
            await  _repo.DeleteReferralTrackingAsync(id);
        }
    }
}
