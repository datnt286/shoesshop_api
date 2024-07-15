﻿using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;

namespace shoesshop_api.Services
{
	public class EmailSender : IEmailSender
	{
		private readonly IConfiguration _configuration;

		public EmailSender(IConfiguration configuration)
		{
			_configuration = configuration;
		}

		public async Task SendEmailAsync(string email, string subject, string htmlMessage)
		{
			var emailSettings = _configuration.GetSection("EmailSettings");

			var smtpClient = new SmtpClient(emailSettings["SmtpServer"])
			{
				Port = int.Parse(emailSettings["SmtpPort"]),
				Credentials = new NetworkCredential(emailSettings["Username"], emailSettings["Password"]),
				EnableSsl = true,
			};

			var mailMessage = new MailMessage
			{
				From = new MailAddress(emailSettings["SenderEmail"], emailSettings["SenderName"]),
				Subject = subject,
				Body = htmlMessage,
				IsBodyHtml = true,
			};

			mailMessage.To.Add(email);
			await smtpClient.SendMailAsync(mailMessage);
		}
	}
}
