using Microsoft.Extensions.Options;
using OnwardsBLL.Interface;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class EmailService : IEmailService
    {
        private readonly SmtpSettings _smtpSettings;

        public EmailService(IOptions<SmtpSettings> smtpSettings)
        {
            _smtpSettings = smtpSettings.Value;
        }

        public async Task SendEmailAsync(EmailRequest emailRequest)
        {
            try
            {

           
            using var client = new SmtpClient(_smtpSettings.Server, _smtpSettings.Port)
            {
                Credentials = new NetworkCredential(_smtpSettings.Username, _smtpSettings.Password),
                EnableSsl = _smtpSettings.EnableSSL
            };

            var message = new MailMessage
            {
                From = new MailAddress(_smtpSettings.SenderEmail, _smtpSettings.SenderName),
                Subject = emailRequest.Subject,
                Body = emailRequest.Body,
                IsBodyHtml = true
            };

                message.To.Add(emailRequest.ToEmail.Trim());

                try
                {
                    await client.SendMailAsync(message);
                }
                catch (SmtpException ex)
                {
                    Console.WriteLine($"SMTP ERROR: {ex.StatusCode} - {ex.Message}");
                    throw;
                }

            }
            catch (Exception ex) {
                Console.WriteLine(ex.ToString());
            }
        }
    }
}
