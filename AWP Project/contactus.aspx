<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="AWP_Project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--contact us--%>
    <div class="contact-section">
        <h2>Contact Us</h2>
        <div class="form-container">
            <div class="form-card">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name:" CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="*Please enter your name" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your name</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input" placeholder="Enter your full name"></asp:TextBox>

                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:" CssClass="form-label"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhoneNumber" Display="Dynamic" ErrorMessage="*Not in proper format" ForeColor="#CC3300" SetFocusOnError="True" ValidationExpression="^[6-9]\d{9}$">*Not in proper format</asp:RegularExpressionValidator>
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-input" placeholder="Enter your phone number"></asp:TextBox>

                <asp:Label ID="lblEmail" runat="server" Text="Email ID:" CssClass="form-label"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Not in proper format" ForeColor="#CC3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Not in proper format</asp:RegularExpressionValidator>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="Enter your email"></asp:TextBox>

                <asp:Label ID="lblComplaint" runat="server" Text="Describe your Complaint/Query:" CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtComplaint" Display="Dynamic" ErrorMessage="*Please enter your complaint/query" ForeColor="#CC3300" SetFocusOnError="True">*Please enter your complaint/query</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtComplaint" runat="server" TextMode="MultiLine" CssClass="form-input" placeholder="Describe your complaint or query" Rows="5"></asp:TextBox>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="form-button"  />
            </div>
        </div>
    </div>
    <%--contact us--%>
</asp:Content>
