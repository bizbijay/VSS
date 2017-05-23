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
    public partial class testtest : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ddlUsertype.SelectedValue == "admin")
            {

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("select aName from tblAdmin where aUsername='" + txtUsername.Text + "' AND aUserpassword='" + txtPassword.Text + "';", con);
                    con.Open();
                    string output = (string)cmd.ExecuteScalar();
                    if (output == null)
                    {
                        Response.Write("Invalid username or password!!!");
                    }
                    else
                    {
                        //SqlCommand cmd1 = new SqlCommand("select status from tblUsers where userName='" + txtUsername.Text + "' AND userPassword='" + txtUserpassword.Text + "' AND userType='" + ddlUsertype.SelectedValue + "';", con);
                        //string output1 = (string)cmd.ExecuteScalar();
                        //if (output1 == "verified")
                        //{
                        //    Response.Redirect("~/AdminHome.aspx");
                        //}
                        //else
                        //{
                        //    Response.Write("Your account is not verified yet!!!");
                        //}
                        HttpCookie Cookie = new HttpCookie("Username");
                        Cookie.Value = txtUsername.Text;
                        Cookie.Expires = DateTime.Now.AddHours(1);
                        Response.Cookies.Add(Cookie);
                        Response.Redirect("~/AdminHome.aspx");
                    }
                    con.Close();
                }
            }
            if (ddlUsertype.SelectedValue == "venuemanager")
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("select vmName from tblVenueManager where vmUsername='" + txtUsername.Text + "' AND vmPassword='" + txtPassword.Text + "';", con);
                    con.Open();
                    string output = (string)cmd.ExecuteScalar();
                    if (output == null)
                    {
                        Response.Write("Invalid username or password!!!");
                    }
                    else
                    {
                        //SqlCommand cmd1 = new SqlCommand("select status from tblUsers where userName='" + txtUsername.Text + "' AND userPassword='" + txtUserpassword.Text + "' AND userType='" + ddlUsertype.SelectedValue + "';", con);
                        //string output1 = (string)cmd.ExecuteScalar();
                        //if (output1 == "verified")
                        //{
                        //    Response.Redirect("~/AdminHome.aspx");
                        //}
                        //else
                        //{
                        //    Response.Write("Your account is not verified yet!!!");
                        //}
                        HttpCookie Cookie = new HttpCookie("Username");
                        Cookie.Value = txtUsername.Text;
                        Cookie.Expires = DateTime.Now.AddHours(1);
                        Response.Cookies.Add(Cookie);
                        Response.Redirect("~/VenueManagerHome.aspx");
                    }
                   
                    con.Close();
                }
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registrationform.aspx");
        }
    }
}