using System;
using System.Web;

namespace DataTableCRUD
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Replace this with your own authentication logic
            if (username == "admin" && password == "password")
            {
                Session["username"] = username;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblError.Text = "Invalid credentials. Please try again.";
            }
        }
    }
}
