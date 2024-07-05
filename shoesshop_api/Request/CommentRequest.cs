namespace shoesshop_api.Request
{
    public class CommentRequest
    {
        public string? UserId { get; set; }
        public int ModelId { get; set; }
        public int? ParentCommentId { get; set; }
        public string? Content { get; set; }
    }
}
