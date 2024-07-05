namespace shoesshop_api.Models
{
	public class Product
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int ModelId { get; set; }
		public int ColorId { get; set; }
		public int SizeId { get; set; }
		public int Quantity { get; set; }
		public int ImportPrice { get; set; }
		public int Price { get; set; }
		public string? Image { get; set; }
		public string? Description { get; set; }
		public int Status { get; set; }

		public Model? Model { get; set; }
		public Color? Color { get; set; }
		public Size? Size { get; set; }
		public List<GoodsReceivedNoteDetail>? GoodsReceivedNoteDetails { get; set; }
		public List<InvoiceDetail>? InvoiceDetails { get; set; }
		public List<CartDetail>? CartDetails { get; set; }
		public List<WishlistDetail>? WishlistDetails { get; set; }
	}
}
