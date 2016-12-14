using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Assessment_Results : System.Web.UI.Page
{
    Assessment assessmentResults;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Assessment"] != null)
        {
            assessmentResults = (Assessment)Session["Assessment"];

            lblName.Text = assessmentResults.Patient.FirstName + " " + assessmentResults.Patient.LastName;
            lblAge.Text = assessmentResults.Patient.Age.ToString();
            lblGender.Text = assessmentResults.Patient.Gender;
            lblDoctor.Text = assessmentResults.DoctorName;

            lblResults.Text = GetSmokeResults(assessmentResults.SmokingHabitsValue) + GetExercisResults(assessmentResults.ExerciseValue) + GetDietResults(assessmentResults.DietValue) + GetSexResults(assessmentResults.SexValue) + GetMultiVitaminResults(assessmentResults.MultiVitaminsValue) + GetLifeOutLookResults(assessmentResults.LifeOutlookValue);
            lblLifeExpectancy.Text = GetLifeExpectancyResults(assessmentResults);
        }

    }

    public string GetSmokeResults(int SmokeValue)
    {
        string msg = "";
        switch (SmokeValue)
        {
            case -11: msg = "Your smoking habits will lead to an early death. You should definitely consider quitting your smoking habit. ";
                break;

            case -5: msg = "Ease up on the smoking, it is not good for you or the people around you. If you have kids it will also have a negative impact on their health. ";
                break;

            case 0: msg = "It is a good thing you are not smoker, stay that way. ";
                break;
        }

        return msg;
    }

    public string GetExercisResults(int ExerciseValue)
    {
        string msg = "";
        switch (ExerciseValue)
        {
            case 9: msg = "You are doing a great job exercising. I am sure you are in really good shape. ";
                break;
            case 6: msg = "Exercising 3 times a week will have a great impact on your health. ";
                break;
            case 2: msg = "If you exercise more often you will increase your chances of living a longer life. ";
                break;
            case -3: msg = "If you do not start exercising now your health will continue to decline. ";
                break;
        }
        return msg;
    }

    public string GetDietResults(int DietValue)
    {
        string msg = "";
        switch (DietValue)
        {
            case 15: msg = "Your dieting habits will keep your body in an akaline state allowing you to stay healthy longer, but do not forget your proteins. ";
                break;
            case 10: msg = "You are eating a balanced diet. Be sure to keep meat and dairy to a minimum. ";
                break;
            case -5: msg = "You  have unhealthy dieting habits, which puts you at risk for developing an acidic body state. An acidic body cannot fight off disease and infection effectively. ";
                break;
        }
        return msg;
    }

    public string GetSexResults(int SexValue)
    {
        string msg = "";
        switch (SexValue)
        {
            case 7: msg = "Your healthy sex drive will contribute to the reduction of stress. Easing stress by having sex will prevent many diseases both mental and physical, but it has to be safe sex. ";
                break;
            case 1: msg = "If possible you should aim to have sex more often to help reduce stress levels in the body. ";
                break;
            case 0: msg = "Your lack of sex may cause a build up of stress in your body leading to both mental and physical diseases. Although sex is the most natural way to relieve stress, please look to find other ways to relieve your stress. ";
                break;
        }
        return msg;
    }

    public string GetMultiVitaminResults(int MultiVitaminValue)
    {
        string msg = "";
        switch (MultiVitaminValue)
        {
            case 4: msg = "Taking your vitamins daily will help your body get all the nutrients that it cannot get from your diet. ";
                break;
            case 1: msg = "If you take your vitamins everyday you could potentially have more energy and look more radiant. ";
                break;
            case 0: msg = "Since you are not taking your vitamins at all you are not giving your cells the necessary building blocks to create energy. Without energy your body cannot function properly, leading to a decline in health. ";
                break;
        }
        return msg;
    }

    public string GetLifeOutLookResults(int LifeOutLookValue)
    {
        string msg = "";
        switch (LifeOutLookValue)
        {
            case 6: msg = "Your optimistic outlook on life will lead to more confidence, esteem, and an improvement in mood and physical health.";
                break;
            case -3: msg = "Your pessemistic outlook on life will drain you mentally and could potentially lead to depression and poor health.";
                break;
        }
        return msg;
    }

    public string GetLifeExpectancyResults(Assessment assessment)
    {
        int age = 60;
        string msg;
        int lifeStyleImpact = assessmentResults.SmokingHabitsValue + assessmentResults.ExerciseValue + assessmentResults.SexValue + assessmentResults.DietValue + assessmentResults.MultiVitaminsValue + assessmentResults.LifeOutlookValue;

        age += lifeStyleImpact;

        msg = String.Format("Based on the selections that you made during your Health Assessment your calculated life expectancy is: {0} years. Your lifestyle choices affect your life by this many years: {1} years.", age, lifeStyleImpact);

        return msg;
    }

    public void SubmitAssessment(Assessment a)
    {
        string commandString = "INSERT INTO ASSESSMENT (Doc_ID, Pat_ID, Assess_Smoker, Assess_Exercise, Assess_Diet, Assess_Sex, Assess_Vitamins, Assess_LifeOutlook, Assess_Results, Assess_LifeExpectancy, Assess_Comments, Assess_Date) VALUES('" + a.Doc_ID + "', '" + a.Pat_ID + "', '" + a.SmokingHabits + "', '" + a.Exercise + "', '" + a.Diet + "', '" + a.Sex + "', '" + a.MultiVitamins + "', '" + a.LifeOutlook + "', '" + a.Results + "','" + a.LifeExpectancy + "' ,'" + a.Comments + "', '" + a.AssessDate + "')";

        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand(commandString);

        connect.Open();

        command.Connection = connect;

        command.ExecuteNonQuery();

        connect.Close();
    }

    public void UpdatePatientDoctor(Assessment e)
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\HealthPal.mdf;Integrated Security=True");
        SqlCommand command = new SqlCommand("UPDATE PATIENT SET Pat_Doc = '"+e.Doc_ID+"' WHERE Pat_ID = '"+e.Pat_ID+"'");

        connect.Open();

        command.Connection = connect;

        command.ExecuteNonQuery();

        connect.Close();
    }


    protected void btnDone_Click(object sender, EventArgs e)
    {
        if (assessmentResults != null)
        {
            
            assessmentResults.Comments = txtComments.Text;
            assessmentResults.AssessDate = DateTime.Now;
            assessmentResults.Results = GetSmokeResults(assessmentResults.SmokingHabitsValue) + GetExercisResults(assessmentResults.ExerciseValue) + GetDietResults(assessmentResults.DietValue) + GetSexResults(assessmentResults.SexValue) + GetMultiVitaminResults(assessmentResults.MultiVitaminsValue) + GetLifeOutLookResults(assessmentResults.LifeOutlookValue);
            assessmentResults.LifeExpectancy = GetLifeExpectancyResults(assessmentResults);

            try
            {
                UpdatePatientDoctor(assessmentResults);
                SubmitAssessment(assessmentResults);
                Session.RemoveAll();
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "An exception occurred. " + ex.Message;
                
            }
            
        }
        
    }
}