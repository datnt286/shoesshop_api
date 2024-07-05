﻿namespace shoesshop_api.DTOs
{
	public class InvoiceDetailDTO
	{
		public int Id { get; set; }
		public int InvoiceId { get; set; }
		public int ProductId { get; set; }
		public string? ProductName { get; set; }
		public string? ProductImage { get; set; }
		public int ModelId { get; set; }
		public int Price { get; set; }
		public int Quantity { get; set; }
		public int Amount { get; set; }
	}
}
