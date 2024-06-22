namespace shoesshop_api.Models
{
	public class Wishlist
	{
		public int Id { get; set; }
		public string? UserId { get; set; }

		public User? User { get; set; }
		public List<WishlistDetail>? WishlistDetails { get; set; }
	}
}
