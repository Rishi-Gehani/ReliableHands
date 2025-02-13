<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="AWP_Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="about-section">
        <h2>About Us</h2>

        <div class="card-container">
            <div class="card">
                <h3>What We Do</h3>
                <p>We provide innovative solutions to help businesses grow and succeed in the digital age. Our services include web development, digital marketing, and IT consulting.</p>
            </div>

            <div class="card">
                <h3>Who We Are</h3>
                <p>We are a team of passionate professionals dedicated to delivering high-quality services and exceptional customer experiences. Our mission is to empower businesses through technology.</p>
            </div>

            <div class="card">
                <h3>Meet the Developers</h3>
                <div class="developers-container">
                    <div class="developer-card">
                        <img src="profile logo.png" alt="Developer 1" class="developer-image" />
                        <h4>Rishi</h4>
                        <p>Developer</p>
                    </div>
                    <div class="developer-card">
                        <img src="profile logo.png" alt="Developer 2" class="developer-image" />
                        <h4>Sohan</h4>
                        <p>Developer</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
