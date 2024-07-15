namespace shoesshop_api.Models
{
	public class Invoice
	{
		public int Id { get; set; }
		public string? UserId { get; set; }
		public DateTime CreateDate { get; set; }
		public string? PaymentMethod { get; set; }
		public int Total { get; set; }
		public int ShippingFee { get; set; }
		public int TotalPayment { get; set; }
		public string? Note { get; set; }
		public int Status { get; set; }

		public User? User { get; set; }
		public List<InvoiceDetail>? InvoiceDetails { get; set; }
	}

	public enum InvoiceStatus
	{
		Placed = 1,
		Approved = 2,
		Shipped = 3,
		Delivered = 4,
		Received = 5,
		Cancelled = 6,
	}
}
