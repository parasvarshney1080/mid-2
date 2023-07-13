<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.ascx.cs" Inherits="DataTableCRUD.EmployeeDetails" %>

<div>
    <h3>Employee Details</h3>
    <hr />
    <asp:HiddenField ID="hdnId" runat="server" />
    <label for="txtName">Name:</label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ValidationGroup="EmployeeValidation" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <label for="txtAge">Age:</label>
    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required." ValidationGroup="EmployeeValidation" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <label>Gender:</label>
    <asp:RadioButtonList ID="rblGender" runat="server" ValidationGroup="EmployeeValidation">
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender" ErrorMessage="Gender is required." ValidationGroup="EmployeeValidation" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <label for="txtProfession">Profession:</label>
    <asp:TextBox ID="txtProfession" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="rfvProfession" runat="server" ControlToValidate="txtProfession" ErrorMessage="Profession is required." ValidationGroup="EmployeeValidation" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <label>Languages Known:</label>
    <asp:CheckBox ID="chkHindi" runat="server" Text="Hindi" ValidationGroup="EmployeeValidation" />
    <asp:CheckBox ID="chkEnglish" runat="server" Text="English" ValidationGroup="EmployeeValidation" />
    <asp:CheckBox ID="chkGujarati" runat="server" Text="Gujarati" ValidationGroup="EmployeeValidation" />
    <br />
    <label for="ddlCountry">Country:</label>
    <asp:DropDownList ID="ddlCountry" runat="server" ValidationGroup="EmployeeValidation">
        <asp:ListItem Text="India" Value="India"></asp:ListItem>
        <asp:ListItem Text="Pakistan" Value="Pakistan"></asp:ListItem>
        <asp:ListItem Text="China" Value="China"></asp:ListItem>
        <asp:ListItem Text="Canada" Value="Canada"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountry" ErrorMessage="Country is required." ValidationGroup="EmployeeValidation" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" ValidationGroup="EmployeeValidation" />
</div>
