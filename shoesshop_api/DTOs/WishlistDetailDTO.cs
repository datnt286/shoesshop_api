namespace shoesshop_api.Models
{
	public class WishlistDetailDTO
	{
		public int Id { get; set; }
		public int ModelId { get; set; }
		public int ProductId { get; set; }
		public string? ProductName { get; set; }
		public int Price { get; set; }
		public string? Image { get; set; }
	}
}
