<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="AWP_Project.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="password-container">
        <h2 class="password-heading">Change Password</h2>

        <div class="form-group">
            <asp:Label ID="lblUsername" runat="server" CssClass="label-heading" Text="Username:"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="*Please enter username" ForeColor="#CC3300" SetFocusOnError="True">*Please enter username</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" ></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblOldPassword" runat="server" CssClass="label-heading" Text="Old Password:"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOldPassword" Display="Dynamic" ErrorMessage="*Please enter your old password" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your old password</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtOldPassword" runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblNewPassword" runat="server" CssClass="label-heading" Text="New Password:"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPassword" Display="Dynamic" ErrorMessage="*Please enter your new password" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your new password</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblConfirmPassword" runat="server" CssClass="label-heading" Text="Confirm New Password:"></asp:Label>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="*Password Doesn't match" ForeColor="#CC3300" SetFocusOnError="True">*Password Doesn&#39;t match</asp:CompareValidator>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>
        </div>

        <asp:Button ID="btnConfirmChange" runat="server" Text="Confirm Change" CssClass="btn-submit" OnClick="btnConfirmChange_Click"    />
    </div>
</asp:Content>
