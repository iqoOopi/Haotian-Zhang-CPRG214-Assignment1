using CPRG214.Marina.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Haotian_Zhang_CPRG214_Assignment1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxOK_Click(object sender, EventArgs e)
        {
            int ID = CustomerManager.Registe(uxFirstName.Text, uxLastName.Text, uxPhone.Text,uxCity.Text);
            if (ID != -1)
            {
                Session["customer"] = ID;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Redirect("~/Register.aspx");
            }
        }
    }
}