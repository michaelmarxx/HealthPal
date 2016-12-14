using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DocPortal : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Date and time output for HeathPal masterpage footer
        dateTimeDoc.Text = "Today is " + DateTime.Now.ToShortDateString() + " and the time is " + DateTime.Now.ToShortTimeString();
    }
}
