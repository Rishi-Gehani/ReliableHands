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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DB1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]!=null)
            {
                Response.Write("Welcome "+Session["user"]);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "insert into BookingDetails(Name,Address,Phoneno,pincode) values (@name,@address,@phoneno,@pincode)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@phoneno", txtPhone.Text);
                cmd.Parameters.AddWithValue("@pincode", txtPincode.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Session["name"] = txtName.Text;
                    Session["phone"] = txtPhone.Text;
                    Response.Redirect("billingDetails.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please Fill the Details Correctly')</script>");
                }
                con.Close();
            }
        }
    }
}