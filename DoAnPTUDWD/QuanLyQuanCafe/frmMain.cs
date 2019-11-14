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
    public partial class frmMain : MetroForm
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            // MetroForm loginForm = new frmLogin();
            // loginForm.ShowDialog();
        }

        private void btnManage_Click(object sender, EventArgs e)
        {
            frmManagement managementForm = new frmManagement();
            managementForm.ShowDialog();
        }
    }
}
