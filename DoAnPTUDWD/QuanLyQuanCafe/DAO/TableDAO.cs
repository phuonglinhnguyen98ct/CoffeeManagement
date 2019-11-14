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
    class TableDAO
    {
        private static ObservableCollection<Table> tableList = new ObservableCollection<Table>();

        private static TableDAO instance;

        public static TableDAO Instance
        {
            get { if (instance == null) instance = new TableDAO(); return instance; }
            private set { instance = value; }
        }

        private TableDAO() { }

        public static bool create(string name)
        {
            string query = "INSERT INTO dbo.cftable(name) VALUES(N'" + name + "')";
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                tableList.Add(new Table(getLastId(), name));
            }

            return result > 0;
        }

        public static bool update(Table table, string newName)
        {
            string query = "UPDATE cftable SET name = '" + newName + "' WHERE id = " + table.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                tableList[getTableIndex(table)] = new Table(table.Id, newName);
            }

            return result > 0;
        }

        public static bool delete(Table table)
        {
            string query = "DELETE FROM cftable WHERE id = " + table.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                tableList.RemoveAt(getTableIndex(table));
            }

            return result > 0;
        }

        public static Table getTableById(int id)
        {
            string query = "SELECT * FROM cftable WHERE id = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    return new Table(id, row["name"].ToString());
                }
            }

            return null;
        }

        public static void getAll()
        {
            string query = "SELECT * FROM cftable";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    tableList.Add(new Table((int)row["id"], row["name"].ToString()));
                }
            }
        }

        public static int getTableIndex(Table table)
        {
            foreach (Table item in tableList)
            {
                if (item.Id == table.Id)
                {
                    return tableList.IndexOf(item);
                }
            }
            return -1;
        }

        public static int getLastId()
        {
            int lastId = 0;
            string query = "SELECT MAX(id) FROM cftable";
            lastId = (int)DataProvider.Instance.ExecuteScalar(query);

            return lastId;
        }
    }
}

