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
        public async Task AddOrUpdatePersonalDetails(PersonalDetailsDto personalDetailsDto)
        {
            var basicDetail = new BasicUserDetail
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                FirstName = personalDetailsDto.FirstName,
                MiddleName = personalDetailsDto.MiddleName,
                LastName = personalDetailsDto.LastName,
                PersonalEmailID = personalDetailsDto.PersonalEmailID,
                PrimaryContactNumber = personalDetailsDto.PrimaryContactNumber_BasicDetails ?? 0,
                Gender = personalDetailsDto.Gender ?? 0,
                FatherOrHusbandName = personalDetailsDto.FatherOrHusbandName,
                DOB = personalDetailsDto.DOB,
                Nationality = personalDetailsDto.Nationality ?? 0,
                DifferentlyAbled = personalDetailsDto.DifferentlyAbled ?? 0,
                VaccinationStatus = personalDetailsDto.VaccinationStatus ?? 0,
                BloodGroup = personalDetailsDto.BloodGroup ?? 0,
                BloodDonor = personalDetailsDto.BloodDonor ?? 0,
                PanNumber = personalDetailsDto.PanNumber,
                AadhaarCardno = personalDetailsDto.AadhaarCardno ?? 0,
            };

            var userAddress = new List<UserAddress>
            {
                personalDetailsDto.UserAddresses[0],
                personalDetailsDto.UserAddresses[1]
            };

            var compliance = new Compliance
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                PFNo = personalDetailsDto.PFNo,
                UANNo = personalDetailsDto.UANNo,
                ESICNo = personalDetailsDto.ESICNo,
            };

            var bankDetail = new BankDetail
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                BankAccountNumber = personalDetailsDto.BankAccountNumber,
                AccountHolderName = personalDetailsDto.AccountHolderName,
                IFSCCode = personalDetailsDto.IFSCCode,
                BankName = personalDetailsDto.BankName,
                BranchName = personalDetailsDto.BranchName,
            };

            var emergencyContact = new EmergencyContact
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                ContactName = personalDetailsDto.ContactName,
                ContactRelationship = personalDetailsDto.ContactRelationship,
                PrimaryContactNumber = personalDetailsDto.PrimaryContactNumber_EmergencyContactDetails,
                SecondaryContactNumber = personalDetailsDto.SecondaryContactNumber,
            };

            await _basicDetailsRepository.AddOrUpdateBasicDetailsAsync(basicDetail);
            await _userAddressesRepository.AddOrUpdateUserAddressAsync(userAddress);
            await _complianceRepository.AddOrUpdateUserComplianceAsync(compliance);
            await _bankDetailsRepository.AddOrUpdateUserBankDetailsAsync(bankDetail);
            await _emergencyContactsRepository.AddOrUpdateEmergencyContactAsync(emergencyContact);
        }
    }
}
