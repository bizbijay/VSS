using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace VenueSelectionSystem
{
    public partial class testRegistrationform : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                userGeneralInfo.Visible = true;
                venueGeneralInfo.Visible = false;

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlUsertype.SelectedValue=="admin")
            {
                userGeneralInfo.Visible = true;
                venueGeneralInfo.Visible = false;
            }
            if (ddlUsertype.SelectedValue == "venuemanager")
            {
                userGeneralInfo.Visible = true;
                venueGeneralInfo.Visible = true;

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string usertype = (string)ddlUsertype.SelectedValue;


            if (chkaccept.Checked)
            {
                if (usertype == "admin")
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("insert into tblAdmin values('" + username.Text + "','" + userpassword.Text + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtContactnumber.Text + "','not verified');", con);
                        con.Open();
                        int totalRowsAffected = cmd.ExecuteNonQuery();
                        Response.Write("Registered");

                        con.Close();
                    }
                }
                if(usertype=="venuemanager")
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("insert into tblVenueManager values('" + username.Text + "','" + userpassword.Text + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtContactnumber.Text + "','" + txtVenuename.Text + "','" + txtPannumber.Text + "','" + txtVenueaddress.Text + "','" + txtVenuewebsite.Text + "','not verified');", con);
                        con.Open();
                        int totalRowsAffected = cmd.ExecuteNonQuery();
                        Response.Write("Registered");

                        con.Close();
                    }

                }
            }
            else
            {
                Response.Write("You haven't agreed terms and conditions...");

            }
        }
    }
}