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
            // DataTable columns here
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
            // Save button click event code here
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // Edit button click event code here
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Delete button click event code here
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            // Add New Employee button click event code here
        }

        protected void EmployeeDetails1_SaveClicked(object sender, EmployeeDetailsEventArgs e)
        {
            int id = e.Id;
            string name = e.Name;
            int age = e.Age;
            string gender = e.Gender;
            string profession = e.Profession;
            string languages = e.Languages;
            string country = e.Country;

            dataTable = (DataTable)ViewState["EmployeeTable"];

            if (id == 0) // Create new record
            {
                DataRow newRow = dataTable.NewRow();
                // Set the values for the new row here
                dataTable.Rows.Add(newRow);
            }
            else // Update existing record
            {
                DataRow row = dataTable.Rows.Find(id);
                // Update the values of the existing row here
            }

            ViewState["EmployeeTable"] = dataTable;
            ClearForm();
            BindGrid();
        }

        private void ClearForm()
        {
            // Clear the form fields here
        }
    }
}
