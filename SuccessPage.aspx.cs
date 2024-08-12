using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class SuccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
                // Access the controls directly using their IDs
                string userEmail = txtEmail.Text.Trim();
                litMessage.Text = string.Empty; // Clear previous messages

                if (!string.IsNullOrEmpty(userEmail))
                {
                    try
                    {
                        // Create and configure the email message
                        MailMessage message = new MailMessage
                        {
                            From = new MailAddress("prabhatwebsite3@gmail.com"),
                            Subject = "Doctor Appointment Confirmation",
                            Body = "Your Doctor appointment has been successfully booked."
                        };
                        message.To.Add(new MailAddress(userEmail));

                        // Send the email using SMTP
                        using (SmtpClient smtp = new SmtpClient("smtp.gmail.com"))
                        {
                            smtp.Port = 587;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential("prabhatwebsite3@gmail.com", "wmrhzvmhtmyabkzd");
                            smtp.EnableSsl = true;
                            smtp.Send(message);
                        }

                        litMessage.Text = "Doctor appointment confirmation email sent successfully!";
                    }
                    catch (Exception ex)
                    {
                        litMessage.Text = $"Failed to book appointment. Error: {ex.Message}";
                    }
                }
                else
                {
                    litMessage.Text = "Please enter a valid email address.";
                }
            }
    }
}