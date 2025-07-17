using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class BasicUserDetailsRepository : IBasicUserDetailsRepository
    {
        private readonly IConfiguration _config;
        public BasicUserDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateBasicDetailsAsync(BasicUserDetail detail)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateBasicUserDetails", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", detail.UserId);
                cmd.Parameters.AddWithValue("@FirstName", detail.FirstName);
                cmd.Parameters.AddWithValue("@MiddleName", detail.MiddleName);
                cmd.Parameters.AddWithValue("@LastName", detail.LastName);
                cmd.Parameters.AddWithValue("@PersonalEmailID", detail.PersonalEmailID);
                cmd.Parameters.AddWithValue("@PrimaryContactNumber", detail.PrimaryContactNumber);
                cmd.Parameters.AddWithValue("@Gender", detail.Gender);
                cmd.Parameters.AddWithValue("@FatherOrHusbandName", detail.FatherOrHusbandName);
                cmd.Parameters.AddWithValue("@DOB", detail.DOB);
                cmd.Parameters.AddWithValue("@Nationality", detail.Nationality);
                cmd.Parameters.AddWithValue("@DifferentlyAbled", detail.DifferentlyAbled);
                cmd.Parameters.AddWithValue("@VaccinationStatus", detail.VaccinationStatus);
                cmd.Parameters.AddWithValue("@BloodGroup", detail.BloodGroup);
                cmd.Parameters.AddWithValue("@BloodDonor", detail.BloodDonor);
                cmd.Parameters.AddWithValue("@PanNumber", detail.PanNumber);
                cmd.Parameters.AddWithValue("@AadhaarCardno", detail.AadhaarCardno);
                cmd.Parameters.AddWithValue("@LoginId", detail.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating basic details.", ex);
            }
        }

    }
}
