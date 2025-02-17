<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="AWP_Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="about-section">
        <h2>About Us</h2>

        <div class="card-container">
            <div class="card">
                <h3>What We Do</h3>
                <p>We turn worries into solutions, connecting you with experts who fix, build, and restore with care. Whether it’s the warmth of a well-lit home, the strength of a sturdy door, or the comfort of a leak-free space—we ensure quality, trust, and convenience at your doorstep.</p>
            </div>

            <div class="card">
                <h3>Who We Are</h3>
                <p>We are the bridge between your needs and the hands that craft solutions. A trusted home for skilled professionals, where reliability meets expertise. Our mission is simple—bringing you peace of mind, one service at a time.</p>
            </div>

            <div class="card">
                <h3>Meet the Developers</h3>
                <div class="developers-container">
                    <div class="developer-card">
                        <img src="developer.png" alt="Developer 1" class="developer-image" />
                        <h4>Rishi Gehani</h4>
                        <p>Developer</p>
                    </div>
                    <div class="developer-card">
                        <img src="developer.png" alt="Developer 2" class="developer-image" />
                        <h4>Sohan Thakur</h4>
                        <p>Developer</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
