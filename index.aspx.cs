using System;
using System.Data;
using System.Web.UI.WebControls;

namespace DataTableCRUD
{
    public partial class Default : System.Web.UI.Page
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
            ViewState["EmployeeTable"] = dataTable;
        }

        private void BindGrid()
        {
            dataTable = (DataTable)ViewState["EmployeeTable"];
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(hdnId.Value);
            string name = txtName.Text;
            int age = Convert.ToInt32(txtAge.Text);

            dataTable = (DataTable)ViewState["EmployeeTable"];

            if (id == 0) // Create new record
            {
                DataRow newRow = dataTable.NewRow();
                newRow["Id"] = dataTable.Rows.Count + 1;
                newRow["Name"] = name;
                newRow["Age"] = age;
                dataTable.Rows.Add(newRow);
            }
            else // Update existing record
            {
                DataRow row = dataTable.Rows.Find(id);
                row["Name"] = name;
                row["Age"] = age;
            }

            ViewState["EmployeeTable"] = dataTable;
            ClearForm();
            BindGrid();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int id = Convert.ToInt32(btnEdit.CommandArgument);

            dataTable = (DataTable)ViewState["EmployeeTable"];
            DataRow row = dataTable.Rows.Find(id);

            hdnId.Value = row["Id"].ToString();
            txtName.Text = row["Name"].ToString();
            txtAge.Text = row["Age"].ToString();
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

        private void ClearForm()
        {
            hdnId.Value = "0";
            txtName.Text = string.Empty;
            txtAge.Text = string.Empty;
        }
    }
}
