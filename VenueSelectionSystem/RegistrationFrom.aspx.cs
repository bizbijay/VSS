﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace VenueSelectionSystem
{
    public partial class RegistrationFrom : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into tblUsers values('" + txtUserName.Text + "','" + txtUserPassword.Text + "','" + ddlUsertype.SelectedValue + "');", con);
                con.Open();
                int totalRowsAffected= cmd.ExecuteNonQuery();
                Response.Write("Registered");

                con.Close();
            }

        }
    }
}