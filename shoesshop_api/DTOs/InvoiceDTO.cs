namespace shoesshop_api.DTOs
{
	public class InvoiceDTO
	{
		public int Id { get; set; }
		public string? UserId { get; set; }
		public string? CustomerName { get; set; }
		public string? PhoneNumber { get; set; }
		public string? Address { get; set; }
		public string? CreateDate { get; set; }
		public string? PaymentMethod { get; set; }
		public int Total { get; set; }
		public int ShippingFee { get; set; }
		public int TotalPayment { get; set; }
		public string? Note { get; set; }
		public int Status { get; set; }
		public List<InvoiceDetailDTO>? InvoiceDetails { get; set; }
	}
}
