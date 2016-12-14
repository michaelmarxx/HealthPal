<%@ Page Title="" Language="C#" MasterPageFile="~/DocPortal.master" AutoEventWireup="true" CodeFile="ManagePatients.aspx.cs" Inherits="DocPortal_ManagePatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headDocPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="webFormDocPlaceHolder" Runat="Server">
    <h4>Below is a list of all of your registered patients. Make changes as needed.
        <asp:SqlDataSource ID="SqlPatients" runat="server" ConnectionString="<%$ ConnectionStrings:HealthPal %>" DeleteCommand="DELETE FROM [Patient] WHERE [Pat_ID] = @Pat_ID" InsertCommand="INSERT INTO [Patient] ([Pat_FName], [Pat_LName], [Pat_Address], [Pat_City], [Pat_State], [Pat_Zip], [Pat_Age], [Pat_Gender], [Pat_Phone]) VALUES (@Pat_FName, @Pat_LName, @Pat_Address, @Pat_City, @Pat_State, @Pat_Zip, @Pat_Age, @Pat_Gender, @Pat_Phone)" SelectCommand="SELECT [Pat_FName], [Pat_LName], [Pat_Address], [Pat_City], [Pat_State], [Pat_Zip], [Pat_Age], [Pat_Gender], [Pat_Phone], [Pat_ID] FROM [Patient] WHERE ([Pat_Doc] = @Pat_Doc)" UpdateCommand="UPDATE [Patient] SET [Pat_FName] = @Pat_FName, [Pat_LName] = @Pat_LName, [Pat_Address] = @Pat_Address, [Pat_City] = @Pat_City, [Pat_State] = @Pat_State, [Pat_Zip] = @Pat_Zip, [Pat_Age] = @Pat_Age, [Pat_Gender] = @Pat_Gender, [Pat_Phone] = @Pat_Phone WHERE [Pat_ID] = @Pat_ID">
        <DeleteParameters>
            <asp:Parameter Name="Pat_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pat_FName" Type="String" />
            <asp:Parameter Name="Pat_LName" Type="String" />
            <asp:Parameter Name="Pat_Address" Type="String" />
            <asp:Parameter Name="Pat_City" Type="String" />
            <asp:Parameter Name="Pat_State" Type="String" />
            <asp:Parameter Name="Pat_Zip" Type="String" />
            <asp:Parameter Name="Pat_Age" Type="Int32" />
            <asp:Parameter Name="Pat_Gender" Type="String" />
            <asp:Parameter Name="Pat_Phone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="hiddenDocID" Name="Pat_Doc" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pat_FName" Type="String" />
            <asp:Parameter Name="Pat_LName" Type="String" />
            <asp:Parameter Name="Pat_Address" Type="String" />
            <asp:Parameter Name="Pat_City" Type="String" />
            <asp:Parameter Name="Pat_State" Type="String" />
            <asp:Parameter Name="Pat_Zip" Type="String" />
            <asp:Parameter Name="Pat_Age" Type="Int32" />
            <asp:Parameter Name="Pat_Gender" Type="String" />
            <asp:Parameter Name="Pat_Phone" Type="String" />
            <asp:Parameter Name="Pat_ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="hiddenDocID" runat="server" Visible="False"></asp:Label>
    </h4>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please correct the following items:" ValidationGroup="patient" />
    <asp:Label ID="lblErrorMessage" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
    <h4>
        <asp:GridView ID="gridPatients" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Pat_ID" DataSourceID="SqlPatients" ForeColor="Black" GridLines="Horizontal" OnRowDeleted="gridPatients_RowDeleted" OnRowUpdated="gridPatients_RowUpdated">
            <Columns>
                <asp:TemplateField HeaderText="Patient ID" InsertVisible="False" SortExpression="Pat_ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pat_ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Pat_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name" SortExpression="Pat_FName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFName" runat="server" Text='<%# Bind("Pat_FName") %>' Width="104px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="First name required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Pat_FName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="Pat_LName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtLName" runat="server" Text='<%# Bind("Pat_LName") %>' Width="107px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="Last name required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Pat_LName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" SortExpression="Pat_Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Pat_Address") %>' Width="181px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Pat_Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="Pat_City">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("Pat_City") %>' Width="111px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Pat_City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State" SortExpression="Pat_State">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtState" runat="server" Text='<%# Bind("Pat_State") %>' Width="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtState" Display="Dynamic" ErrorMessage="State required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Pat_State") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Zip" SortExpression="Pat_Zip">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtZip" runat="server" Text='<%# Bind("Pat_Zip") %>' Width="51px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="Zip required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Pat_Zip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age" SortExpression="Pat_Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAge" runat="server" Text='<%# Bind("Pat_Age") %>' Width="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Pat_Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="Pat_Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGender" runat="server" Text='<%# Bind("Pat_Gender") %>' Width="49px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtGender" Display="Dynamic" ErrorMessage="Gender required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Pat_Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone" SortExpression="Pat_Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Pat_Phone") %>' Width="77px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone number required" ForeColor="Red" ValidationGroup="patient">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("Pat_Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="patient" />
                        &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this patient?');" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </h4>
</asp:Content>

