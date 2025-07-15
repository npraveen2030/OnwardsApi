using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
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
    public class EmergencyContactsRepository : IEmergencyContactsRepository
    {
        private readonly IConfiguration _config;

        public EmergencyContactsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateEmergencyContactAsync(EmergencyContact contact)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserEmergencyContact", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", contact.UserId);
                cmd.Parameters.AddWithValue("@ContactName", contact.ContactName);
                cmd.Parameters.AddWithValue("@ContactRelationship", contact.ContactRelationship);
                cmd.Parameters.AddWithValue("@PrimaryContactNumber", contact.PrimaryContactNumber);
                cmd.Parameters.AddWithValue("@SecondaryContactNumber", (object?)contact.SecondaryContactNumber ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", contact.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating emergency contact.", ex);
            }
        }

    }
}
