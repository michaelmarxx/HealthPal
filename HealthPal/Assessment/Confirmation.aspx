<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Assessment_Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 350px;
            margin-left:35%;
        }
        .auto-style2 {
            width: 57px;
        }
        .auto-style3 {
            width: 57px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" Runat="Server">
    <div class="div_style">

    
        <br />
&nbsp;&nbsp; Confirm the information below then click <strong>Continue</strong> to begin you assessment.&nbsp; Click <strong>Back</strong> to make changes.<br />

    
        &nbsp;&nbsp;
        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>

    
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Name:</td>
                <td class="auto-style4">
        <asp:Label ID="lblName" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td>
                    <asp:Label ID="lblAddress" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblCityStateZip" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Phone:</td>
                <td>
                    <asp:Label ID="lblPhone" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Age:</td>
                <td>
                    <asp:Label ID="lblAge" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender:</td>
                <td>
                    <asp:Label ID="lblGender" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Button ID="btnBack" runat="server" PostBackUrl="~/Assessment/Register.aspx" Text="Back" CssClass="button" />
                </td>
                <td>
        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" CssClass="button" />
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

    
    </div>
</asp:Content>

