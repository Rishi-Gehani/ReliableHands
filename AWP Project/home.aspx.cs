using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWP_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnService1_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            Session["carpenter"] = clickedButton.Text;
            Response.Redirect("bookingDetails.aspx");
        }

        protected void btnService2_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            Session["plumber"] = clickedButton.Text;
            Response.Redirect("bookingDetails.aspx");
        }

        protected void btnService3_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            Session["Electrition"] = clickedButton.Text;
            Response.Redirect("bookingDetails.aspx");
        }

        protected void btnService4_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            Session["Labour"] = clickedButton.Text;
            Response.Redirect("bookingDetails.aspx");
        }

        protected void btnService5_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            Session["Cleaner"] = clickedButton.Text;
            Response.Redirect("bookingDetails.aspx");
        }

        protected void btnService6_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            Session["Barbar"] = clickedButton.Text;
            Response.Redirect("bookingDetails.aspx");
        }
    }
}