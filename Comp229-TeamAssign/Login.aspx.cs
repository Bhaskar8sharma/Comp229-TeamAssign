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
    public partial class Login : System.Web.UI.Page
    {
        string constr = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            constr = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
        }
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = "insert into Users(Name,UserName, Email, Password,DateCreated,IsLocked)values(@Name,@UserName, @Email, @Password,GETDATE(),0);";
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = txtname.Text;
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = txtusername.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtemail.Text;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = txtpassword.Text;
                cmd.ExecuteNonQuery();
                string message = "alert('User registered Successfully. ')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                con.Close();
            }
            catch (System.Exception ex)
            {
                string message = "alert('Registration Failed. try again')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
    }
}
