namespace ERP.Models
{
    public class Employee
    {
        public int UserId { get; set; }
        public int DepartmentId { get; set; }
        public int Salary { get; set; }
        public DateTime HireDate { get; set; }
        public string Designation {  get; set; }
        public string Status {  get; set; }
    }
    public class EmployeeD
    {
        public int UserId { get; set; }
        public int DepartmentId { get; set; }
        public int Salary { get; set; }
        public DateTime HireDate { get; set; }
        public string Designation { get; set; }
        public string Status { get; set; }
        public string Id { get; set; }
    }
}
