using shoesshop_api.Models;

namespace shoesshop_api.Request
{
	public class InvoiceRequest
	{
		public string? PaymentMethod { get; set; }
		public int Total { get; set; }
		public int ShippingFee { get; set; }
		public string? Note { get; set; }
		public List<CartDetailDTO>? CartDetails { get; set; }
	}
}
