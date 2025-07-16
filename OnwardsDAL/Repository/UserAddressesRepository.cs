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

        public async Task AddOrUpdateUserAddressAsync(List<UserAddress> addresses)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                foreach (var address in addresses)
                {
                    await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserAddress", conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.AddWithValue("@UserId", address.UserId);
                    cmd.Parameters.AddWithValue("@DoorNo", address.DoorNo);
                    cmd.Parameters.AddWithValue("@AddressLine", address.AddressLine);
                    cmd.Parameters.AddWithValue("@State", address.State);
                    cmd.Parameters.AddWithValue("@Pincode", address.Pincode);
                    cmd.Parameters.AddWithValue("@IsPresentAddress", address.IsPresentAddress);
                    cmd.Parameters.AddWithValue("@SameAsPresent", address.SameAsPresent);
                    cmd.Parameters.AddWithValue("@LoginId", address.LoginId);

                    await cmd.ExecuteNonQueryAsync();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating user address.", ex);
            }
        }

    }
}
