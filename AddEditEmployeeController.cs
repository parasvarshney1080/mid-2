using System;
using System.Data;
using System.Web.UI.WebControls;

namespace DataTableCRUD.Controllers
{
    public class AddEditEmployeeController : System.Web.UI.Page
    {
        private DataTable dataTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Perform necessary actions for loading the Add/Edit Employee page
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Perform necessary actions for saving employee data
        }

        private void ClearForm()
        {
            // Perform necessary actions for clearing the form
        }
    }
}
