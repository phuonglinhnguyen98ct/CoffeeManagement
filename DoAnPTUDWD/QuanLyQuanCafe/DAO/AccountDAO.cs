using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using QuanLyQuanCafe.DTO;
using System.Collections.ObjectModel;

namespace QuanLyQuanCafe.DAO
{
    public class AccountDAO
    {
        private static ObservableCollection<Account> accountList = new ObservableCollection<Account>();

        private static AccountDAO instance;

        public static AccountDAO Instance
        {
            get { if (instance == null) instance = new AccountDAO(); return instance; }
            private set { instance = value; }
        }

        private AccountDAO() { }

        public static bool create(string username, string password, Staff staff)
        {
            string query = "EXEC spCreateAccount @username , @password , @staffId";
            int result = DataProvider.Instance.ExecuteNonQuery(query, new object[] { username, password, staff.Id });

            if (result > 0)
            {
                accountList.Add(new Account(username, password, staff));
            }

            return result > 0;
        }

        public static bool update(string username, string password, Staff staff)
        {
            string query = "EXEC spUpdateAccount @username , @password , @staffId";
            int result = DataProvider.Instance.ExecuteNonQuery(query, new object[] { username, password, staff.Id });

            if (result > 0)
            {
                accountList[getAccountIndex(getAccountByUsername(username))] = new Account(username, password, staff);
            }

            return result > 0;
        }

        public static bool delete(Account account)
        {
            string query = "DELETE FROM account WHERE username = '" + account.Username + "'";
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            if (result > 0)
            {
                accountList.RemoveAt(getAccountIndex(account));
            }

            return result > 0;
        }

        public static void getAll()
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM dbo.account");

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    accountList.Add(new Account(row["username"].ToString(), row["password"].ToString(), StaffDAO.getStaffById((int)row["staffId"])));
                }
            }
        }

        public static Account getAccountByUsername(string username)
        {
            string query = "SELECT * FROM account WHERE username = '" + username + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            if (data != null)
            {
                foreach (DataRow row in data.Rows)
                {
                    return new Account(row["username"].ToString(), row["password"].ToString(), StaffDAO.getStaffById((int)row["staffId"]));
                }
            }

            return null;
        }

        public static bool Login(string username, string password)
        {
            string query = "EXEC spLogin @username , @password";

            DataTable result = DataProvider.Instance.ExecuteQuery(query, new object[] { username, password /*list*/});

            return result.Rows.Count > 0;
        }

        public static int getAccountIndex(Account account)
        {
            foreach (Account item in accountList)
            {
                if (item.Username == account.Username)
                {
                    return accountList.IndexOf(item);
                }
            }
            return -1;
        }

        public static int getLastId()
        {
            int lastId = 0;
            string query = "SELECT MAX(id) FROM account";
            lastId = (int)DataProvider.Instance.ExecuteScalar(query);

            return lastId;
        }

        public static ObservableCollection<Account> getAccountList()
        {
            return accountList;
        }
    }
}
