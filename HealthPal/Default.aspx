<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 276px;
            height: 252px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" Runat="Server">
    <div class="center">
    <h2 class="auto-style1">
        Hello and Welcome to HealthPal!</h2>
    <h4 class="auto-style1">
        &nbsp;If you are here because your doctor needs to file an assessment for you, then click the <strong>Assessment</strong> button in the menu.</h4>
    <img class="auto-style2" src="Images/Assessments_Logo.png" /><br />
    <br />

    <h4 class="auto-style1">Doctors please click Doc Portal to login or register.</h4>
        </div>
</asp:Content>

