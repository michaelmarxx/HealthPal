using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DocPortal_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public bool ValidateAccessCode()
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("SELECT Doc_ID FROM Doctor WHERE Doc_ID ='"+Convert.ToInt16(txtAccessCode.Text)+"'");

        connect.Open();

        command.Connection = connect;

        SqlDataReader reader = command.ExecuteReader();

        bool codeValidation = reader.Read();

        connect.Close();

        return codeValidation;
    }

    public bool CheckExistence()
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("SELECT Doc_Username FROM Doctor WHERE Doc_Username ='" + txtDocRegUserName.Text + "'");

        connect.Open();

        command.Connection = connect;

        SqlDataReader reader = command.ExecuteReader();

        bool existence = reader.Read();

        connect.Close();

        return existence;
    }

    protected void btnDocRegister_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            if (ValidateAccessCode())
            {
                if (!CheckExistence())
                {
                    SqlDoctorRegister.InsertParameters["Doc_FName"].DefaultValue = txtDocRegFName.Text;

                    SqlDoctorRegister.InsertParameters["Doc_LName"].DefaultValue = txtDocRegLName.Text;

                    SqlDoctorRegister.InsertParameters["Doc_Type"].DefaultValue = ddlDocType.SelectedValue;

                    SqlDoctorRegister.InsertParameters["Doc_Username"].DefaultValue = txtDocRegUserName.Text;

                    SqlDoctorRegister.InsertParameters["Doc_Password"].DefaultValue = txtDocRegPassword.Text;

                    try
                    {

                        SqlDoctorRegister.Insert();
                        txtAccessCode.Text = "";
                        txtDocRegFName.Text = "";
                        txtDocRegLName.Text = "";
                        ddlDocType.SelectedIndex = 0;
                        txtDocRegUserName.Text = "";
                        txtDocRegPassword.Text = "";
                        txtConfirmPass.Text = "";

                        lblErrorMessage.Text = "";

                        lblMessage.Text = "You are registered! Please return to the Doc Portal and use your Username and Password to login.";

                    }

                    catch (Exception ex)
                    {

                        lblErrorMessage.Text = "An exception occurred. " + ex.Message;

                    }
                }
                else
                {
                    lblErrorMessage.Text = "This user exists. Please log in or choose a different user name.";
                }

            }
            else 
            { 
                lblErrorMessage.Text = "Your access code is invalid."; 
            }
            
        }
    }

  


}