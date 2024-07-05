namespace shoesshop_api.Request
{
    public class ReviewRequest
    {
        public string? UserId { get; set; }
        public int ModelId { get; set; }
        public int Rating { get; set; }
        public string? Content { get; set; }
    }
}
