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
            if (Session["user"] != null)
            {
                UserNameLabel.Text = Session["user"].ToString();
            }
            else
            {
                string script = "alert('Please Login to create your profile'); window.location='login.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "redirect", script, true);
                UserNameLabel.Text = "Profile_Name";
            }
            
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
           
            Session.Remove("user");
            Response.Redirect("home.aspx");
        }

        protected void SubmitFeedbackButton_Click(object sender, EventArgs e)
        {
            string script = "alert('Thank You for your feedback'); window.location='home.aspx';";
            ScriptManager.RegisterStartupScript(this, GetType(), "redirect", script, true);
        }
    }
}