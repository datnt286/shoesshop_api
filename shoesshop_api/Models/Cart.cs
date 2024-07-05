namespace shoesshop_api.Models
{
	public class Cart
	{
		public int Id { get; set; }
		public string? UserId { get; set; }
		public DateTime CreatedDate { get; set; }
		public int Status { get; set; }

		public User? User { get; set; }
		public List<CartDetail>? CartDetails { get; set; }
	}
}
