using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace NLiteEnquirySystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"]!=null)
            {
                lblErrorLogin.Text = "session Created Succesfully";

            }
            else
            {
                lblErrorLogin.Text = "session was not created succesfully";     

            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            //SqlParameter p1 = new SqlParameter("username", txtUsername.Text);
            //SqlParameter p2 = new SqlParameter("password", txtPassword.Text);
            NLiteEnquiryBLL.UserBLL userData = new NLiteEnquiryBLL.UserBLL();
            DataSet userDS = userData.GetUseDetails(txtUsername.Text, txtPassword.Text);
            DataTable userTable = userDS.Tables[0];
            if (userTable.Rows.Count > 0)
            {
                Session["Username"] = txtUsername.Text;
                Response.Redirect("Home.aspx");
                
            }
            else
            {
                lblErrorLogin.Visible = true;

                lblErrorLogin.Text = "Invalid User/Password. Please check and try again.";
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}