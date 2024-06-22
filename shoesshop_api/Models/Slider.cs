namespace shoesshop_api.Models
{
	public class Slider
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int ProductId { get; set; }
		public string? Image { get; set; }
		public DateTime CreateDate { get; set; }
		public DateTime EndDate { get; set; }
		public int Status { get; set; }

		public Product? Product { get; set; }
	}
}
