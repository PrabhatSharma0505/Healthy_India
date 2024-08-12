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
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
          



        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string uid = Username.Text;
            string passs = password.Text;
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Admin where Username='" + uid + "' and Password='" + passs + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            try
            {
                if (sdr.Read())
                {

                    Server.Transfer("PatientData.aspx");
                }
                else
                {
                    

                }
            }
            catch (Exception ex)
            {
                
            }


            con.Close();

        }
    }
}