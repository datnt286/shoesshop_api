namespace shoesshop_api.Models
{
	public class Comment
	{
		public int Id { get; set; }
		public string? UserId { get; set; }
		public int ModelId { get; set; }
		public int? ParentCommentId { get; set; }
		public string? Content { get; set; }
		public DateTime CreateDate { get; set; }
		public int Status { get; set; }

		public User? User { get; set; }
		public Model? Model { get; set; }
		public Comment? ParentComment { get; set; }
		public List<Comment>? Comments { get; set; }
	}
}
