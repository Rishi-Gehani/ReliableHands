<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginSignup.aspx.cs" Inherits="AWP_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="login-signup-section">
        <h2>Login</h2>
        <div class="form-container">
            <div class="form-card">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="*Please enter your username" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your username</asp:RequiredFieldValidator>
                <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input" placeholder="Enter your username"></asp:TextBox>
                
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*Please enter your password" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your password</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Enter your password"></asp:TextBox>
                
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="form-button" OnClick="btnLogin_Click1" />
                
                <br />
                <br />
               
                <asp:Label ID="Label1" runat="server" Text="New here? "></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Navigateurl="Signup.aspx">Signup</asp:HyperLink>
            </div>
        </div>
      
    </div>
    
</asp:Content>
