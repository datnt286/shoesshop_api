using shoesshop_api.Models;

namespace shoesshop_api.DTOs
{
	public class UserInvoicesDTO
	{
		public List<InvoiceDTO>? AllInvoices { get; set; }
		public List<InvoiceDTO>? PlacedInvoices { get; set; }
		public List<InvoiceDTO>? ApprovedInvoices { get; set; }
		public List<InvoiceDTO>? ShippedInvoices { get; set; }
		public List<InvoiceDTO>? ReceivedInvoices { get; set; }
		public List<InvoiceDTO>? CancelledInvoices { get; set; }
	}
}
