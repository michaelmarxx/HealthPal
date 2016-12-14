<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Assessment_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 82px;
        }
        .auto-style3 {
            width: 220px;
            height: 214px;
        }
        .auto-style4 {
            width: 370px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" Runat="Server">
    <br />
   <h4> Welcome to the HealthPal Assessment. Enter your information below then click register.</h4>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please correct the following errors:" ValidationGroup="reg" />
    <asp:Label ID="lblError" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;First Name:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtFirstNameHP" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstNameHP" Display="Dynamic" ErrorMessage="First name required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
            <td rowspan="9">
                <img class="auto-style3" src="../Images/Reg_Logo.png" /></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Last Name:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtLastNameHP" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastNameHP" Display="Dynamic" ErrorMessage="Last name required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Address:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAddressHP" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddressHP" Display="Dynamic" ErrorMessage="Address required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;City:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCityHP" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCityHP" Display="Dynamic" ErrorMessage="City required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;State:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtStateHP" runat="server" Width="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtStateHP" Display="Dynamic" ErrorMessage="State required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Zip:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtZipHP" runat="server" Width="53px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtZipHP" Display="Dynamic" ErrorMessage="Zip required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phone:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPhoneHP" runat="server" TextMode="Phone" Width="99px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhoneHP" Display="Dynamic" ErrorMessage="Phone number required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Age:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAgeHP" runat="server" Width="32px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAgeHP" Display="Dynamic" ErrorMessage="Age" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtAgeHP" Display="Dynamic" ErrorMessage="Must be a number." ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="reg">*</asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Gender:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlGenderHP" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlGenderHP" Display="Dynamic" ErrorMessage="Gender required" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnRegisterHP" runat="server" Text="Register" cssclass="button" ValidationGroup="reg" OnClick="btnRegisterHP_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

