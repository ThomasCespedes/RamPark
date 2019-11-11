using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamPark
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
                    string query = "INSERT INTO USERS VALUES (@RAMID, @F_Name, @L_Name, @Email, @RamPoints, @Employee, @Password, @Phone);";
                    User u = new User(Int32.Parse(ramIdTb.Text), fNameTb.Text, lNameTb.Text, emailTb.Text, passwordTb.Text, phoneTb.Text);
                    var command = new SqlCommand(query, myConnection);
                    command.Parameters.AddWithValue("@RAMID", u.RAM_ID);
                    command.Parameters.AddWithValue("@F_Name", u.FirstName);
                    command.Parameters.AddWithValue("@L_Name", u.LastName);
                    command.Parameters.AddWithValue("@Email", u.Email);
                    command.Parameters.AddWithValue("@RamPoints", u.RAM_Points);
                    command.Parameters.AddWithValue("@Employee", 'N');
                    command.Parameters.AddWithValue("@Password", u.Password);
                    command.Parameters.AddWithValue("@Phone", u.Phone);
                    myConnection.Open();
                    command.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
                catch
                {
                    //error inserting
                }
            }
            else
            {
                ErrorLabel.Visible = true;
            }
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx");
        }
    }
}