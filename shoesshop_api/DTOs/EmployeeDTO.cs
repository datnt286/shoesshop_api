namespace shoesshop_api.DTOs
{
    public class EmployeeDTO
    {
        public string? UserName { get; set; }
        public string? Password { get; set; }
        public string? Name { get; set; }
        public string? Email { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Address { get; set; }
        public string? Role { get; set; }
		public int Salary { get; set; }
        public string? Avatar { get; set; }
        public string? Description { get; set; }
        public int Status { get; set; }
    }
}
