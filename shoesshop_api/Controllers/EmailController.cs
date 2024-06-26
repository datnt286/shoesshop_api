﻿using MailKit.Security;
using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MimeKit;
using shoesshop_api.Services;
using shoesshop_api.DTOs;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class EmailController : ControllerBase
	{
		private readonly IEmailService _emailService;

        public EmailController(IEmailService emailService)
        {
			_emailService = emailService;
		}

        [HttpPost]
		public IActionResult SendEmail(EmailDTO request)
		{
			_emailService.SendEmail(request);
			return Ok();
		}
	}
}
