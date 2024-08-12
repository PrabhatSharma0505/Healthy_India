using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class DoctorForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            string doctorName = this.doctorName.Text;
            string specialization = this.specialization.Text;
            string calcification = this.calcification.Text;
            string phoneNumber = this.phoneNumber.Text;
            string email = this.email.Text;

            // Save data to the database
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalDBConnectionString"].ConnectionString;
            string insertQuery = "INSERT INTO Doctors (DoctorName, Specialization, Calcification, PhoneNumber, Email) VALUES (@DoctorName, @Specialization, @Calcification, @PhoneNumber, @Email)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@DoctorName", doctorName);
                    command.Parameters.AddWithValue("@Specialization", specialization);
                    command.Parameters.AddWithValue("@Calcification", calcification);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@Email", email);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the command
                        command.ExecuteNonQuery();

                        // Show success message
                        lblMessage.Text = "Data saved successfully!";
                        lblMessage.Visible = true;
                        doctorName = "";
                        specialization = "";
                         calcification = "";
                        calcification = "";
                        email = "";
                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions
                        // For simplicity, you can display an error message here
                    }
                }
            }
        }
    }
}