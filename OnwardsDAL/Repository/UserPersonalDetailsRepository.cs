using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserPersonalDetailsRepository : IUserPersonalDetailsRepository
    {
        private readonly IConfiguration _configuration;

        public UserPersonalDetailsRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<PersonalDetailsModel?> GetUserPersonalDetailsByIdAsync(int userId)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetUserPersonalDetailsById", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@UserId", userId);

            using var reader = await cmd.ExecuteReaderAsync();

            if (!await reader.ReadAsync())
                return null;

            // Read JSON fragments
            string addressesJson = reader["UserAddresses"]?.ToString() ?? "[]";
            string complianceJson = reader["Compliance"]?.ToString() ?? "{}";
            string bankJson = reader["BankDetails"]?.ToString() ?? "{}";
            string emergencyJson = reader["EmergencyContact"]?.ToString() ?? "{}";

            // Deserialize into DTOs that match SQL output
            var compliance = JsonConvert.DeserializeObject<ComplianceDto>(complianceJson)!;
            var bank = JsonConvert.DeserializeObject<BankDetailsDto>(bankJson)!;
            var emergency = JsonConvert.DeserializeObject<EmergencyContactDto>(emergencyJson)!;

            // Deserialize user addresses (array)
            var addresses = JsonConvert.DeserializeObject<List<UserAddress>>(addressesJson)!;

            // Build final model
            return new PersonalDetailsModel
            {
                UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                LoginId = reader.GetInt32(reader.GetOrdinal("LoginId")),
                CreatedBy = reader.GetInt32(reader.GetOrdinal("CreatedBy")),
                CreatedDate = reader.GetDateTime(reader.GetOrdinal("CreatedDate")),
                ModifiedBy = reader.GetInt32(reader.GetOrdinal("ModifiedBy")),
                ModifiedDate = reader.GetDateTime(reader.GetOrdinal("ModifiedDate")),
                IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive")),

                FirstName = reader["FirstName"]?.ToString() ?? "",
                MiddleName = reader["MiddleName"]?.ToString() ?? "",
                LastName = reader["LastName"]?.ToString() ?? "",
                PersonalEmailID = reader["PersonalEmailID"]?.ToString() ?? "",

                PrimaryContactNumber_BasicDetails =
                    reader.GetInt32(reader.GetOrdinal("PrimaryContactNumber_BasicDetails")),
                Gender = reader.GetInt32(reader.GetOrdinal("Gender")),
                FatherOrHusbandName = reader["FatherOrHusbandName"]?.ToString() ?? "",
                DOB = reader.GetDateTime(reader.GetOrdinal("DOB")),

                Nationality = reader.GetInt32(reader.GetOrdinal("Nationality")),
                DifferentlyAbled = reader.GetInt32(reader.GetOrdinal("DifferentlyAbled")),
                VaccinationStatus = reader.GetInt32(reader.GetOrdinal("VaccinationStatus")),
                BloodGroup = reader.GetInt32(reader.GetOrdinal("BloodGroup")),
                BloodDonor = reader.GetInt32(reader.GetOrdinal("BloodDonor")),

                PanNumber = reader["PanNumber"]?.ToString() ?? "",
                AadhaarCardno = reader.GetInt32(reader.GetOrdinal("AadhaarCardno")),

                // Assignment of address list
                UserAddresses = addresses,

                // Compliance
                PFNo = compliance.PFNo,
                UANNo = compliance.UANNo,
                ESICNo = compliance.ESICNo,

                // Bank
                BankAccountNumber = bank.BankAccountNumber,
                AccountHolderName = bank.AccountHolderName,
                IFSCCode = bank.IFSCCode,
                BankName = bank.BankName,
                BranchName = bank.BranchName,

                // Emergency Contact (flatten into POST model properties)
                ContactName = emergency.ContactName,
                ContactRelationship = emergency.ContactRelationship,
                PrimaryContactNumber_EmergencyContactDetails =
                    emergency.PrimaryContactNumber_EmergencyContactDetails,
                SecondaryContactNumber = emergency.SecondaryContactNumber
            };
        }


        private async Task<List<IdValueDto>> ReadIdValueAsync(SqlCommand cmd)
        {
            var list = new List<IdValueDto>();

            using var reader = await cmd.ExecuteReaderAsync();
            while (await reader.ReadAsync())
            {
                list.Add(new IdValueDto
                {
                    Id = reader.GetInt32(reader.GetOrdinal("Id")),
                    Value = reader.GetString(reader.GetOrdinal("Value"))
                });
            }

            return list;
        }

        public async Task<List<IdValueDto>> GetNationalityOptionsAsync()
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetNationalityOptions", conn)
            { CommandType = CommandType.StoredProcedure };

            return await ReadIdValueAsync(cmd);
        }

        public async Task<List<IdValueDto>> GetYesNoOptionsAsync()
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetYesNoOptions", conn)
            { CommandType = CommandType.StoredProcedure };

            return await ReadIdValueAsync(cmd);
        }

        public async Task<List<IdValueDto>> GetVaccinationStatusOptionsAsync()
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetVaccinationStatusOptions", conn)
            { CommandType = CommandType.StoredProcedure };

            return await ReadIdValueAsync(cmd);
        }

        public async Task<List<IdValueDto>> GetBloodGroupsAsync()
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetBloodGroups", conn)
            { CommandType = CommandType.StoredProcedure };

            return await ReadIdValueAsync(cmd);
        }

        public async Task<List<IdValueDto>> GetGenderOptionsAsync()
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            using var cmd = new SqlCommand("Onwards.GetGenderOptions", conn)
            { CommandType = CommandType.StoredProcedure };

            return await ReadIdValueAsync(cmd);
        }
    }
}
