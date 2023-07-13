In the Default.aspx page, remove the Employee Details section code and add the user control as follows:

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataTableCRUD.Default" %>
<%@ Register Src="EmployeeDetails.ascx" TagPrefix="uc" TagName="EmployeeDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET DataTable CRUD Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <h1>Employee Management System</h1>
            </header>
            <hr />
            <h3>Employee Records</h3>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <!-- GridView columns here -->
            </asp:GridView>
            <br />
            <uc:EmployeeDetails ID="EmployeeDetails1" runat="server" OnSaveClicked="EmployeeDetails1_SaveClicked" />
            <br />
            <hr />
            <footer>
                <p>&copy; 2023 Employee Management System. All rights reserved.</p>
            </footer>
        </div>
    </form>
</body>
</html>
