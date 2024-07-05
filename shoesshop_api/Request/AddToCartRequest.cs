namespace shoesshop_api.Request
{
    public class AddToCartRequest
    {
        public int ProductId { get; set; }
        public int Price { get; set; }
        public int? Quantity { get; set; }
        public int? Amount { get; set; }
    }
}
