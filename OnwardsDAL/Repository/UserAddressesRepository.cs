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
    public class UserAddressesRepository : IUserAddressesRepository
    {
        private readonly IConfiguration _config;

        public UserAddressesRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateUserAddressAsync(UserAddress address)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserAddress", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", address.UserId);
                cmd.Parameters.AddWithValue("@PresentDoorNo", address.PresentDoorNo);
                cmd.Parameters.AddWithValue("@PresentAddressLine", address.PresentAddressLine);
                cmd.Parameters.AddWithValue("@PresentState", address.PresentState);
                cmd.Parameters.AddWithValue("@PresentPincode", address.PresentPincode);
                cmd.Parameters.AddWithValue("@IsSameAsPermanent", address.IsSameAsPermanent);
                cmd.Parameters.AddWithValue("@PermanentDoorNo", (object?)address.PermanentDoorNo ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@PermanentAddressLine", (object?)address.PermanentAddressLine ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@PermanentState", (object?)address.PermanentState ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@PermanentPincode", (object?)address.PermanentPincode ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", address.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating user address.", ex);
            }
        }

    }
}
