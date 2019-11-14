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
    class StaffDAO
    {
        private static ObservableCollection<Staff> staffList = new ObservableCollection<Staff>();

        private static StaffDAO instance;

        public static StaffDAO Instance
        {
            get { if (instance == null) instance = new StaffDAO(); return instance; }
            private set { instance = value; }
        }

        private StaffDAO() { }

        public static bool create(string name, string sex, string birthday, string address, string phone, Role role)
        {
            string query = string.Format("INSERT dbo.staff(name, sex, birthday, address, phone, roleId) VALUES( N'{0}', N'{1}', '{2}', N'{3}', N'{4}', {5})", name, sex, birthday, address, phone, role.Id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                staffList.Add(new Staff(getLastId(), name, sex, birthday, address, phone, role));
            }

            return result > 0;
        }

        public static bool update(string name, string sex, string birthday, string address, string phone, Role role, Staff oldStaff)
        {
            string query = string.Format("UPDATE dbo.staff SET name = N'{0}', sex = N'{1}', birthday = '{2}', address = N'{3}', phone = N'{4}', roleId = {5} WHERE id = {6}", name, sex, birthday, address, phone, role.Id, oldStaff.Id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                staffList[getStaffIndex(oldStaff)] = new Staff(oldStaff.Id, name, sex, birthday, address, phone, role);
            }

            return result > 0;
        }

        public static bool delete(Staff staff)
        {
            string query = "DELETE FROM staff WHERE id = " + staff.Id;
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                staffList.RemoveAt(getStaffIndex(staff));
            }

            return result > 0;
        }

        public static Staff getStaffById(int id)
        {
            string query = "SELECT * FROM staff WHERE id = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    Role role = new Role(RoleDAO.getRoleById((int)row["roleId"]));
                    return new Staff(id, row["name"].ToString(), row["sex"].ToString(), row["birthday"].ToString(), row["address"].ToString(), row["phone"].ToString(), role);               
                }
            }

            return null;
        }

        public static void getAll()
        {
            string query = "SELECT * FROM staff";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    staffList.Add(new Staff((int)row["id"], row["name"].ToString(), row["sex"].ToString(), row["birthday"].ToString(), row["address"].ToString(), row["phone"].ToString(), RoleDAO.getRoleById((int)row["roleId"])));
                }
            }
        }

        public static int getStaffIndex(Staff staff)
        {
            foreach (Staff item in staffList)
            {
                if (item.Id == staff.Id)
                {
                    return staffList.IndexOf(item);
                }
            }
            return -1;
        }

        public static int getLastId()
        {
            int lastId = 0;
            string query = "SELECT MAX(id) FROM staff";
            lastId = (int)DataProvider.Instance.ExecuteScalar(query);

            return lastId;
        }

        public static ObservableCollection<Staff> getStaffList()
        {
            return staffList;
        }
    }
}
