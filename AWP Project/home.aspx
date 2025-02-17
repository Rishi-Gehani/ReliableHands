<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AWP_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--image section--%>
    <div class="office-image">
        <img src="home_page.png" alt="Our Office" />
    </div>
    <%--image section--%>


    <%--our services section--%>
    <div class="services-section">
        <h2>Our Services</h2>
        <div class="services-buttons">
            <asp:Button ID="btnService1" runat="server" Text="Carpenter" CssClass="service-button" OnClick="btnService1_Click"  />
            <asp:Button ID="btnService2" runat="server" Text="Plumber" CssClass="service-button" OnClick="btnService2_Click"  />
            <asp:Button ID="btnService3" runat="server" Text="Electrician" CssClass="service-button" OnClick="btnService3_Click"  />
            <asp:Button ID="btnService4" runat="server" Text="Labour" CssClass="service-button" OnClick="btnService4_Click"  />
            <asp:Button ID="btnService5" runat="server" Text="Cleaner" CssClass="service-button" OnClick="btnService5_Click"  />
            <asp:Button ID="btnService6" runat="server" Text="Barber" CssClass="service-button" OnClick="btnService6_Click"  />
        </div>
    </div>
    <%--our services section--%>


</asp:Content>
