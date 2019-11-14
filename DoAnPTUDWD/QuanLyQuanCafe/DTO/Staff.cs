using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Staff
    {
        private int id;
        private string name;
        private string sex;
        private string birthday;
        private string address;
        private string phone;
        private Role role;

        public Staff() { }

        public Staff(int id, string name, string sex, string birthday, string address, string phone, Role role)
        {
            this.id = id;
            this.name = name;
            this.sex = sex;
            this.birthday = birthday;
            this.address = address;
            this.phone = phone;
            this.role = new Role(role);
        }

        public Staff(Staff staff)
        {
            this.id = staff.Id;
            this.name = staff.Name;
            this.sex = staff.Sex;
            this.birthday = staff.Birthday;
            this.address = staff.Address;
            this.phone = staff.Phone;
            this.role = new Role(staff.Role);
        }

        public Staff(string name)
        {
            this.name = name;
        }

        public string toString()
        {
            return name;
        }

        //private string standardlizedname(string name)
        //{
        //    string finalname = "";
        //    name = name.tolowercase().trim().replaceall("( )+", " ");
        //    string[] splitname = name.split(" ");
        //    for (int i = 0; i < splitname.length; i++)
        //    {
        //        finalname += splitname[i].substring(0, 1).touppercase() + splitname[i].substring(1);
        //        if (i < splitname.length - 1)
        //        {
        //            finalname += " ";
        //        }
        //    }
        //    return finalname;
        //}

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Sex
        {
            get
            {
                return sex;
            }

            set
            {
                sex = value;
            }
        }

        public string Birthday
        {
            get
            {
                return birthday;
            }

            set
            {
                birthday = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public string Phone
        {
            get
            {
                return phone;
            }

            set
            {
                phone = value;
            }
        }

        public Role Role
        {
            get
            {
                return role;
            }

            set
            {
                role = value;
            }
        }
    }
}
