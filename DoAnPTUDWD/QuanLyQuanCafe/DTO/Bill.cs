using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Bill
    {
        private int id;
        private DateTime checkIn;
        private DateTime checkOut;
        private int totalCost;
        private int billStatus;
        private Staff staff;

        public Bill() { }

        public Bill(int id, DateTime checkIn, DateTime checkOut, int totalCost, int billStatus, Staff staff)
        {
            this.id = id;
            this.checkIn = checkIn;
            this.checkOut = checkOut;
            this.totalCost = totalCost;
            this.billStatus = billStatus;
            this.staff = new Staff(staff);
        }

        public Bill(Bill bill)
        {
            this.id = bill.id;
            this.checkIn = bill.CheckIn;
            this.checkOut = bill.CheckOut;
            this.totalCost = bill.TotalCost;
            this.billStatus = bill.BillStatus;
            this.staff = new Staff(bill.Staff);
        }

        public string toString()
        {
            return "id: " + id + ", checkIn: " + CheckIn + ", totalCost: " + TotalCost;
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

        public DateTime CheckIn
        {
            get
            {
                return checkIn;
            }

            set
            {
                checkIn = value;
            }
        }

        public DateTime CheckOut
        {
            get
            {
                return checkOut;
            }

            set
            {
                checkOut = value;
            }
        }

        public int TotalCost
        {
            get
            {
                return totalCost;
            }

            set
            {
                totalCost = value;
            }
        }

        public int BillStatus
        {
            get
            {
                return billStatus;
            }

            set
            {
                billStatus = value;
            }
        }

        public Staff Staff
        {
            get
            {
                return staff;
            }

            set
            {
                staff = value;
            }
        }
    }
}
