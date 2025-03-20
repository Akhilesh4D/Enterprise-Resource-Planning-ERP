using ERP.Models;

namespace ERP.DAL
{
    public class EmployeeRepository
    {
        private readonly GenericRepository<Employee> _repository;
        public EmployeeRepository(IConfiguration configuration)
        {
            _repository = new GenericRepository<Employee>(configuration);
        }
        public async Task<IEnumerable<Employee>> GetAllEmployeesAsync()
        {
            return await _repository.GetAllAsync("sp_GetAllEmployees");
        }
        public async Task<Employee> GetEmployeeByIdAsync(int id)
        {
            return await _repository.GetByIdAsync("sp_GetEmployeeById", id);
        }
        public async Task<int> AddEmployeeAsync(Employee employee)
        {
            return await _repository.AddAsync("sp_AddEmployee", employee);
        }
        public async Task<bool> UpdateEmployeeAsync(Employee employee,int id)
        {
            return await _repository.UpdateAsync("sp_UpdateEmployee", employee,id);
        }
        public async Task<bool> DeleteEmployeeAsync(int id)
        {
            return await _repository.DeleteAsync("sp_DeleteEmployee", id);
        }
    }
}
