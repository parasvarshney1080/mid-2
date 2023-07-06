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
                    <asp:BoundField HeaderText="Languages Known" DataField="Languages" />
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
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <label>Age:</label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <br />
            <label>Gender:</label>
            <asp:RadioButtonList ID="rblGender" runat="server">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <label>Profession:</label>
            <asp:TextBox ID="txtProfession" runat="server"></asp:TextBox>
            <br />
            <label>Languages Known:</label>
            <asp:CheckBox ID="chkHindi" runat="server" Text="Hindi" />
            <asp:CheckBox ID="chkEnglish" runat="server" Text="English" />
            <asp:CheckBox ID="chkGujarati" runat="server" Text="Gujarati" />
            <br />
            <label>Country:</label>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>
        <br />
        <div>
            <<nav>
                <ul>
                    <li><a href="#" onclick="selectCountry('India')">India</a></li>
                    <li><a href="#" onclick="selectCountry('Pakistan')">Pakistan</a></li>
                    <li><a href="#" onclick="selectCountry('China')">China</a></li>
                    <li><a href="#" onclick="selectCountry('Canada')">Canada</a></li>
                </ul>
            </nav>
        </div>
    </form>
    <script>
        function selectCountry(country) {
            document.getElementById('<%=txtCountry.ClientID %>').value = country;
        }
    </script>
</body>
</html>
