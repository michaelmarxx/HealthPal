using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DocPortal_DocPortal : System.Web.UI.Page
{
    Doctor doctor;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public bool ValidateLogin()
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("SELECT Doc_Username, Doc_Password, Doc_ID, Doc_FName, Doc_LName, Doc_Type FROM Doctor WHERE Doc_Username ='" + txtLoginUsername.Text + "' AND Doc_Password ='"+txtLoginPassword.Text+"'");

        connect.Open();

        command.Connection = connect;

        SqlDataReader reader = command.ExecuteReader();

        bool loginValidation = reader.Read();

        if (doctor == null)
            doctor = new Doctor();

        if (loginValidation)
        {
            doctor.ID = Convert.ToInt16(reader["Doc_ID"]);
            doctor.FirstName = reader["Doc_FName"].ToString();
            doctor.LastName = reader["Doc_LName"].ToString();
            doctor.Type = reader["Doc_Type"].ToString();

            Session["Doctor"] = doctor;
        }

        
        connect.Close();

        return loginValidation;
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {

            if (ValidateLogin())
            {
                
                Response.Redirect("~/DocPortal/Dock.aspx");
            }
            else 
            {
                lblMessage.Text = "Either your username or your password is invalid. Please try again.";
            }

        }
    }
    
}