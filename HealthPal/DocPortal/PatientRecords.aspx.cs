using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DocPortal_PatientRecords : System.Web.UI.Page
{
    Doctor doctor;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Doctor"] != null)
        {
            doctor = (Doctor)Session["Doctor"];

            hiddenDocID.Text = doctor.ID.ToString();
        }
    }
}