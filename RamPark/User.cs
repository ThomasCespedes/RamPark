using System;
using System.Collections.Generic;
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
        public int RAM_Points { get; set; }
        //Password must be hashed in future. This is very insecure
        public string Password { get; set; }
        public string Phone { get; set; }

        public User(int ramId, string fName, string lName, string email, string password, string phone)
        {
            RAM_ID = ramId;
            FirstName = fName;
            LastName = lName;
            Email = email;
            RAM_Points =  0;
            Password = password;
            Phone = phone;
        }
    }
}