using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    class DrinkDAO
    {
        private static ObservableCollection<Drink> drinkList = new ObservableCollection<Drink>();

        private static DrinkDAO instance;

        public static DrinkDAO Instance
        {
            get { if (instance == null) instance = new DrinkDAO(); return instance; }
            private set { instance = value; }
        }

        private DrinkDAO() { }

        public static bool create(string name, int price, Category category)
        {
            string query = string.Format("INSERT drink(name, price, categoryId) VALUES (N'{0}', {1}, {2})", name, price, category.Id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                drinkList.Add(new Drink(getLastId(), name, price, category));
            }

            return result > 0;
        }

        public static bool update(Drink drink, string name, int price, Category category)
        {
            string query = string.Format("UPDATE drink SET name = N'{0}', price = {1}, categoryId = {2} WHERE id = {3}", name, price, category.Id, drink.Id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                drinkList[getDrinkIndex(drink)] = new Drink(drink.Id, name, price, category);
            }

            return result > 0;
        }

        public static bool delete(Drink drink)
        {
            string query = "DELETE FROM drink WHERE id = " + drink.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                drinkList.RemoveAt(getDrinkIndex(drink));
            }

            return result > 0;
        }

        public static Drink getDrinkById(int id)
        {
            string query = "SELECT * FROM drink WHERE id = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    return new Drink(id, row["name"].ToString(), (int)row["price"], CategoryDAO.getCategoryById((int)row["categoryId"]));
                }
            }

            return null;
        }

        public static void getAll()
        {
            string query = "SELECT * FROM drink";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    drinkList.Add(new Drink((int)row["id"], row["name"].ToString(), (int)row["price"], CategoryDAO.getCategoryById((int)row["categoryId"])));
                }
            }
        }

        public static int getDrinkIndex(Drink drink)
        {
            foreach (Drink item in drinkList)
            {
                if (item.Id == drink.Id)
                {
                    return drinkList.IndexOf(item);
                }
            }
            return -1;
        }

        public static int getLastId()
        {
            int lastId = 0;
            string query = "SELECT MAX(id) FROM drink";
            lastId = (int)DataProvider.Instance.ExecuteScalar(query);

            return lastId;
        }
    }
}
