using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class patientdoctorbooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            string fullName = name.Text;
            string email = this.email.Text;
            string phoneNumber = phone.Text;
            DateTime appointmentDate = Convert.ToDateTime(date.Text);
            TimeSpan appointmentTime = TimeSpan.Parse(time.Text);
            string doctor = this.doctor.SelectedValue;
            string comments = this.comments.Text;

            // Set up database connection
            string connectionString = ConfigurationManager.ConnectionStrings["HospitalDBConnectionString"].ConnectionString;


            // Insert data into the database
            string query = @"INSERT INTO DoctorAppointments (FullName, Email, PhoneNumber, AppointmentDate, AppointmentTime, Doctor, Comments)
                             VALUES (@FullName, @Email, @PhoneNumber, @AppointmentDate, @AppointmentTime, @Doctor, @Comments)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@FullName", fullName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                command.Parameters.AddWithValue("@AppointmentDate", appointmentDate);
                command.Parameters.AddWithValue("@AppointmentTime", appointmentTime);
                command.Parameters.AddWithValue("@Doctor", doctor);
                command.Parameters.AddWithValue("@Comments", comments);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    // Redirect to a success page or display a success message
                    Response.Redirect("SuccessPage.aspx");
                }
                catch (Exception ex)
                {
                    // Handle error
                    Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}