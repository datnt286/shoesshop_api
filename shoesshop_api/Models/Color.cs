namespace shoesshop_api.Models
{
	public class Color
	{
		public int Id { get; set; }
		public string? Name { get; set; }

		public List<Product>? Products { get; set; }
	}
}
