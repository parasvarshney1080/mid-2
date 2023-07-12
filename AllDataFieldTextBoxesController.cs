using System;
using System.Data;
using System.Web.UI.WebControls;

namespace DataTableCRUD.Controllers
{
    public class AllDataFieldTextboxesController : System.Web.UI.Page
    {
        private DataTable dataTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Perform necessary actions for loading the page with all data field textboxes
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Perform necessary actions for saving data from all data field textboxes
        }
    }
}
