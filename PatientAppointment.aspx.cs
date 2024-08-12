using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class PatientAppointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            // Assuming 'con' is your SqlConnection object
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO vaccine (Child_Name, Age, Weight, FatherName, MotherName, fatherphone, motherPhone, Email, Local, Permanent, Gender, Vaccine, Hospital) VALUES (@Child_Name, @Age, @Weight, @FatherName, @MotherName, @fatherPhone, @motherPhone, @Email, @Local, @Permanent, @Gender, @Vaccine, @Hospital)", con);
            cmd.Parameters.AddWithValue("@Child_Name", childName.Text);
            cmd.Parameters.AddWithValue("@Age", Age.Text);
            cmd.Parameters.AddWithValue("@Weight", TextBox1.Text);
            cmd.Parameters.AddWithValue("@FatherName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@MotherName", TextBox3.Text);
            cmd.Parameters.AddWithValue("@fatherPhone", TextBox4.Text);
            cmd.Parameters.AddWithValue("@motherPhone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Local", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Permanent", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Gender", Gender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Vaccine", vaccineName.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Hospital", Hospital.SelectedItem.Text);

            // Validate if either Father's Name or Child's Weight is empty
            if (String.IsNullOrEmpty(TextBox2.Text) && String.IsNullOrEmpty(TextBox1.Text) || (String.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text)))
            {
                // Handle the case where validation fails (if needed)
            }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    // Redirect to another page upon successful insertion
                    Server.Transfer("DowloadVaccine.aspx");
                }
                catch (Exception ex)
                {
                    // Handle any exceptions that occur during insertion
                }
            }

            con.Close(); // Close the database connection
        }






    }


}
