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
    public partial class WebForm10 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DB1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "insert into signup(username,password) values (@user,@pass)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@user", txtSignupUsername.Text);
                cmd.Parameters.AddWithValue("@pass", txtSignupPassword.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Unsuccessful')</script>");
                }
                con.Close();
            }
        }
    }
}