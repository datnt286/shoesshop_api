using shoesshop_api.Models;

namespace shoesshop_api.DTOs
{
	public class InvoiceRequest
	{
		public string? UserId { get; set; }
		public int Total { get; set; }
		public string? Note { get; set; }
		public List<CartDetailDTO> CartDetails { get; set; }
	}
}
