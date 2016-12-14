using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DocPortal_Dock : System.Web.UI.Page
{
    Doctor loggedInDoctor;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (loggedInDoctor == null)
        {
            if(Session["Doctor"] != null)
            loggedInDoctor = (Doctor)Session["Doctor"];

            lblDocName.Text = "Dr. "+loggedInDoctor.FirstName + " " + loggedInDoctor.LastName;
        }
    }
}