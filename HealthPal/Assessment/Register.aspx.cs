using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Assessment_Register : System.Web.UI.Page
{
    Patient patient;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Patient"] != null)
        {
            patient = (Patient)Session["Patient"];

            txtFirstNameHP.Text = patient.FirstName;
            txtLastNameHP.Text = patient.LastName;
            txtAddressHP.Text = patient.Address;
            txtCityHP.Text = patient.City;
            txtStateHP.Text = patient.State;
            txtZipHP.Text = patient.Zip;
            txtPhoneHP.Text = patient.Phone;
            txtAgeHP.Text = patient.Age.ToString();
            ddlGenderHP.SelectedValue = patient.Gender;

            Session.RemoveAll();

            patient.FirstName = "";
            patient.LastName = "";
            patient.Address = "";
            patient.City = "";
            patient.State = "";
            patient.Zip = "";
            patient.Phone = "";
            patient.Age = 0;
            patient.Gender = "";
        }
    }

    public bool CheckExistence()
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("SELECT Pat_ID FROM Patient WHERE Pat_Phone ='" + txtPhoneHP.Text + "' AND Pat_FName = '"+txtFirstNameHP.Text+"'");

        connect.Open();

        command.Connection = connect;

        SqlDataReader reader = command.ExecuteReader();

        bool existence = reader.Read();

        connect.Close();

        return existence;
    }

    protected void btnRegisterHP_Click(object sender, EventArgs e)
    {

        if (IsValid)
        {
            if(!CheckExistence())
            {
                if(patient == null)
                    patient = new Patient();

                patient.FirstName = txtFirstNameHP.Text;
                patient.LastName = txtLastNameHP.Text;
                patient.Address = txtAddressHP.Text;
                patient.City = txtCityHP.Text;
                patient.State = txtStateHP.Text;
                patient.Zip = txtZipHP.Text;
                patient.Phone = txtPhoneHP.Text;
                patient.Age = Convert.ToInt16(txtAgeHP.Text);
                patient.Gender = ddlGenderHP.SelectedValue;

                Session["Patient"] = patient;

                Response.Redirect("~/Assessment/Confirmation.aspx");

            }
            else
            {
                lblError.Text = "You are already registered and your assessment is on file. Please contact your doctor if you feel this is an error.";
            }
        }
    }
}