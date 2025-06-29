# HealthPal
Experimental application that aims to help doctors track patient health without physically meeting with them. The application also makes health suggestions and predicts life expectancy. Please read the user guide for more information.

## Running Locally

### Prerequisites
- Visual Studio 2012 or newer with .NET Framework 4.5
- SQL Server Express LocalDB (v11.0 or later)

### Steps
1. Clone this repository:
   ```
   git clone <repository-url>
   ```
2. Open Visual Studio and choose **File > Open > Web Site...**. Select the `HealthPal` folder in this repo.
3. Press **F5** to run with IIS Express. Visual Studio will attach the `App_Data/HealthPal.mdf` database automatically.
4. Browse to the shown `http://localhost:` URL to use the site.

### Tips
- Data lives in `App_Data/HealthPal.mdf`. Deleting the `.mdf` and `.ldf` files resets the database.
- Update the connection string in `Web.config` if you move the database or use another SQL Server instance.
- Leave Visual Studio running while editing pages so changes compile automatically.

## Updating the Code
1. Edit the `.aspx` or `.cs` files as needed.
2. Commit your changes with Git:
   ```
   git add <files>
   git commit -m "Describe your change"
   ```
3. If you modify the schema, include the updated `HealthPal.mdf` in your commits.
