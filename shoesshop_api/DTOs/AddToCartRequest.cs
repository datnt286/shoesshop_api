namespace shoesshop_api.DTOs
{
    public class AddToCartRequest
	{
        public string? UserId { get; set; }
        public int ProductId { get; set; }
        public int Price { get; set; }
        public int Quantity { get; set; }
        public int Amount { get; set; }
	}
}
