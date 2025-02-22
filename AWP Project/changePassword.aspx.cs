using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace AWP_Project
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["DB1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmChange_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "update signup set password=@pass where username = @user";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pass", txtConfirmPassword.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Password changed successfully')</script>");

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error in changing password')</script>");
            }
        }
    }
}