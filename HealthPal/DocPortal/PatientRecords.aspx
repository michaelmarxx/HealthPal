<%@ Page Title="" Language="C#" MasterPageFile="~/DocPortal.master" AutoEventWireup="true" CodeFile="PatientRecords.aspx.cs" Inherits="DocPortal_PatientRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headDocPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormDocPlaceHolder" Runat="Server">
    <asp:SqlDataSource ID="SqlAssessment" runat="server" ConnectionString="<%$ ConnectionStrings:HealthPal %>" DeleteCommand="DELETE FROM Assessment WHERE (Assess_ID = @Assess_ID)" SelectCommand="SELECT Patient.Pat_ID, Patient.Pat_FName, Patient.Pat_LName, Patient.Pat_Age, Patient.Pat_Gender, Assessment.Assess_Smoker, Assessment.Assess_Exercise, Assessment.Assess_Diet, Assessment.Assess_Sex, Assessment.Assess_Vitamins, Assessment.Assess_LifeOutlook, Assessment.Assess_Results, Assessment.Assess_LifeExpectancy, Assessment.Assess_Comments, Assessment.Assess_Date, Assessment.Assess_ID FROM Assessment INNER JOIN Patient ON Assessment.Pat_ID = Patient.Pat_ID WHERE (Assessment.Doc_ID = @DocID)">
        <DeleteParameters>
            <asp:Parameter Name="Assess_ID" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="hiddenDocID" Name="DocID" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h4>Below is a list of all assessments completed by your patients.&nbsp; You must delete an assesment before you can delete a patient from you records.</h4><br />
    <asp:Label ID="hiddenDocID" runat="server" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Pat_ID,Assess_ID" DataSourceID="SqlAssessment">
        <AlternatingItemTemplate>
            <span style=""><strong>Patient ID:</strong>
            <asp:Label ID="Pat_IDLabel" runat="server" Text='<%# Eval("Pat_ID") %>' />
            &nbsp;
            <br />
            <br />
            <strong>First name:</strong>
            <asp:Label ID="Pat_FNameLabel" runat="server" Text='<%# Eval("Pat_FName") %>' />
            &nbsp;&nbsp;&nbsp; <strong>Last name:</strong>
            <asp:Label ID="Pat_LNameLabel" runat="server" Text='<%# Eval("Pat_LName") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Age:</strong>
            <asp:Label ID="Pat_AgeLabel" runat="server" Text='<%# Eval("Pat_Age") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Gender:</strong>
            <asp:Label ID="Pat_GenderLabel" runat="server" Text='<%# Eval("Pat_Gender") %>' />
            <br />
            <br />
            <strong>Smoking Habits:</strong>
            <asp:Label ID="Assess_SmokerLabel" runat="server" Text='<%# Eval("Assess_Smoker") %>' />
            &nbsp;<br />
            <strong>Exercise:</strong>
            <asp:Label ID="Assess_ExerciseLabel" runat="server" Text='<%# Eval("Assess_Exercise") %>' />
            &nbsp;<br />
            <strong>Diet:</strong>
            <asp:Label ID="Assess_DietLabel" runat="server" Text='<%# Eval("Assess_Diet") %>' />
            &nbsp;
            <br />
            <strong>Sex:</strong>
            <asp:Label ID="Assess_SexLabel" runat="server" Text='<%# Eval("Assess_Sex") %>' />
            <br />
           <strong>Vitamins:</strong>
            <asp:Label ID="Assess_VitaminsLabel" runat="server" Text='<%# Eval("Assess_Vitamins") %>' />
            <br />
            <strong>Life Outlook:</strong>
            <asp:Label ID="Assess_LifeOutlookLabel" runat="server" Text='<%# Eval("Assess_LifeOutlook") %>' />
            <br />
            <br />
            <strong>Results:</strong>
            <br />
            <asp:Label ID="Assess_ResultsLabel" runat="server" Text='<%# Eval("Assess_Results") %>' />
            <br />
            <br />
            <strong>LifeExpectancy:</strong>
            <br />
            <asp:Label ID="Assess_LifeExpectancyLabel" runat="server" Text='<%# Eval("Assess_LifeExpectancy") %>' />
            <br />
            <br />
            <strong>Comments:</strong>
            <br />
            <asp:Label ID="Assess_CommentsLabel" runat="server" Text='<%# Eval("Assess_Comments") %>' />
            <br />
            <br />
           <strong>Date of Assessment:</strong>
            <asp:Label ID="Assess_DateLabel" runat="server" Text='<%# Eval("Assess_Date", "{0:g}") %>' />
            <br />
            &nbsp;<asp:Label ID="Assess_IDLabel" runat="server" Text='<%# Eval("Assess_ID") %>' Visible="False" />
            <br />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');" Text="Delete" />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Pat_ID:
            <asp:Label ID="Pat_IDLabel1" runat="server" Text='<%# Eval("Pat_ID") %>' />
            <br />
            Pat_FName:
            <asp:TextBox ID="Pat_FNameTextBox" runat="server" Text='<%# Bind("Pat_FName") %>' />
            <br />
            Pat_LName:
            <asp:TextBox ID="Pat_LNameTextBox" runat="server" Text='<%# Bind("Pat_LName") %>' />
            <br />
            Pat_Age:
            <asp:TextBox ID="Pat_AgeTextBox" runat="server" Text='<%# Bind("Pat_Age") %>' />
            <br />
            Pat_Gender:
            <asp:TextBox ID="Pat_GenderTextBox" runat="server" Text='<%# Bind("Pat_Gender") %>' />
            <br />
            Assess_Smoker:
            <asp:TextBox ID="Assess_SmokerTextBox" runat="server" Text='<%# Bind("Assess_Smoker") %>' />
            <br />
            Assess_Exercise:
            <asp:TextBox ID="Assess_ExerciseTextBox" runat="server" Text='<%# Bind("Assess_Exercise") %>' />
            <br />
            Assess_Diet:
            <asp:TextBox ID="Assess_DietTextBox" runat="server" Text='<%# Bind("Assess_Diet") %>' />
            <br />
            Assess_Sex:
            <asp:TextBox ID="Assess_SexTextBox" runat="server" Text='<%# Bind("Assess_Sex") %>' />
            <br />
            Assess_Vitamins:
            <asp:TextBox ID="Assess_VitaminsTextBox" runat="server" Text='<%# Bind("Assess_Vitamins") %>' />
            <br />
            Assess_LifeOutlook:
            <asp:TextBox ID="Assess_LifeOutlookTextBox" runat="server" Text='<%# Bind("Assess_LifeOutlook") %>' />
            <br />
            Assess_Results:
            <asp:TextBox ID="Assess_ResultsTextBox" runat="server" Text='<%# Bind("Assess_Results") %>' />
            <br />
            Assess_LifeExpectancy:
            <asp:TextBox ID="Assess_LifeExpectancyTextBox" runat="server" Text='<%# Bind("Assess_LifeExpectancy") %>' />
            <br />
            Assess_Comments:
            <asp:TextBox ID="Assess_CommentsTextBox" runat="server" Text='<%# Bind("Assess_Comments") %>' />
            <br />
            Assess_Date:
            <asp:TextBox ID="Assess_DateTextBox" runat="server" Text='<%# Bind("Assess_Date") %>' />
            <br />
            Assess_ID:
            <asp:Label ID="Assess_IDLabel1" runat="server" Text='<%# Eval("Assess_ID") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Pat_FName:
            <asp:TextBox ID="Pat_FNameTextBox" runat="server" Text='<%# Bind("Pat_FName") %>' />
            <br />Pat_LName:
            <asp:TextBox ID="Pat_LNameTextBox" runat="server" Text='<%# Bind("Pat_LName") %>' />
            <br />Pat_Age:
            <asp:TextBox ID="Pat_AgeTextBox" runat="server" Text='<%# Bind("Pat_Age") %>' />
            <br />Pat_Gender:
            <asp:TextBox ID="Pat_GenderTextBox" runat="server" Text='<%# Bind("Pat_Gender") %>' />
            <br />Assess_Smoker:
            <asp:TextBox ID="Assess_SmokerTextBox" runat="server" Text='<%# Bind("Assess_Smoker") %>' />
            <br />Assess_Exercise:
            <asp:TextBox ID="Assess_ExerciseTextBox" runat="server" Text='<%# Bind("Assess_Exercise") %>' />
            <br />Assess_Diet:
            <asp:TextBox ID="Assess_DietTextBox" runat="server" Text='<%# Bind("Assess_Diet") %>' />
            <br />Assess_Sex:
            <asp:TextBox ID="Assess_SexTextBox" runat="server" Text='<%# Bind("Assess_Sex") %>' />
            <br />Assess_Vitamins:
            <asp:TextBox ID="Assess_VitaminsTextBox" runat="server" Text='<%# Bind("Assess_Vitamins") %>' />
            <br />Assess_LifeOutlook:
            <asp:TextBox ID="Assess_LifeOutlookTextBox" runat="server" Text='<%# Bind("Assess_LifeOutlook") %>' />
            <br />Assess_Results:
            <asp:TextBox ID="Assess_ResultsTextBox" runat="server" Text='<%# Bind("Assess_Results") %>' />
            <br />Assess_LifeExpectancy:
            <asp:TextBox ID="Assess_LifeExpectancyTextBox" runat="server" Text='<%# Bind("Assess_LifeExpectancy") %>' />
            <br />Assess_Comments:
            <asp:TextBox ID="Assess_CommentsTextBox" runat="server" Text='<%# Bind("Assess_Comments") %>' />
            <br />Assess_Date:
            <asp:TextBox ID="Assess_DateTextBox" runat="server" Text='<%# Bind("Assess_Date") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br />
            <br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style=""><strong>Patient ID:</strong>
            <asp:Label ID="Pat_IDLabel" runat="server" Text='<%# Eval("Pat_ID") %>' />
            &nbsp;
            <br />
            <br />
            <strong>First name:</strong>
            <asp:Label ID="Pat_FNameLabel" runat="server" Text='<%# Eval("Pat_FName") %>' />
            &nbsp;&nbsp;&nbsp; <strong>Last name:</strong>
            <asp:Label ID="Pat_LNameLabel" runat="server" Text='<%# Eval("Pat_LName") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Age:</strong>
            <asp:Label ID="Pat_AgeLabel" runat="server" Text='<%# Eval("Pat_Age") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Gender:</strong>
            <asp:Label ID="Pat_GenderLabel" runat="server" Text='<%# Eval("Pat_Gender") %>' />
            <br />
            <br />
            <strong>Smoking Habits:</strong>
            <asp:Label ID="Assess_SmokerLabel" runat="server" Text='<%# Eval("Assess_Smoker") %>' />
            &nbsp;<br /> <strong>Exercise:</strong>
            <asp:Label ID="Assess_ExerciseLabel" runat="server" Text='<%# Eval("Assess_Exercise") %>' />
            &nbsp;<br /> <strong>Diet:</strong>
            <asp:Label ID="Assess_DietLabel" runat="server" Text='<%# Eval("Assess_Diet") %>' />
            &nbsp;
            <br />
            <strong>Sex:</strong>
            <asp:Label ID="Assess_SexLabel" runat="server" Text='<%# Eval("Assess_Sex") %>' />
            <br />
            <strong>Vitamins:</strong>
            <asp:Label ID="Assess_VitaminsLabel" runat="server" Text='<%# Eval("Assess_Vitamins") %>' />
            <br />
            <strong>Life Outlook:</strong>
            <asp:Label ID="Assess_LifeOutlookLabel" runat="server" Text='<%# Eval("Assess_LifeOutlook") %>' />
            <br />
            <br />
            <strong>Results:</strong>
            <br />
            <asp:Label ID="Assess_ResultsLabel" runat="server" Text='<%# Eval("Assess_Results") %>' />
            <br />
            <br />
            <strong>LifeExpectancy:</strong>
            <br />
            <asp:Label ID="Assess_LifeExpectancyLabel" runat="server" Text='<%# Eval("Assess_LifeExpectancy") %>' />
            <br />
            <br />
            <strong>Comments:</strong>
            <br />
            <asp:Label ID="Assess_CommentsLabel" runat="server" Text='<%# Eval("Assess_Comments") %>' />
            <br />
            <br />
            <strong>Date of Assessment:</strong>
            <asp:Label ID="Assess_DateLabel" runat="server" Text='<%# Eval("Assess_Date", "{0:g}") %>' />
            <br />
            &nbsp;<asp:Label ID="Assess_IDLabel" runat="server" Text='<%# Eval("Assess_ID") %>' Visible="False" />
            <br />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');" Text="Delete" />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
                  <span style=""><strong>Patient ID:</strong>
            <asp:Label ID="Pat_IDLabel" runat="server" Text='<%# Eval("Pat_ID") %>' />
            &nbsp;
            <br />
            <br />
            <strong>First name:</strong>
            <asp:Label ID="Pat_FNameLabel" runat="server" Text='<%# Eval("Pat_FName") %>' />
            &nbsp;&nbsp;&nbsp; <strong>Last name:</strong>
            <asp:Label ID="Pat_LNameLabel" runat="server" Text='<%# Eval("Pat_LName") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Age:</strong>
            <asp:Label ID="Pat_AgeLabel" runat="server" Text='<%# Eval("Pat_Age") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Gender:</strong>
            <asp:Label ID="Pat_GenderLabel" runat="server" Text='<%# Eval("Pat_Gender") %>' />
            <br />
            <br />
            <strong>Smoking Habits:</strong>
            <asp:Label ID="Assess_SmokerLabel" runat="server" Text='<%# Eval("Assess_Smoker") %>' />
            &nbsp;<br />
            <strong>Exercise:</strong>
            <asp:Label ID="Assess_ExerciseLabel" runat="server" Text='<%# Eval("Assess_Exercise") %>' />
            &nbsp;<br />
            <strong>Diet:</strong>
            <asp:Label ID="Assess_DietLabel" runat="server" Text='<%# Eval("Assess_Diet") %>' />
            &nbsp;
            <br />
            <strong>Sex:</strong>
            <asp:Label ID="Assess_SexLabel" runat="server" Text='<%# Eval("Assess_Sex") %>' />
            <br />
           <strong>Vitamins:</strong>
            <asp:Label ID="Assess_VitaminsLabel" runat="server" Text='<%# Eval("Assess_Vitamins") %>' />
            <br />
            <strong>Life Outlook:</strong>
            <asp:Label ID="Assess_LifeOutlookLabel" runat="server" Text='<%# Eval("Assess_LifeOutlook") %>' />
            <br />
            <br />
            <strong>Results:</strong>
            <br />
            <asp:Label ID="Assess_ResultsLabel" runat="server" Text='<%# Eval("Assess_Results") %>' />
            <br />
            <br />
            <strong>LifeExpectancy:</strong>
            <br />
            <asp:Label ID="Assess_LifeExpectancyLabel" runat="server" Text='<%# Eval("Assess_LifeExpectancy") %>' />
            <br />
            <br />
            <strong>Comments:</strong>
            <br />
            <asp:Label ID="Assess_CommentsLabel" runat="server" Text='<%# Eval("Assess_Comments") %>' />
            <br />
            <br />
           <strong>Date of Assessment:</strong>
            <asp:Label ID="Assess_DateLabel" runat="server" Text='<%# Eval("Assess_Date", "{0:g}") %>' />
            <br />
            &nbsp;<asp:Label ID="Assess_IDLabel" runat="server" Text='<%# Eval("Assess_ID") %>' Visible="False" />
            <br />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');" Text="Delete" />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>

