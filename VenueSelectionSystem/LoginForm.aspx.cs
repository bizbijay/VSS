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
    public partial class mainForm : System.Web.UI.Page
    {
        string cs=ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select userName from tblUsers where userName='" + txtUsername.Text + "' AND userPassword='"+txtUserpassword.Text+ "' AND userType='" + ddlUsertype.SelectedValue + "';", con);
                con.Open();
                string output = (string)cmd.ExecuteScalar();
                if(ddlUsertype.SelectedValue=="Admin")
                {
                    if (output == null)
                    {
                        Response.Write("Invalid username or password!!!");
                    }
                    else
                    {
                        Response.Redirect("~/AdminForm.aspx");
                    }
                }
                if(ddlUsertype.SelectedValue=="VenueManager")
                {
                    if (output == null)
                    {
                        Response.Write("Invalid username or password!!!");
                    }
                    else
                    {
                        Response.Redirect("~/VenueManagerForm.aspx");
                    }
                }

                con.Close();
            }


        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegistrationFrom.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserForm.aspx");
        }
    }
}