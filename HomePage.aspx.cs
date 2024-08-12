using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalWebsite
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                // Debugging: Write the value of the session variable
                Response.Write(Session["Username"]);

                // Set the username in the Page's ClientScript
                Page.ClientScript.RegisterStartupScript(this.GetType(), "WelcomeMessage", $"var username = '{Session["Username"]}';", true);
            }
            else
            {
                // Redirect to login page if the user is not logged in
                //Response.Redirect("Hospital_login.aspx");
            }

        }
    }
}