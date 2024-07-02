using MailKit.Net.Smtp;
using MailKit.Security;
using MimeKit;
using shoesshop_api.DTOs;

namespace shoesshop_api.Services
{
	public class EmailService : IEmailService
	{
		private readonly IConfiguration _configuration;
        public EmailService(IConfiguration config)
        {
            _configuration = config;
        }
        public void SendEmail(EmailDTO request)
		{
			var email = new MimeMessage();
			email.From.Add(MailboxAddress.Parse(_configuration.GetSection("EmailUsername").Value));
			email.To.Add(MailboxAddress.Parse(request.To));
			email.Subject = request.Subject;
			email.Body = new TextPart(MimeKit.Text.TextFormat.Html) { Text = request.Body };

			using var smtp = new SmtpClient();
			smtp.Connect(_configuration.GetSection("EmailHost").Value, 587, SecureSocketOptions.StartTls);
			smtp.Authenticate(_configuration.GetSection("EmailUsername").Value, _configuration.GetSection("EmailPassword").Value);
			smtp.Send(email);
			smtp.Disconnect(true);
		}
	}
}
