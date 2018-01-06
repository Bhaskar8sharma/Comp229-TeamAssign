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
    public partial class UpdateItems : System.Web.UI.Page
    {
        string constr = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            constr = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
            hdnItemId.Value = Request.QueryString["ID"];
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = "select [ID],[Title],[Description],'Content/images/'+[Image] as Image,Image as img,[Writer],[ReleaseDate],[Rating],ReleaseDate from items where Id=@ID";
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = hdnItemId.Value;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtbooktitle.Text = dr["Title"].ToString();
                    txtbookwriter.Text = dr["Writer"].ToString();
                    txtdescription.Text = dr["Description"].ToString();
                    txtreleasedate.Text = dr["ReleaseDate"].ToString();
                }
            }
        }
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = "Update Items set Title=@Title,Description=@Description, Writer=@Writer,ReleaseDate=@ReleaseDate where Id=@ID";
                cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = txtbooktitle.Text;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtdescription.Text;
                cmd.Parameters.Add("@Image", SqlDbType.VarChar).Value = bookimg.PostedFile.FileName;
                cmd.Parameters.Add("@Writer", SqlDbType.VarChar).Value = txtbookwriter.Text;
                cmd.Parameters.Add("@ReleaseDate", SqlDbType.VarChar).Value = txtreleasedate.Text;
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = hdnItemId.Value;
                cmd.ExecuteNonQuery();
                bookimg.SaveAs(Server.MapPath("content//images//" + bookimg.FileName));
                string message = "alert('Record Updates Successfully. ')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                con.Close();
            }
            catch (System.Exception ex)
            {
                string message = "alert('Updation Failed. try again')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
    }
}