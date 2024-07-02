using shoesshop_api.DTOs;

namespace shoesshop_api.Services
{
	public interface IEmailService
	{
		void SendEmail(EmailDTO request);
	}
}
