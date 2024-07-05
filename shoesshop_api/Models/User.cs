using Microsoft.AspNetCore.Identity;

namespace shoesshop_api.Models
{
	public class User : IdentityUser
	{
		public string? Name { get; set; }
		public string? Address { get; set; }
		public string? Avatar { get; set; }
		public string? Description { get; set; }
		public int Status { get; set; }

		public string? Role { get; set; }
		public int? Salary { get; set; }

		public List<Cart>? Carts { get; set; }
		public List<Wishlist>? Wishlists { get; set; }
		public List<GoodsReceivedNote>? GoodsReceivedNotes { get; set; }
		public List<Invoice>? Invoices { get; set; }
	}
}
