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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string constr = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            constr = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = "select * from items";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                Rptitems.DataSource = dt;
                Rptitems.DataBind();
            }
            con.Close();
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                int userId = 0; string UserName = string.Empty;
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = "select Id,Username from users where Username=@UserName and Password=@Password and IsLocked=0";
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = txtusername.Text;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = txtpassword.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    userId = Convert.ToInt32(dr["Id"]);
                    UserName = dr["Username"].ToString();

                }
                if (userId > 0)
                {
                    Session["UserId="] = userId;
                    Response.Redirect("TrackingPage.aspx");
                }
                else
                {
                    lblerror.Text = "Incorrect Username or password !";
                }
                //string message = "alert('User registered Successfully. ')";
                //ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                con.Close();
            }
            catch (System.Exception ex)
            {
                lblerror.Text = ex.Message;
                //string message = "alert('Registration Failed. try again')";
                //ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
    }
}