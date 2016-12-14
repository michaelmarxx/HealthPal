<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="DocPortal_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 141px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" Runat="Server">
    <h4>New doctors please enter your information below. After all blanks are filled click the register button to submit your form.</h4>
<p>Please note that you must have an access code to register.</p>
<asp:ValidationSummary ID="docRegisterValidationSummary" runat="server" ForeColor="Red" HeaderText="Please correct the following errors:" ValidationGroup="register" />
    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
    <br />
<asp:Label ID="lblMessage" runat="server" ForeColor="Green" EnableViewState="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDoctorRegister" runat="server" ConnectionString="<%$ ConnectionStrings:HealthPal %>" InsertCommand="INSERT INTO [Doctor] ([Doc_FName], [Doc_LName], [Doc_Type], [Doc_Username], [Doc_Password]) VALUES (@Doc_FName, @Doc_LName, @Doc_Type, @Doc_Username, @Doc_Password)">
        <InsertParameters>
            <asp:Parameter Name="Doc_FName" Type="String" />
            <asp:Parameter Name="Doc_LName" Type="String" />
            <asp:Parameter Name="Doc_Type" Type="String" />
            <asp:Parameter Name="Doc_Username" Type="String" />
            <asp:Parameter Name="Doc_Password" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">Access Code:</td>
        <td>
            <asp:TextBox ID="txtAccessCode" runat="server" Width="64px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAccessCode" Display="Dynamic" ErrorMessage="Access code required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">First Name:</td>
        <td>
            <asp:TextBox ID="txtDocRegFName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDocRegFName" Display="Dynamic" ErrorMessage="First name required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Last Name:</td>
        <td>
            <asp:TextBox ID="txtDocRegLName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDocRegLName" Display="Dynamic" ErrorMessage="Last name required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Doctor Type:</td>
        <td>
            <asp:DropDownList ID="ddlDocType" runat="server">
                <asp:ListItem>General</asp:ListItem>
                <asp:ListItem>Surgeon</asp:ListItem>
                <asp:ListItem>Physician</asp:ListItem>
                <asp:ListItem>Pediatrician</asp:ListItem>
                <asp:ListItem>Cardiologist</asp:ListItem>
                <asp:ListItem>OB-GYN</asp:ListItem>
                <asp:ListItem>Urologist</asp:ListItem>
                <asp:ListItem>Neurologist</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlDocType" Display="Dynamic" ErrorMessage="Doctor type required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Username:</td>
        <td>
            <asp:TextBox ID="txtDocRegUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDocRegUserName" Display="Dynamic" ErrorMessage="Username required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Password:</td>
        <td>
            <asp:TextBox ID="txtDocRegPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDocRegPassword" Display="Dynamic" ErrorMessage="Password required" ForeColor="Red" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Password:</td>
        <td>
            <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirmPass" Display="Dynamic" ErrorMessage="Password confirmation does not match. Try again." ForeColor="Red" ValidationGroup="register" ControlToCompare="txtDocRegPassword">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnDocRegister" runat="server" style="text-align: left" Text="Register" ValidationGroup="register" BackColor="#8FDD3C" Font-Bold="True" ForeColor="White" OnClick="btnDocRegister_Click" />
        </td>
    </tr>
</table>
</asp:Content>

