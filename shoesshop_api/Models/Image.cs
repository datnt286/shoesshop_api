namespace shoesshop_api.Models
{
	public class Image
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int ModelId { get; set; }

		public Model? Model { get; set; }
	}
}
