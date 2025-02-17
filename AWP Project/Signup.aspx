<%@ Page Title="Signup" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="AWP_Project.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h2>Signup</h2>
    <div class="form-container">
        <div class="form-card">
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSignupUsername" Display="Dynamic" ErrorMessage="*Please enter your username" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your username</asp:RequiredFieldValidator>
            <asp:Label ID="lblSignupUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="form-input" placeholder="Create a username"></asp:TextBox>
            
            <asp:Label ID="lblSignupPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSignupPassword" Display="Dynamic" ErrorMessage="*Please enter your password" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your password</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtSignupPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Create a password"></asp:TextBox>
            
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" CssClass="form-label"></asp:Label>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSignupPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="*Password didn't match" ForeColor="#CC3300" SetFocusOnError="True">*Password didn&#39;t match</asp:CompareValidator>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Confirm your password"></asp:TextBox>
            
            <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="form-button" OnClick="btnSignup_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Already a user?"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Login</asp:HyperLink>
        </div>
    </div>
</asp:Content>
