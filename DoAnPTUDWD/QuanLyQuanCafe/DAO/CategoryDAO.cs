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
    class CategoryDAO
    {
        private static ObservableCollection<Category> categoryList = new ObservableCollection<Category>();

        private static CategoryDAO instance;

        public static CategoryDAO Instance
        {
            get { if (instance == null) instance = new CategoryDAO(); return instance; }
            private set { instance = value; }
        }

        private CategoryDAO() { }

        public static bool create(string name)
        {
            string query = "INSERT INTO dbo.category(name) VALUES(N'" + name + "')";
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                categoryList.Add(new Category(getLastId(), name));
            }

            return result > 0;
        }

        public static bool update(Category category, string newName)
        {
            string query = "UPDATE category SET name = '" + newName + "' WHERE id = " + category.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                categoryList[getCategoryIndex(category)] = new Category(category.Id, newName);
            }

            return result > 0;
        }

        public static bool delete(Category category)
        {
            string query = "DELETE FROM category WHERE id = " + category.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                categoryList.RemoveAt(getCategoryIndex(category));
            }

            return result > 0;
        }

        public static Category getCategoryById(int id)
        {
            string query = "SELECT * FROM category WHERE id = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    return new Category(id, row["name"].ToString());
                }
            }

            return null;
        }

        public static void getAll()
        {
            string query = "SELECT * FROM category";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    categoryList.Add(new Category((int)row["id"], row["name"].ToString()));
                }
            }
        }

        public static int getCategoryIndex(Category category)
        {
            foreach (Category item in categoryList)
            {
                if (item.Id == category.Id)
                {
                    return categoryList.IndexOf(item);
                }
            }
            return -1;
        }

        public static int getLastId()
        {
            int lastId = 0;
            string query = "SELECT MAX(id) FROM category";
            lastId = (int)DataProvider.Instance.ExecuteScalar(query);

            return lastId;
        }
    }
}
