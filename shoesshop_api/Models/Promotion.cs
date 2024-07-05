namespace shoesshop_api.Models
{
	public class Promotion
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int ProductId { get; set; }
		public int Percentage { get; set; }
		public string? Code { get; set; }
		public DateTime CreateDate { get; set; }
		public DateTime EndDate { get; set; }
		public int Status { get; set; }

		public Model? Model { get; set; }
	}
}
