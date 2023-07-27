<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DataTableCRUD.Login" %>

<asp:Content runat="server" ID="con" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="mt-4">
        <h2>Login</h2>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        <div class="form-group">
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
    </div>
</asp:Content>
