using System;
using System.Data;
using System.Web.UI.WebControls;

namespace DataTableCRUD.Controllers
{
    public class EmployeeRecordsController : System.Web.UI.Page
    {
        private DataTable dataTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CreateDataTable();
                BindGrid();
            }
        }

        private void CreateDataTable()
        {
            dataTable = new DataTable();
            dataTable.Columns.Add("Id", typeof(int));
            dataTable.Columns.Add("Name", typeof(string));
            dataTable.Columns.Add("Age", typeof(int));
            dataTable.Columns.Add("Gender", typeof(string));
            dataTable.Columns.Add("Profession", typeof(string));
            dataTable.Columns.Add("Languages", typeof(string));
            dataTable.Columns.Add("Country", typeof(string));
            ViewState["EmployeeTable"] = dataTable;
        }

        private void BindGrid()
        {
            dataTable = (DataTable)ViewState["EmployeeTable"];
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int id = Convert.ToInt32(btnEdit.CommandArgument);

            dataTable = (DataTable)ViewState["EmployeeTable"];
            DataRow row = dataTable.Rows.Find(id);

            // Perform necessary actions for editing employee records
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            int id = Convert.ToInt32(btnDelete.CommandArgument);

            dataTable = (DataTable)ViewState["EmployeeTable"];
            DataRow row = dataTable.Rows.Find(id);
            dataTable.Rows.Remove(row);

            ViewState["EmployeeTable"] = dataTable;
            BindGrid();
        }
    }
}
