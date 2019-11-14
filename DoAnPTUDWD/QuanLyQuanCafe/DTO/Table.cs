using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Table
    {
        private int id;
        private string name;
        private int status;

        public Table() { }

        public Table(int id, String name)
        {
            this.id = id;
            this.name = name;
            this.status = 0;
        }

        public Table(int id, String name, int status)
        {
            this.id = id;
            this.name = name;
            this.status = status;
        }

        public Table(Table table)
        {
            this.id = table.Id;
            this.name = table.Name;
            this.status = table.Status;
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

        public int Status
        {
            get
            {
                return status;
            }

            set
            {
                status = value;
            }
        }
    }
}
