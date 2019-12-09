using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Priority_Queue;

namespace RamPark
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if user not logged in send to login / register page

            ReloadDataGrid();

        }
        private void ReloadDataGrid()
        {

            int queueCount = GetQueueCount();
            queueCountLbl.Text = queueCount.ToString();
            using (SqlConnection con = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234"))
            {
                SqlDataAdapter sde = new SqlDataAdapter("SELECT u.RAMID, u.RamPoints FROM USERS u RIGHT JOIN RamQueue on u.RAMID = RamQueue.RAMID;", con);
                DataSet ds = new DataSet();
                sde.Fill(ds);
                MyDataGrid.DataSource = ds;
                MyDataGrid.DataBind();
            }

        }
        private int GetQueueCount()
        {
            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "SELECT COUNT(*) FROM RamQueue;";
            var command = new SqlCommand(query, myConnection);
            myConnection.Open();
            Int32 count = (Int32)command.ExecuteScalar();
            return count;
        }

        protected void randomizePointsCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            if (randomizePointsCheckbox.Checked)
            {
                customPointsTextbox.Text = string.Empty;
                customPointsTextbox.Enabled = false;
            }
            else
            {
                customPointsTextbox.Enabled = true;
            }
        }

        protected void enqueueBtn_Click(object sender, EventArgs e)
        {
            //Create dummy user
            User u = new User();;
            if (!randomizePointsCheckbox.Checked)
            {
                u.RAM_Points = Int32.Parse(customPointsTextbox.Text);
            }
            AddUserToDatabase(u);
            //insert dummy user into queue
            AddUserToQueue(u);
            ReloadDataGrid();
            enqueueUpdateLbl.Text = "RAM ID: " + u.RAM_ID + "\tRam Points:" + u.RAM_Points;
        }
        public void AddUserToQueue(User u)
        {
            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "INSERT INTO RamQueue VALUES (@RAMID);";
            var command = new SqlCommand(query, myConnection);
            command.Parameters.AddWithValue("@RAMID", u.RAM_ID);
            myConnection.Open();
            int i = command.ExecuteNonQuery();
        }
        public void AddUserToDatabase(User u)
        {
            string encryptedPass = encryptpass(u.Password);
            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "INSERT INTO USERS VALUES (@RAMID, @F_Name, @L_Name, @Email, @RamPoints, @Employee, @Phone, @Password);";
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
        private string encryptpass(string password)
        {
            string msg = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            msg = Convert.ToBase64String(encode);
            return msg;
        }

        protected void dequeueBtn_Click(object sender, EventArgs e)
        {

            int dequeuedRamID = 0;

            SqlConnection myConnection = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234");
            string query = "Select TOP 1 u.RAMID, " +
                "u.RamPoints FROM Users u " +
                "Right join ramqueue r on u.RAMID = r.RamID " +
                "where u.RamPoints = (SELECT MIN(u.RamPoints) " +
                "FROM USERS u RIGHT JOIN RamQueue on u.RAMID = RamQueue.RAMID);";
            var command = new SqlCommand(query, myConnection);
            myConnection.Open();
            var reader = command.ExecuteReader();
            if (reader.Read())
            {
                dequeuedRamID = (Int32) reader["RAMID"];
                dequeueUpdateLbl.Text = "RAM ID:" + reader["RAMID"] + "\tRAM Points: " + reader["RamPoints"];
            }
            else
            {
                dequeueUpdateLbl.Text = "No more users in queue.";
            }

            DequeueUser(dequeuedRamID);
            ReloadDataGrid();
        }

        private void DequeueUser(int RAMID)
        {
            try
            {
                using (var sc = new SqlConnection("Data Source=ram-park-sql-server.database.windows.net;Initial Catalog=RamParkDatabase;Persist Security Info=True;User ID=Garavuso;Password=Vinny1234"))
                using (var cmd = sc.CreateCommand())
                {
                    sc.Open();
                    cmd.CommandText = "DELETE FROM RamQueue WHERE RAMID = @RAMID";
                    cmd.Parameters.AddWithValue("@RAMID", RAMID);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception e)
            {
                dequeueUpdateLbl.Text = "SERVER ERROR";
            }
        }

        protected void reportViolation_Click(object sender, EventArgs e)
        {

        }

        protected void sendViolation_Click(object sender, EventArgs e)
        {
            //SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 465);

            //smtpClient.Credentials = new System.Net.NetworkCredential("RAMPARKSERVICES@GMAIL.COM", "RAMpark123!");
            //smtpClient.UseDefaultCredentials = true;
            //smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            //smtpClient.EnableSsl = true;
            //MailMessage mail = new MailMessage();

            ////Setting From , To and CC
            //mail.From = new MailAddress("RAMPARKSERVICES@GMAIL.COM", "RAM Park");
            //mail.To.Add(new MailAddress("RAMPARKSERVICES@GMAIL.COM"));
            //mail.Subject = "VIOLATION REPORTED";
            //mail.Body = "VIOLATION: ";

            //smtpClient.Send(mail);
        }
    }
}