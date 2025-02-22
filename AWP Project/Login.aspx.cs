using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace AWP_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["DB1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

         protected void btnLogin_Click(object sender, EventArgs e)
  {
      
      
      SqlConnection con = new SqlConnection(cs);
      string query = "select count(*) from signup where username = @user and password = @pass";
      SqlCommand cmd = new SqlCommand(query, con);
      cmd.Parameters.AddWithValue("@user", txtUsername.Text);
      cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
      con.Open();
            int a = (int)cmd.ExecuteScalar();
            if (a>0)
            {
                Session["user"] = txtUsername.Text;
                Response.Redirect("bookingDetails.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Username and password')</script>");
            }
            //SqlDataReader dr =  cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //     Session["user"] = txtUsername.Text;
            //    //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Login Successful')</script>");
            //   Response.Redirect("bookingDetails.aspx");
            //}
            // else
            // {
            //     Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Unsuccessful')</script>");
            // }
            con.Close();
  }

    }
}