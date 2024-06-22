namespace shoesshop_api.Models
{
	public class Supplier
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public string? PhoneNumber { get; set; }
		public string? Email { get; set; }
		public string? Address { get; set; }
		public string? Description { get; set; }
		public int Status { get; set; }

		public List<Model>? Models { get; set; }
	}
}
