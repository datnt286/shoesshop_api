namespace shoesshop_api.Models
{
	public class GoodsReceivedNote
	{
		public int Id { get; set; }
		public string? UserId { get; set; }
		public DateTime CreateDate { get; set; }
		public int Total { get; set; }
		public int Status { get; set; }

		public User? User { get; set; }
		public List<GoodsReceivedNoteDetail>? GoodsReceivedNoteDetails { get; set; }
	}
}
