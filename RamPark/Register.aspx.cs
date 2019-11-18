using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamPark
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void RegisterUserInformation()
        {
            string encryptedPass = encryptpass(passwordTb.Text);
            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "INSERT INTO USERS VALUES (@RAMID, @F_Name, @L_Name, @Email, @RamPoints, @Employee, @Phone, @Password);";
            User u = new User(Int32.Parse(ramIdTb.Text), fNameTb.Text, lNameTb.Text, emailTb.Text, encryptedPass, phoneTb.Text);
            var command = new SqlCommand(query, myConnection);
            command.Parameters.AddWithValue("@RAMID", u.RAM_ID);
            command.Parameters.AddWithValue("@F_Name", u.FirstName);
            command.Parameters.AddWithValue("@L_Name", u.LastName);
            command.Parameters.AddWithValue("@Email", u.Email);
            command.Parameters.AddWithValue("@RamPoints", u.RAM_Points);
            command.Parameters.AddWithValue("@Employee", 'N');
            command.Parameters.AddWithValue("@Password", encryptedPass);
            command.Parameters.AddWithValue("@Phone", u.Phone);
            myConnection.Open();
            int i = command.ExecuteNonQuery();

        }
        private void RegisterVehicleInformation()
        {
            //SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            //string query = "INSERT INTO VEHICLES VALUES (@VIN, @year, @make, @model, @color, @licensePlate, @RAMID);";
            //var command = new SqlCommand(query, myConnection);
            //command.Parameters.AddWithValue("@VIN", vinTb.Text);
            //command.Parameters.AddWithValue("@year", vehicleYearTb.Text);
            //command.Parameters.AddWithValue("@make", vehicleMakeTb.Text);
            //command.Parameters.AddWithValue("@model", vehicleModelTb.Text);
            //command.Parameters.AddWithValue("@color", vehicleColorTb.Text);
            //command.Parameters.AddWithValue("@licensePlate", licensePlateTb.Text);
            //command.Parameters.AddWithValue("@RAMID", ramIdTb.Text);
            //myConnection.Open();
            //int i = command.ExecuteNonQuery();
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    RegisterUserInformation();
                    RegisterVehicleInformation();
                    Response.Redirect("Login.aspx");
                }
                catch
                {
                    DatabaseErrorLabel.Visible = true;
                }
            }
            else
            {
                ErrorLabel.Visible = true;
            }
        }
        private string encryptpass(string password)
        {
            string msg = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            msg = Convert.ToBase64String(encode);
            return msg;
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx");
        }
    }
}