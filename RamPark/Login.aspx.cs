using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace RamPark
{
    public partial class Login : System.Web.UI.Page
    {
        /*
         
  <connectionStrings>
    <add name="SQLConnection" providerName="System.Data.SqlClient"
      connectionString="Data Source=ram-park-sql-server-database.windows.net;Integrated Security=False;User ID=Garavuso;Password=Vinny123" />
  </connectionStrings>
             
             */



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            /*<add name="SQLConnection" providerName="System.Data.SqlClient"
      connectionString="Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234"/>
  </connectionStrings>*/
            string encryptedPass = encryptpass(passwordTb.Text);
            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "SELECT Email, Password FROM USERS where UPPER(email) = @uEmail AND password=@uPassword";
            var command = new SqlCommand(query, myConnection);
            command.Parameters.AddWithValue("@uEmail", emailTb.Text.ToUpper());
            command.Parameters.AddWithValue("@uPassword", encryptedPass);
            myConnection.Open();
            var reader = command.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("Home.aspx");
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
        protected void registerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}