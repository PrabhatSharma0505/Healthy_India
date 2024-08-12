using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class Hospital_Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Hospital(HospitalName,HospitalLicense,Email,Password) values('" + HospitalName.Text + "','" + HospitalLicense.Text + "','" + Email.Text + "','" + Password.Text + "') ", con);
            con.Open();
            if (String.IsNullOrEmpty(Password.Text) && String.IsNullOrEmpty(HospitalName.Text) || (String.IsNullOrEmpty(HospitalName.Text) || string.IsNullOrEmpty(Password.Text)))
            {

            }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    Server.Transfer("Hospital_login.aspx");

                }
                catch (Exception ex)
                {

                }

            }


            con.Close();
        }
    }
}