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
    public class BankDetailsRepository : IBankDetailsRepository
    {
        private readonly IConfiguration _config;

        public BankDetailsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateUserBankDetailsAsync(BankDetail bank)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserBankDetails", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", bank.UserId);
                cmd.Parameters.AddWithValue("@BankAccountNumber", bank.BankAccountNumber);
                cmd.Parameters.AddWithValue("@AccountHolderName", bank.AccountHolderName);
                cmd.Parameters.AddWithValue("@IFSCCode", bank.IFSCCode);
                cmd.Parameters.AddWithValue("@BankName", bank.BankName);
                cmd.Parameters.AddWithValue("@BranchName", bank.BranchName);
                cmd.Parameters.AddWithValue("@LoginId", bank.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error while inserting/updating bank details", ex);
            }
        }


    }

}
