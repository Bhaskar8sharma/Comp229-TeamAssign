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
    public partial class AddItem : System.Web.UI.Page
    {
        string constr = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId="] == null)
            {
                Response.Redirect("DetailsPage.aspx");
            }
            constr = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = "insert into Items(Title,Description, Image, Writer,ReleaseDate,Rating)values(@Title,@Description, @Image, @Writer,@ReleaseDate,0);";
                cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = txtbooktitle.Text;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtdescription.Text;
                cmd.Parameters.Add("@Image", SqlDbType.VarChar).Value = bookimg.PostedFile.FileName;
                cmd.Parameters.Add("@Writer", SqlDbType.VarChar).Value = txtbookwriter.Text;
                cmd.Parameters.Add("@ReleaseDate", SqlDbType.VarChar).Value = txtreleasedate.Text;
                cmd.ExecuteNonQuery();
                bookimg.SaveAs(Server.MapPath("Assets//images//" + bookimg.FileName));
                string message = "alert('Record Inserted Successfully. ')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                con.Close();
            }
            catch (System.Exception ex)
            {
                string message = "alert('Insertion Failed. try again')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
    }
}