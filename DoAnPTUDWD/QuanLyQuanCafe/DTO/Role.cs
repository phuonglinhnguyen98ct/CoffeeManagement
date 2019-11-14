using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Role
    {
        private int id;
        private string name;

        public Role() { }

        public Role(int id, string name)
        {
            this.id = id;
            this.name = name;
        }

        public Role(Role role)
        {
            this.id = role.Id;
            this.name = role.Name;
        }

        public string toString()
        {
            return name;
        }

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
    }
}
