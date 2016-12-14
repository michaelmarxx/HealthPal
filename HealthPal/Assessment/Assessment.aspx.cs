using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Assessment_Assessment : System.Web.UI.Page
{
    Patient currentPatient;
    Assessment assessment;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    public int GetPatientID(Patient patient)
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("SELECT Pat_ID FROM PATIENT WHERE Pat_LName ='"+patient.LastName+"' AND Pat_Phone ='"+patient.Phone+"'");

        command.Connection = connect;
        connect.Open();

        SqlDataReader reader = command.ExecuteReader();

        reader.Read();

        int patientID = Convert.ToInt32(reader["Pat_ID"]);

        connect.Close();
        
        return patientID;
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        if (Session["Patient"] != null)
        {
            currentPatient = (Patient)Session["Patient"];
           
            if (IsValid)
            {
                if (assessment == null)
                {
                    assessment = new Assessment();

                    assessment.Doc_ID = Convert.ToInt32(ddlDocs.SelectedValue);
                    assessment.DoctorName = ddlDocs.SelectedItem.Text;
                    assessment.Pat_ID = GetPatientID(currentPatient);
                    assessment.SmokingHabits = rdlSmoke.SelectedItem.Text;
                    assessment.SmokingHabitsValue = Convert.ToInt32(rdlSmoke.SelectedValue);
                    assessment.Exercise = rdlExercise.SelectedItem.Text;
                    assessment.ExerciseValue = Convert.ToInt32(rdlExercise.SelectedValue);
                    assessment.Diet = rdlDiet.SelectedItem.Text;
                    assessment.DietValue = Convert.ToInt32(rdlDiet.SelectedValue);
                    assessment.Sex = rdlSex.SelectedItem.Text;
                    assessment.SexValue = Convert.ToInt32(rdlSex.SelectedValue);
                    assessment.MultiVitamins = rdlVitamins.SelectedItem.Text;
                    assessment.MultiVitaminsValue = Convert.ToInt32(rdlVitamins.SelectedValue);
                    assessment.LifeOutlook = rdlOutlook.SelectedItem.Text;
                    assessment.LifeOutlookValue = Convert.ToInt32(rdlOutlook.SelectedValue);
                    assessment.Patient = currentPatient;

                    Session["Assessment"] = assessment;

                    Response.Redirect("~/Assessment/Results.aspx");
                }              
            }
        }
    }
}