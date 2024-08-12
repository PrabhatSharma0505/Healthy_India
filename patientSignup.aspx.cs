using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class patientSignup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Patient(username ,password,new_password) values('" + Username.Text + "','" + Password.Text + "','" + new_Password.Text + "') ", con);
            con.Open();
            if (String.IsNullOrEmpty(Password.Text) && String.IsNullOrEmpty(Username.Text) || (String.IsNullOrEmpty(Username.Text) || string.IsNullOrEmpty(Password.Text)))
            {

            }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    Server.Transfer("Patient.aspx");

                }
                catch (Exception ex)
                {

                }

            }


            con.Close();

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Username.Text = "";
            Password.Text = "";
            new_Password.Text = "";
        }
    }
}