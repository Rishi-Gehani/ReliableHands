<%@ Page Title="LoginSignup" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginSignup.aspx.cs" Inherits="AWP_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--login--%>
    <div class="login-signup-section">
        <h2>Login</h2>
        <div class="form-container">
            <div class="form-card">
                <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input" placeholder="Enter your username"></asp:TextBox>
                
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Enter your password"></asp:TextBox>
                
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="form-button" OnClick="btnLogin_Click" />
            </div>
        </div>
    <%--login--%>

        <%--signup--%>
        <h2>Signup</h2>
        <div class="form-container">
            <div class="form-card">
                <asp:Label ID="lblSignupUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="form-input" placeholder="Create a username"></asp:TextBox>
                
                <asp:Label ID="lblSignupPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtSignupPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Create a password"></asp:TextBox>
                
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Confirm your password"></asp:TextBox>
                
                <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="form-button" />
            </div>
        </div>
    </div>
    <%--signup--%>

</asp:Content>
