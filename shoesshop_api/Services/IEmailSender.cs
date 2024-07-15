using System.Threading.Tasks;

namespace shoesshop_api.Services
{
	public interface IEmailSender
	{
		Task SendEmailAsync(string email, string subject, string htmlMessage);
	}
}
