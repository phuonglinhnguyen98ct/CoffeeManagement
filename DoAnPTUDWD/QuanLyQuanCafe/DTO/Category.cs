using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Category
    {
        private int id;
        private string name;

        public Category() { }

        public Category(int id, string name)
        {
            this.id = id;
            this.name = name;
        }

        public Category(Category category)
        {
            this.id = category.Id;
            this.name = category.Name;
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
