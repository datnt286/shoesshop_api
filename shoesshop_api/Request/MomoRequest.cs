namespace shoesshop_api.Request
{
	public class MomoRequest
	{
		public string PaymentContent { get; set; } = string.Empty;

		public decimal? RequiredAmount { get; set; }
	}
}
