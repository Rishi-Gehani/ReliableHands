using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWP_Project
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("changePassword.aspx");
        }

        protected void ContactUsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactus.aspx");
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {

        }
    }
}