<%@ Page Title="" Language="C#" MasterPageFile="~/HealthPal.master" AutoEventWireup="true" CodeFile="Assessment.aspx.cs" Inherits="Assessment_Assessment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 137px;
        }
        .auto-style3 {
            width: 576px;
        }
        .auto-style4 {
            width: 243px;
            height: 228px;
            margin-left: 69px;
            margin-top: 0px;
            margin-bottom: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormPlaceHolder" Runat="Server">
    
    <br />
        Answer all questions honestly to yield the best results. Click <strong>Submit</strong> to recieve the results of your assessment.<br />
        <asp:SqlDataSource ID="SqlDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:HealthPal %>" SelectCommand="SELECT Doc_FName +' '+ Doc_LName As Name, Doc_ID FROM Doctor;"></asp:SqlDataSource>
       <br />
         <table class="auto-style1">
            <tr>
                <td class="auto-style2">Select your Doctor:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlDocs" runat="server" DataSourceID="SqlDoctors" DataTextField="Name" DataValueField="Doc_ID">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Doctor selection required" ControlToValidate="ddlDocs" Display="Dynamic" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
                <td rowspan="8">
                    <img class="auto-style4" src="../Images/Assessments_Logo.png" /></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Smoking Habits:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rdlSmoke" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="-11">Often</asp:ListItem>
                        <asp:ListItem Value="-5">Seldomly</asp:ListItem>
                        <asp:ListItem Value="0">Never</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdlSmoke" Display="Dynamic" ErrorMessage="Smoking Habits response required" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Exercise:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rdlExercise" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="9">More than 3 times a week</asp:ListItem>
                        <asp:ListItem Value="6">3 times a week</asp:ListItem>
                        <asp:ListItem Value="2">Less than 3 times a week</asp:ListItem>
                        <asp:ListItem Value="-3">Never</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rdlExercise" Display="Dynamic" ErrorMessage="Exercise response required" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Diet:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rdlDiet" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="15">Mostly fruits and vegetables</asp:ListItem>
                        <asp:ListItem Value="10">Fruits and vegetables w/meat</asp:ListItem>
                        <asp:ListItem Value="-5">Mostly meat</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rdlDiet" Display="Dynamic" ErrorMessage="Diet response required" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Sex:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rdlSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="7">Often</asp:ListItem>
                        <asp:ListItem Value="1">Seldomly</asp:ListItem>
                        <asp:ListItem Value="0">None</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rdlSex" Display="Dynamic" ErrorMessage="Sex response required" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Multi-Vitamins:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rdlVitamins" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="4">Everday</asp:ListItem>
                        <asp:ListItem Value="1">Somedays</asp:ListItem>
                        <asp:ListItem Value="0">Never</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rdlVitamins" Display="Dynamic" ErrorMessage="Multi-Vitamins response required" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Outlook of Life:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rdlOutlook" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="6">Optimistic</asp:ListItem>
                        <asp:ListItem Value="-3">Pessimistic</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rdlOutlook" Display="Dynamic" ErrorMessage="Outlook of Life response required" ForeColor="Red" ValidationGroup="assess">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btn_Submit" runat="server" Text="Submit" CssClass="button" OnClick="btn_Submit_Click" ValidationGroup="assess" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    
    
</asp:Content>

