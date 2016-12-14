using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DocPortal_Profile : System.Web.UI.Page
{
    Doctor doc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Doctor"] != null)
        {
            doc = (Doctor)Session["Doctor"];

            hiddenDocID.Text = doc.ID.ToString();
            lblAccessCode.Text = doc.ID.ToString();
            lblFirstname.Text = doc.FirstName;
            lblLastname.Text = doc.LastName;
            lblType.Text = doc.Type;
        }
    }
}