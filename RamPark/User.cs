using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace RamPark
{
    public class User
    {
        public int RAM_ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }

        private int m_ramPoints;
        public int RAM_Points
        {
            get
            {
                return m_ramPoints;
            }
            //Only allow 0-10 RAM Points scale
            set
            {
                if(m_ramPoints <= 10 && m_ramPoints >= 0)
                {
                    m_ramPoints = value;
                }
            }
        }
        //Password must be hashed in future. This is very insecure
        public string Password { get; set; }
        public string Phone { get; set; }

        public User(int ramId, string fName, string lName, string email, string password, string phone)
        {
            RAM_ID = ramId;
            FirstName = fName;
            LastName = lName;
            Email = email;
            //Points Closer to 0 = higher priority in queue
            RAM_Points =  10;
            Password = password;
            Phone = phone;
        }
        public User()
        {
            Random rnd1 = new Random();
            RAM_ID = rnd1.Next(1000000, 9999999);
            FirstName = "Dummy";
            LastName = "Data";
            Email = "DummyData@data.com";
            //Create random RamPoints
            Random rnd2 = new Random();
            RAM_Points = rnd2.Next(1,10);
            Password = "DummyPassword";
            Phone = "1111111111";
        }
        public User(DataRow row)
        {
            
            RAM_ID = row.Field<int>("RAMID");
            FirstName = row.Field<string>("FirstName");
            LastName = row.Field<string>("LastName");
            Email = row.Field<string>("Email");
            RAM_Points = row.Field<int>("RamPoints");
            Phone = row.Field<string>("Phone");
            Password = row.Field<string>("Password");
        }
    }
}