<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="DocPortal.aspx.cs" Inherits="DocPortal_DocPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" runat="Server">
    <br />
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" style="margin-left:52%" EnableViewState="False"></asp:Label>
    <br />
    <br />
    <div style="width: 100%; height: 400px;">
        <div style="width: 45%; float: left; margin-left: 80px; text-align: left;">
            &nbsp;<br />
            <table class="auto-style1">
                <tr>

                    <td>
                        <h4 style="width: 178px; margin-left: 98px">Welcome to Doc Portal</h4>
                    </td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>
                        <img src="../Images/Reg_Logo.png" class="doc_icons" /></td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td class="auto-style4">New to Doc Portal? Please click the button below to register.</td>
                </tr>
                <tr>

                    <td class="auto-style3"></td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td class="auto-style2">
                        <asp:Button ID="btnRedirectRegister" runat="server" Text="Register" BackColor="#8fdd3c" Font-Bold="True" ForeColor="White" PostBackUrl="~/DocPortal/Register.aspx" Width="87px" style="margin-left: 137px" />

                    </td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <div style="width: 49%; float: right;">
            &nbsp;<br />
            <table class="auto-style1">
                <tr>

                    <td>
                        <h4 style="width: 118px; margin-left: 147px">Welcome back!</h4>
                    </td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>
                        <img src="../Images/Login_Logo.png" style="height: auto; width: 40px; margin-left: 185px;" /></td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username:<asp:TextBox ID="txtLoginUsername" runat="server" style="margin-left: 4px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginUsername" Display="Dynamic" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:
                    <asp:TextBox ID="txtLoginPassword" runat="server" style="margin-left: 4px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPassword" Display="Dynamic" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>
                        <asp:Button ID="btn_Login" runat="server" Text=" Login " color="white" BackColor="#8fdd3c" Font-Bold="True" ForeColor="White" Width="70px" OnClick="btn_Login_Click" style="margin-left: 170px" />
                    </td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

    </div>
    <br />
    <br />
</asp:Content>

