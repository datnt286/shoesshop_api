namespace shoesshop_api.Models
{
	public class Size
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int Status { get; set; }

		public List<Product>? Products { get; set; }
	}
}
