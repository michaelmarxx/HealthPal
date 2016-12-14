using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Assessment_Confirmation : System.Web.UI.Page
{
    Patient registeredPatient;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Patient"] != null)
        {
            registeredPatient = (Patient)Session["Patient"];

            lblName.Text = registeredPatient.FirstName + " " + registeredPatient.LastName;
            lblAddress.Text = registeredPatient.Address;
            lblCityStateZip.Text = registeredPatient.City + ", " + registeredPatient.State + " " + registeredPatient.Zip;
            lblPhone.Text = registeredPatient.Phone;
            lblAge.Text = registeredPatient.Age.ToString();
            lblGender.Text = registeredPatient.Gender;
        }
    }


    public void RegisterNewPatient(Patient patient)
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("INSERT INTO PATIENT (Pat_FName, Pat_LName, Pat_Address, Pat_City, Pat_State, Pat_Zip, Pat_Age, Pat_Gender, Pat_Phone) VALUES('" + patient.FirstName + "', '" + patient.LastName + "', '" + patient.Address + "', '" + patient.City + "', '" + patient.State + "', '" + patient.Zip + "', '" + patient.Age + "', '" + patient.Gender + "', '" + patient.Phone + "' )");

        connect.Open();

        command.Connection = connect;

        command.ExecuteNonQuery();

        connect.Close();

    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        if (Session["Patient"] != null)
        {
            registeredPatient = (Patient)Session["Patient"];

            try
            {

                RegisterNewPatient(registeredPatient);

                lblErrorMessage.Text = "";

                Response.Redirect("~/Assessment/Assessment.aspx");

            }

            catch (Exception ex)
            {

                lblErrorMessage.Text = "An exception occurred. " + ex.Message;

            }
        }
    }
}