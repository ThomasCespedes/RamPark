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
            //if (this.IsPostBack)
            //{
            //    passwordTb.Attributes["value"] = passwordTb.Text;
            //    repeatPasswordTb.Attributes["value"] = repeatPasswordTb.Text;
            //}
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
            command.ExecuteNonQuery();

        }
        private void RegisterVehicleInformation()
        {
            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "INSERT INTO VEHICLES VALUES (@VIN, @year, @make, @model, @color, @licensePlate, @RAMID);";
            var command = new SqlCommand(query, myConnection);
            command.Parameters.AddWithValue("@VIN", vinTb.Text);
            command.Parameters.AddWithValue("@year", Convert.ToInt32(dropDownListYear.SelectedItem.Value));
            command.Parameters.AddWithValue("@make", dropDownListMake.SelectedItem.Value);
            command.Parameters.AddWithValue("@model", dropDownListModel.SelectedItem.Value);
            command.Parameters.AddWithValue("@color", dropDownListColor.SelectedItem.Value);
            command.Parameters.AddWithValue("@licensePlate", licensePlateTb.Text);
            command.Parameters.AddWithValue("@RAMID", ramIdTb.Text);
            myConnection.Open();
            command.ExecuteNonQuery();
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

        protected void Make_Selection_Change(object sender, EventArgs e)
        {
            vehicleMakeTb.Text = dropDownListMake.SelectedItem.Value;
        }

        protected void Model_Selection_Change(object sender, EventArgs e)
        {
            vehicleModelTb.Text = dropDownListModel.SelectedItem.Value;
        }

        protected void Year_Selection_Change(object sender, EventArgs e)
        {
            vehicleYearTb.Text = dropDownListYear.SelectedItem.Value;
        }

        protected void Color_Selection_Change(object sender, EventArgs e)
        {
            vehicleColorTb.Text = dropDownListColor.SelectedItem.Value;
        }
    }
}