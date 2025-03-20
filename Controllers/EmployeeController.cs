using ERP.DAL;
using ERP.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ERP.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly EmployeeRepository rp;
        public EmployeeController(EmployeeRepository _rp)
        {
            rp= _rp;
        }
        [HttpGet]
        public async Task<IEnumerable<Employee>>GetAll(){
            return await rp.GetAllEmployeesAsync();
        }
        [HttpGet("{id}")]
        public async Task<Employee> Get(int id)
        {
            return await rp.GetEmployeeByIdAsync(id);
        }
        [HttpPost]
        public async Task<IActionResult> Add([FromBody]Employee e)
        {
            var id = await rp.AddEmployeeAsync(e);
            if (id>=0) { return Ok(); }
            else { return BadRequest();}
        }
        [HttpPut]
        public async Task<IActionResult> Update([FromBody]Employee e,int id)
        {
            var success = await rp.UpdateEmployeeAsync(e,id);
            return success ? Ok() : BadRequest();
        }
        [HttpDelete]
        public async Task<IActionResult> Delete(int id)
        {
            var success = await rp.DeleteEmployeeAsync(id);
            return success ? Ok() : BadRequest();
        }


    }
}
