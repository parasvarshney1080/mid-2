<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataTableCRUD.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET DataTable CRUD Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Employee Records</h3>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="Id" />
                    <asp:BoundField HeaderText="Name" DataField="Name" />
                    <asp:BoundField HeaderText="Age" DataField="Age" />
                    <asp:BoundField HeaderText="Gender" DataField="Gender" />
                    <asp:BoundField HeaderText="Profession" DataField="Profession" />
                    <asp:BoundField HeaderText="Language Known" DataField="Languages" />
                    <asp:BoundField HeaderText="Country" DataField="Country" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" CommandArgument='<%# Eval("Id") %>' />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CommandArgument='<%# Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <h3>Add/Edit Employee</h3>
            <hr />
            <asp:HiddenField ID="hdnId" runat="server" />
            <label>Name:</label>
            <asp:TextBox ID="txtName" runat="server" ValidationGroup="EmployeeValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ValidationGroup="EmployeeValidation"></asp:RequiredFieldValidator>
            <br />
            <label>Age:</label>
            <asp:TextBox ID="txtAge" runat="server" ValidationGroup="EmployeeValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required." ValidationGroup="EmployeeValidation"></asp:RequiredFieldValidator>
            <br />
            <label>Gender:</label>
            <asp:RadioButtonList ID="rblGender" runat="server" ValidationGroup="EmployeeValidation">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender" ErrorMessage="Gender is required." ValidationGroup="EmployeeValidation"></asp:RequiredFieldValidator>
            <br />
            <label>Profession:</label>
            <asp:TextBox ID="txtProfession" runat="server" ValidationGroup="EmployeeValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvProfession" runat="server" ControlToValidate="txtProfession" ErrorMessage="Profession is required." ValidationGroup="EmployeeValidation"></asp:RequiredFieldValidator>
            <br />
            <label>Languages Known:</label>
            <asp:CheckBox ID="chkHindi" runat="server" Text="Hindi" ValidationGroup="EmployeeValidation" />
            <asp:CheckBox ID="chkEnglish" runat="server" Text="English" ValidationGroup="EmployeeValidation" />
            <asp:CheckBox ID="chkGujarati" runat="server" Text="Gujarati" ValidationGroup="EmployeeValidation" />
            <br />
            <label>Country:</label>
            <asp:DropDownList ID="ddlCountry" runat="server" ValidationGroup="EmployeeValidation">
                <asp:ListItem Text="India" Value="India"></asp:ListItem>
                <asp:ListItem Text="Pakistan" Value="Pakistan"></asp:ListItem>
                <asp:ListItem Text="China" Value="China"></asp:ListItem>
                <asp:ListItem Text="Canada" Value="Canada"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountry" ErrorMessage="Country is required." ValidationGroup="EmployeeValidation"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" ValidationGroup="EmployeeValidation" />
        </div>
    </form>
</body>
</html>
