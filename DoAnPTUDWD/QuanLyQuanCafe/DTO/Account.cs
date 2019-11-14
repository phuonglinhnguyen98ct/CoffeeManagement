using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Account
    {
        private string username;
        private string password;
        private Staff staff;

        public Account() { }
        
        public Account(string username, string password, Staff staff)
        {
            this.username = username;
            this.password = password;
            this.staff = new Staff(staff);
        }

        public Account(Account user)
        {
            this.username = user.username;
            this.password = user.password;
            this.staff = new Staff(user.Staff);
        }

        public string toString()
        {
            return username;
        }

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public Staff Staff
        {
            get
            {
                return staff;
            }

            set
            {
                staff = value;
            }
        }
    }
}
