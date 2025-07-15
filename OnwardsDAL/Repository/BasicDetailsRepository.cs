using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class BasicDetailsRepository : IBasicDetailsRepository
    {
        private readonly IConfiguration _config;
        public BasicDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public bool AddBasicDetails(BasicDetailsDto b)
        {
            using var conn = GetConn();
            conn.Open();

            using var cmd = new SqlCommand("Onwards.InsertOrUpdateBasicDetails", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@UserId", b.UserId);
            cmd.Parameters.AddWithValue("@FirstName", b.FirstName);
            cmd.Parameters.AddWithValue("@MiddleName", b.MiddleName);
            cmd.Parameters.AddWithValue("@LastName", b.LastName);
            cmd.Parameters.AddWithValue("@PersonalEmailID", b.PersonalEmailID);
            cmd.Parameters.AddWithValue("@PrimaryContactNumber", b.PrimaryContactNumber);
            cmd.Parameters.AddWithValue("@Gender", b.Gender);
            cmd.Parameters.AddWithValue("@FatherOrHusbandName", b.FatherOrHusbandName);
            cmd.Parameters.AddWithValue("@DOB", b.DOB);
            cmd.Parameters.AddWithValue("@Nationality", b.Nationality);
            cmd.Parameters.AddWithValue("@DifferentlyAbled", b.DifferentlyAbled);
            cmd.Parameters.AddWithValue("@VaccinationStatus", b.VaccinationStatus);
            cmd.Parameters.AddWithValue("@BloodGroup", b.BloodGroup);
            cmd.Parameters.AddWithValue("@BloodDonor", b.BloodDonor);
            cmd.Parameters.AddWithValue("@PanNumber", b.PanNumber);
            cmd.Parameters.AddWithValue("@AadhaarCardno", b.AadhaarCardno);
            cmd.Parameters.AddWithValue("@PerformedBy", b.CreatedBy ?? "System");

            // Output parameter
            var resultParam = new SqlParameter("@ResultId", SqlDbType.Int)
            {
                Direction = ParameterDirection.Output
            };
            cmd.Parameters.Add(resultParam);

            int rowsAffected = cmd.ExecuteNonQuery();

            // Optional: you can capture the inserted/updated ID here
            int resultId = (int)(resultParam.Value ?? 0);

            return rowsAffected > 0;
        }

    }
}
