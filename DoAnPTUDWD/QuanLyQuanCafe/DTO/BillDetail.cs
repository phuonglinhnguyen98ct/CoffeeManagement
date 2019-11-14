using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class BillDetail
    {
        private Bill bill;
        private Table table;
        private Drink drink;
        private int quantity;
        private int cost;

        public BillDetail() { }

        public BillDetail(Bill bill, Table table, Drink drink, int quantity, int cost)
        {
            this.bill = new Bill(bill);
            this.table = new Table(table);
            this.drink = new Drink(drink);
            this.quantity = quantity;
            this.cost = cost;
        }

        public BillDetail(BillDetail billdetail)
        {
            this.bill = new Bill(billdetail.Bill);
            this.table = new Table(billdetail.Table);
            this.drink = new Drink(billdetail.Drink);
            this.quantity = billdetail.quantity;
            this.cost = billdetail.cost;
        }

        public Bill Bill
        {
            get
            {
                return bill;
            }

            set
            {
                bill = value;
            }
        }

        public Table Table
        {
            get
            {
                return table;
            }

            set
            {
                table = value;
            }
        }

        public Drink Drink
        {
            get
            {
                return drink;
            }

            set
            {
                drink = value;
            }
        }
    }
}
