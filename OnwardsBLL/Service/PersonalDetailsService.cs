using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsDAL.Repository;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class PersonalDetailsService(IBasicUserDetailsRepository _basicDetailsRepository, IUserAddressesRepository _userAddressesRepository,
        IComplianceRepository _complianceRepository, IBankDetailsRepository _bankDetailsRepository,
        IEmergencyContactsRepository _emergencyContactsRepository) : IPersonalDetailsService
    {
        public async Task AddOrUpdatePersonalDetails(PersonalDetailsModel personalDetails)
        {
            var basicDetail = new BasicUserDetail
            {
                UserId = personalDetails.UserId,
                LoginId = personalDetails.LoginId,
                FirstName = personalDetails.FirstName,
                MiddleName = personalDetails.MiddleName,
                LastName = personalDetails.LastName,
                PersonalEmailID = personalDetails.PersonalEmailID,
                PrimaryContactNumber = personalDetails.PrimaryContactNumber_BasicDetails ?? 0,
                Gender = personalDetails.Gender ?? 0,
                FatherOrHusbandName = personalDetails.FatherOrHusbandName,
                DOB = personalDetails.DOB,
                Nationality = personalDetails.Nationality ?? 0,
                DifferentlyAbled = personalDetails.DifferentlyAbled ?? 0,
                VaccinationStatus = personalDetails.VaccinationStatus ?? 0,
                BloodGroup = personalDetails.BloodGroup ?? 0,
                BloodDonor = personalDetails.BloodDonor ?? 0,
                PanNumber = personalDetails.PanNumber,
                AadhaarCardno = personalDetails.AadhaarCardno ?? 0,
            };

            var userAddress = new List<UserAddress>
            {
                personalDetails.UserAddresses[0],
                personalDetails.UserAddresses[1]
            };

            var compliance = new Compliance
            {
                UserId = personalDetails.UserId,
                LoginId = personalDetails.LoginId,
                PFNo = personalDetails.PFNo,
                UANNo = personalDetails.UANNo,
                ESICNo = personalDetails.ESICNo,
            };

            var bankDetail = new BankDetail
            {
                UserId = personalDetails.UserId,
                LoginId = personalDetails.LoginId,
                BankAccountNumber = personalDetails.BankAccountNumber,
                AccountHolderName = personalDetails.AccountHolderName,
                IFSCCode = personalDetails.IFSCCode,
                BankName = personalDetails.BankName,
                BranchName = personalDetails.BranchName,
            };

            var emergencyContact = new EmergencyContact
            {
                UserId = personalDetails.UserId,
                LoginId = personalDetails.LoginId,
                ContactName = personalDetails.ContactName,
                ContactRelationship = personalDetails.ContactRelationship,
                PrimaryContactNumber = personalDetails.PrimaryContactNumber_EmergencyContactDetails,
                SecondaryContactNumber = personalDetails.SecondaryContactNumber,
            };

            await _basicDetailsRepository.AddOrUpdateBasicDetailsAsync(basicDetail);
            await _userAddressesRepository.AddOrUpdateUserAddressAsync(userAddress);
            await _complianceRepository.AddOrUpdateUserComplianceAsync(compliance);
            await _bankDetailsRepository.AddOrUpdateUserBankDetailsAsync(bankDetail);
            await _emergencyContactsRepository.AddOrUpdateEmergencyContactAsync(emergencyContact);
        }
    }
}
