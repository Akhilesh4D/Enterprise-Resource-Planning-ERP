using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;
using Dapper;
using Microsoft.Extensions.Configuration;
using Microsoft.Data.SqlClient;

namespace ERP.DAL
{
    public class GenericRepository<T> where T : class
    {
        private readonly string _connectionString;

        public GenericRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("ERPDB");
        }

        private IDbConnection CreateConnection() => new SqlConnection(_connectionString);

        public async Task<IEnumerable<T>> GetAllAsync(string storedProcedure)
        {
            using var connection = CreateConnection();
            return await connection.QueryAsync<T>(storedProcedure, commandType: CommandType.StoredProcedure);
        }

        public async Task<T> GetByIdAsync(string storedProcedure, int id)
        {
            using var connection = CreateConnection();
            return await connection.QueryFirstOrDefaultAsync<T>(storedProcedure, new { Id = id }, commandType: CommandType.StoredProcedure);
        }

        public async Task<int> AddAsync(string storedProcedure, object parameters)
        {
            using var connection = CreateConnection();
            var param = new DynamicParameters(parameters);
            param.Add("NewId", dbType: DbType.Int32, direction: ParameterDirection.Output);
            await connection.ExecuteAsync(storedProcedure, param, commandType: CommandType.StoredProcedure);
            return param.Get<int>("NewId");
        }

        public async Task<bool> UpdateAsync(string storedProcedure, object parameters, int id)
        {
            using var connection = CreateConnection();
            var param = new DynamicParameters(parameters);
            param.Add("@Id", id); // Make sure @Id is added to param, not just parameters
            return await connection.ExecuteAsync(storedProcedure, param, commandType: CommandType.StoredProcedure) > 0;
        }

        public async Task<bool> DeleteAsync(string storedProcedure, int id)
        {
            using var connection = CreateConnection();
            return await connection.ExecuteAsync(storedProcedure, new { Id = id }, commandType: CommandType.StoredProcedure) > 0;
        }
    }
}
