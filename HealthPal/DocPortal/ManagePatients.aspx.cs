using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DocPortal_ManagePatients : System.Web.UI.Page
{
    Doctor doc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Doctor"] != null)
        {
            doc = (Doctor)Session["Doctor"];
            hiddenDocID.Text = doc.ID.ToString();
        }
    }

    protected void gridPatients_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

        if (e.Exception != null)
        {

            lblErrorMessage.Text = "An error occurred. " + e.Exception.Message;

            e.ExceptionHandled = true;

            e.KeepInEditMode = true;

        }

        else if (e.AffectedRows == 0)
        {

            lblErrorMessage.Text = "No rows were updated. Please try again or contact your Database Administrator. ";

        }

    }


    // RowDeleted Event

    protected void gridPatients_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string text = "The DELETE statement conflicted with the REFERENCE constraint \"FK_Assessment_Patient\". The conflict occurred in database \"C:\\USERS\\MICHAEL\\DOCUMENTS\\VISUAL STUDIO 2012\\HEALTHPAL\\APP_DATA\\HEALTHPAL.MDF\", table \"dbo.Assessment\", column 'Pat_ID'.\r\nThe statement has been terminated.";
      
        if (e.Exception != null)
        {
            if (e.Exception.Message == text)
            {
                lblErrorMessage.Text = "This patient has an active assessment. You have to delete their assessment before you can delete their record.";
                e.ExceptionHandled = true;
            }
            else
            {
                lblErrorMessage.Text = "An exception occurred. "

                + e.Exception.Message;

                e.ExceptionHandled = true;
            }

        }

        else if (e.AffectedRows == 0)
        {

            lblErrorMessage.Text = "No rows were deleted. Please try again or contact your Database Administrator. ";

        }

    }
}