using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// All required fields for an assessment for HealthPal
/// </summary>
public class Assessment
{
	public Assessment()
	{
	}

    public int Assess_ID { get; set; }
    public int Doc_ID { get; set; }
    public string DoctorName { get; set; }
    public int Pat_ID { get; set; }
    public string SmokingHabits { get; set; }
    public int SmokingHabitsValue { get; set; }
    public string Exercise { get; set; }
    public int ExerciseValue { get; set; }
    public string Diet { get; set; }
    public int DietValue { get; set; }
    public string Sex { get; set; }
    public int SexValue { get; set; }
    public string MultiVitamins { get; set; }
    public int MultiVitaminsValue { get; set; }
    public string LifeOutlook { get; set; }
    public int LifeOutlookValue { get; set; }
    public string Comments { get; set; }
    public string Results { get; set; }
    public string LifeExpectancy { get; set; }
    public DateTime AssessDate { get; set; }
    public Patient Patient { get; set; }

    


}