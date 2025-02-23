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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DB1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "insert into contactus(Fullname,Phoneno,emailid,complaint) values (@name,@phone,@email,@complaint)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", txtFullName.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhoneNumber.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@complaint", txtComplaint.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    string script = "alert('Your complaint has been registered!'); window.location='home.aspx';";
                    ScriptManager.RegisterStartupScript(this, GetType(), "redirect", script, true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error , please try again')</script>");
                }
                con.Close();
            }
            

        }
    }
}