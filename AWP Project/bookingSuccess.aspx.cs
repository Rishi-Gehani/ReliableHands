using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWP_Project
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCustomerName.Text = "Customer Name: " + Session["name"].ToString();
                lblPhoneNumber.Text = "Phone Number: " + Session["phone"].ToString();

            }
            if (!IsPostBack)
            {
                if (Session["carpenter"] != null)
                {
                    lblServiceType.Text = "Service Selected : " + Session["carpenter"].ToString();
                }

                if (Session["plumber"] != null)
                {
                    lblServiceType.Text = "Service Selected : " + Session["plumber"].ToString();
                }

                if (Session["Electrition"] != null)
                {
                    lblServiceType.Text = "Service Selected : " + Session["Electrition"].ToString();
                }

                if (Session["Labour"] != null)
                {
                    lblServiceType.Text = "Service Selected : " + Session["Labour"].ToString();
                }

                if (Session["Cleaner"] != null)
                {
                    lblServiceType.Text = "Service Selected : " + Session["Cleaner"].ToString();
                }

                if (Session["Barbar"] != null)
                {
                    lblServiceType.Text = "Service Selected : " + Session["Barbar"].ToString();
                }
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}