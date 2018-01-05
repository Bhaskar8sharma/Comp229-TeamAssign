using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Comp229_TeamAssign
{
    public partial class TrackingPage : System.Web.UI.Page
    {
        string constr = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId="] == null)
        {
            Response.Redirect("DetailPage.aspx");
        }
        constr = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.CommandText = "select * from items where  releasedate>='2017-12-12 00:00:00.000'";
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            DataTable dt = new DataTable();
            dt.Load(dr);
            Rprecentitems.DataSource = dt;
            Rprecentitems.DataBind();
        }

        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.Connection = con;
        cmd1.CommandText = "select * from items where  id in(1,4,5)";
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            DataTable dt = new DataTable();
            dt.Load(dr1);
            Rptowned.DataSource = dt;
            Rptowned.DataBind();
        }
        con.Close();
    }
}
}