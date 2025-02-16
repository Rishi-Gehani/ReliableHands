<%@ Page Title="LoginSignup" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginSignup.aspx.cs" Inherits="AWP_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--login--%>
    <div class="login-signup-section">
        <h2>Login</h2>
        <div class="form-container">
            <div class="form-card">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="*PLEASE ENTER YOUR USERNAME" ForeColor="#CC3300" SetFocusOnError="True">*PLEASE ENTER YOUR USERNAME</asp:RequiredFieldValidator>
                
                <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input" placeholder="Enter your username"></asp:TextBox>
                
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300" SetFocusOnError="True">*PLEASE ENTER YOUR PASSWORD</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Enter your password"></asp:TextBox>
                
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="form-button" />
                <br />
                <br />
            </div>
        </div>
    <%--login--%>

        <%--signup--%>
        <h2>Signup</h2>
        <div class="form-container">
            <div class="form-card">
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSignupUsername" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300" SetFocusOnError="True">*PLEASE ENTER YOUR USERNAME</asp:RequiredFieldValidator>
                <asp:Label ID="lblSignupUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="form-input" placeholder="Create a username"></asp:TextBox>
                
                <asp:Label ID="lblSignupPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSignupPassword" Display="Dynamic" ErrorMessage="Enter Valid password" ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtSignupPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Create a password"></asp:TextBox>
                
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="PLEASE REENTER THE SAME PASSWORD" ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSignupPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="PASSWORD DOES NOT MATCH" ForeColor="#CC3300" SetFocusOnError="True">* PASSWORD DOES NOT MATCH</asp:CompareValidator>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Confirm your password"></asp:TextBox>
                
                <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="form-button" />
                <br />
                <br />
            </div>
        </div>
    </div>
    <%--signup--%>

</asp:Content>
