<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Assessment_Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 545px;
        }
        .auto-style3 {
            width: 232px;
            height: 208px;
            margin-left: 214px;
            margin-bottom: 40px;
        }
        .auto-style4 {
            width: 545px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 545px;
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" Runat="Server">
    <br />
    Here are your results. Leave a comment if you would like. Click <strong>Done</strong> when you are ready to submit your information to your doctor.
    <br />
    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
    <br />
    <table class="auto-style1">
        <tr>
            <td>Name:
                <asp:Label ID="lblName" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>Age:
                <asp:Label ID="lblAge" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>Gender:
                <asp:Label ID="lblGender" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>Doctor:
                <asp:Label ID="lblDoctor" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
    <strong>Results</strong><br />
    <asp:Label ID="lblResults" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblLifeExpectancy" runat="server"></asp:Label>
            </td>
            <td rowspan="5">
                <img alt="" class="auto-style3" src="../Images/Result_Logo.png" /></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
    <strong>Comments</strong>
                <br />
    <asp:TextBox ID="txtComments" runat="server" Height="57px" TextMode="MultiLine" Width="486px" MaxLength="500"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Button ID="btnDone" runat="server" CssClass="button" OnClick="btnDone_Click" Text="Done" />

            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>

