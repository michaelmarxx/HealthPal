<%@ Page Title="" Language="C#" MasterPageFile="~/DocPortal.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="DocPortal_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headDocPlaceHolder" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 269px;
            height: 298px;
            float: none;
            text-align: center;
            margin-left: 55px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormDocPlaceHolder" Runat="Server">

    Below you will find your <strong>Access Code</strong>. Give this code to other doctors when they are ready to register.<br />
    <asp:Label ID="hiddenDocID" runat="server" Visible="False"></asp:Label>
    <br />
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <p>
                    <img class="auto-style2" src="../Images/Doctor_Logo.png" /></p>
            </td>
            <td>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><span class="auto-style3">First name:<br />
                </span><strong>
                <asp:Label ID="lblFirstname" runat="server" CssClass="auto-style3"></asp:Label>
                </strong></td>
            <td><span class="auto-style3">Last name:<br />
                </span><strong>
                <asp:Label ID="lblLastname" runat="server" CssClass="auto-style3"></asp:Label>
                </strong></td>
            <td><span class="auto-style3">Type of Doctor:<br />
                </span><strong>
                <asp:Label ID="lblType" runat="server" CssClass="auto-style3"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><span class="auto-style4">Access Code: </span>
                <asp:Label ID="lblAccessCode" runat="server" CssClass="auto-style4" style="font-weight: 700"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

