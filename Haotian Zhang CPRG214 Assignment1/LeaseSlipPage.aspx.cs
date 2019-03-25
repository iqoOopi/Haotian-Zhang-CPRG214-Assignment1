using CPRG214.Marina.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Haotian_Zhang_CPRG214_Assignment1
{
    public partial class LeaseSlipPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer"] == null)
            {
                Response.Redirect("~/Register.aspx");
            }

        }


        protected void uxRelatedSlipGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            int slipId = Convert.ToInt32(uxRelatedSlipGrid.SelectedRow.Cells[0].Text);
            int customerId = Convert.ToInt32(Session["customer"]);
            LeaseManager.addLease(customerId, slipId);//add new lease
            //refresh 2 grids
            uxRelatedSlipGrid.DataBind();
            uxRelatedSlipGrid.SelectedIndex = -1;
            uxGvHistory.DataBind();
        }
    }
}