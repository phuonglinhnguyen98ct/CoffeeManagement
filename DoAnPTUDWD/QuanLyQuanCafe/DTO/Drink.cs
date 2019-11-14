using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Drink
    {
        private int id;
        private string name;
        private int price;
        private Category category;

        public Drink() { }

        public Drink(int id, string name, int price, Category category)
        {
            this.id = id;
            this.name = name;
            this.price = price;
            this.category = new Category(category);
        }

        public Drink(Drink drink)
        {
            this.id = drink.Id;
            this.name = drink.Name;
            this.price = drink.Price;
            this.category = new Category(drink.Category);
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

        public int Price
        {
            get
            {
                return price;
            }

            set
            {
                price = value;
            }
        }

        public Category Category
        {
            get
            {
                return category;
            }

            set
            {
                category = value;
            }
        }
    }
}
