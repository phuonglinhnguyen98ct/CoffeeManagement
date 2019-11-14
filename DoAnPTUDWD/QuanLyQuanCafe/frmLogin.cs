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
    public partial class frmLogin : MetroForm
    {
        private bool _isAuthenicated = false;

        public frmLogin()
        {
            InitializeComponent();
        }

        private void frmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (_isAuthenicated) return;

            DialogResult confirmation = MessageBox.Show("Bạn có chắc muốn thoát không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (confirmation == DialogResult.Yes)
            {
                Application.Exit();
            }
            else if (confirmation == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            _isAuthenicated = true;
            this.Close();
        }
    }
}
