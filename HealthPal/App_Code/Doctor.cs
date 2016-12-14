using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Doctor
/// </summary>
public class Doctor
{
	public Doctor()
	{

	}

    public int ID { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Type { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
}