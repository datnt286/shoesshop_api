namespace shoesshop_api.Models
{
	public class GoodsReceivedNoteDetail
	{
		public int Id { get; set; }
		public int GoodsReceivedNoteId { get; set; }
		public int ProductId { get; set; }
		public int ImportPrice { get; set; }
		public int Quantity { get; set; }
		public int Amount { get; set; }

		public GoodsReceivedNote? GoodsReceivedNote { get; set; }
		public Product? Product { get; set; }
	}
}
