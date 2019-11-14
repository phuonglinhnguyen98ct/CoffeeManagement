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
    public class RoleDAO
    {
        private static ObservableCollection<Role> roleList = new ObservableCollection<Role>();

        private static RoleDAO instance;

        public static RoleDAO Instance
        {
            get { if (instance == null) instance = new RoleDAO(); return instance; }
            private set { instance = value; }
        }

        private RoleDAO() { }

        public static bool create(string name)
        {
            string query = "INSERT INTO dbo.role(name) VALUES(N'" + name + "')";
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                roleList.Add(new Role(getLastId(), name));
            }

            return result > 0;
        }

        public static bool update(int id, string name)
        {
            string query = "UPDATE role SET name = '" + name + "' WHERE id = " + id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                roleList[getRoleIndex(getRoleById(id))] = new Role(id, name);
            }

            return result > 0;
        }

        public static bool delete(Role role)
        {
            string query = "DELETE FROM role WHERE id = " + role.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                roleList.RemoveAt(getRoleIndex(role));
            }

            return result > 0;
        }

        public static Role getRoleById(int id)
        {
            string query = "SELECT * FROM role WHERE id = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    return new Role(id, row["name"].ToString());
                }
            }
            
            return null;
        }

        public static void getAll()
        {
            string query = "SELECT * FROM role";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    roleList.Add(new Role((int)row["id"], row["name"].ToString()));
                }
            }
        }

        public static int getRoleIndex(Role role)
        {
            foreach (Role item in roleList)
            {
                if (item.Id == role.Id)
                {
                    return roleList.IndexOf(item);
                }
            }
            return -1;
        }

        public static int getLastId()
        {
            int lastId = 0;
            string query = "SELECT MAX(id) FROM role";
            lastId = (int)DataProvider.Instance.ExecuteScalar(query);

            return lastId;
        }

        public static ObservableCollection<Role> getRoleList()
        {
            return roleList;
        }
    }
}
