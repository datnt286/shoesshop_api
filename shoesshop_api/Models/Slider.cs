namespace shoesshop_api.Models
{
	public class Slider
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public string? Image { get; set; }
		public int ModelId { get; set; }
		public int Status { get; set; }

		public Model? Model { get; set; }
	}
}
