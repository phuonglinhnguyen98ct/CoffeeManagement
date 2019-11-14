using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MetroFramework.Forms;

namespace QuanLyQuanCafe
{
    public partial class frmManagement : MetroForm
    {
        public frmManagement()
        {
            InitializeComponent();


        }

        private void frmManagement_Load(object sender, EventArgs e)
        {
            lvTableList.BeginUpdate();
            lvTableList.Columns.Add("Số thự tự");
            lvTableList.Columns.Add("Tên bàn", 300);
            lvTableList.View = View.Details;

            for (int i = 1; i <= 20; i++)
            {
                ListViewItem lvi = new ListViewItem(new string[] { i.ToString(), "Bàn " + i });
                lvTableList.Items.Add(lvi);
            }
            lvTableList.AutoResizeColumns(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvTableList.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
            lvTableList.EndUpdate();
        }
    }
}
