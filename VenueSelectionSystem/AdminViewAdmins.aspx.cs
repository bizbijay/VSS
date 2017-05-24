using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace VenueSelectionSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        SqlDataAdapter da;
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }
        public void BindData()
        {
            con = new SqlConnection(cs);
            cmd.CommandText = "Select * from tblAdmin";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            Grid.DataSource = ds;
            Grid.DataBind();
            con.Close();
        }


        protected void Grid_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            con = new SqlConnection(cs);
            cmd.Connection = con;
            int adminId = (int)Grid.DataKeys[(int)e.Item.ItemIndex];
            cmd.CommandText = "Delete from tblAdmin where adminId=" + adminId;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Grid.EditItemIndex = -1;
            BindData();
        }

        protected void Grid_EditCommand(object source, DataGridCommandEventArgs e)
        {
            con = new SqlConnection(cs);
            cmd.Connection = con;
            int adminId = (int)Grid.DataKeys[(int)e.Item.ItemIndex];
            cmd.CommandText = "update tblAdmin set status='verified' where adminId=" + adminId;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();

            BindData();

        }
    }


}

