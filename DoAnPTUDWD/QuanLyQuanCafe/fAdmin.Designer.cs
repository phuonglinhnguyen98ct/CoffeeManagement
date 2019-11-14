namespace QuanLyQuanCafe
{
    partial class fAdmin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tcAdmin = new System.Windows.Forms.TabControl();
            this.tpRevenue = new System.Windows.Forms.TabPage();
            this.tpTable = new System.Windows.Forms.TabPage();
            this.tpDrink = new System.Windows.Forms.TabPage();
            this.tpStaff = new System.Windows.Forms.TabPage();
            this.dgvStaff = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dtpFrom = new System.Windows.Forms.DateTimePicker();
            this.dtpTo = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnStatistic = new System.Windows.Forms.Button();
            this.tcAdmin.SuspendLayout();
            this.tpRevenue.SuspendLayout();
            this.tpStaff.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvStaff)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tcAdmin
            // 
            this.tcAdmin.Controls.Add(this.tpRevenue);
            this.tcAdmin.Controls.Add(this.tpTable);
            this.tcAdmin.Controls.Add(this.tpDrink);
            this.tcAdmin.Controls.Add(this.tpStaff);
            this.tcAdmin.Location = new System.Drawing.Point(2, 3);
            this.tcAdmin.Name = "tcAdmin";
            this.tcAdmin.SelectedIndex = 0;
            this.tcAdmin.Size = new System.Drawing.Size(747, 351);
            this.tcAdmin.TabIndex = 0;
            // 
            // tpRevenue
            // 
            this.tpRevenue.Controls.Add(this.panel2);
            this.tpRevenue.Controls.Add(this.panel1);
            this.tpRevenue.Location = new System.Drawing.Point(4, 22);
            this.tpRevenue.Name = "tpRevenue";
            this.tpRevenue.Padding = new System.Windows.Forms.Padding(3);
            this.tpRevenue.Size = new System.Drawing.Size(739, 325);
            this.tpRevenue.TabIndex = 0;
            this.tpRevenue.Text = "Doanh thu";
            this.tpRevenue.UseVisualStyleBackColor = true;
            // 
            // tpTable
            // 
            this.tpTable.Location = new System.Drawing.Point(4, 22);
            this.tpTable.Name = "tpTable";
            this.tpTable.Padding = new System.Windows.Forms.Padding(3);
            this.tpTable.Size = new System.Drawing.Size(739, 325);
            this.tpTable.TabIndex = 1;
            this.tpTable.Text = "Danh sách bàn";
            this.tpTable.UseVisualStyleBackColor = true;
            // 
            // tpDrink
            // 
            this.tpDrink.Location = new System.Drawing.Point(4, 22);
            this.tpDrink.Name = "tpDrink";
            this.tpDrink.Padding = new System.Windows.Forms.Padding(3);
            this.tpDrink.Size = new System.Drawing.Size(739, 325);
            this.tpDrink.TabIndex = 2;
            this.tpDrink.Text = "Danh sách món";
            this.tpDrink.UseVisualStyleBackColor = true;
            // 
            // tpStaff
            // 
            this.tpStaff.Controls.Add(this.dgvStaff);
            this.tpStaff.Location = new System.Drawing.Point(4, 22);
            this.tpStaff.Name = "tpStaff";
            this.tpStaff.Padding = new System.Windows.Forms.Padding(3);
            this.tpStaff.Size = new System.Drawing.Size(739, 325);
            this.tpStaff.TabIndex = 3;
            this.tpStaff.Text = "Danh sách nhân viên";
            this.tpStaff.UseVisualStyleBackColor = true;
            // 
            // dgvStaff
            // 
            this.dgvStaff.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvStaff.Location = new System.Drawing.Point(7, 4);
            this.dgvStaff.Name = "dgvStaff";
            this.dgvStaff.Size = new System.Drawing.Size(474, 315);
            this.dgvStaff.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnStatistic);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.dtpTo);
            this.panel1.Controls.Add(this.dtpFrom);
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(730, 35);
            this.panel1.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Location = new System.Drawing.Point(4, 45);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(729, 274);
            this.panel2.TabIndex = 1;
            // 
            // dtpFrom
            // 
            this.dtpFrom.Location = new System.Drawing.Point(55, 5);
            this.dtpFrom.Name = "dtpFrom";
            this.dtpFrom.Size = new System.Drawing.Size(209, 20);
            this.dtpFrom.TabIndex = 0;
            // 
            // dtpTo
            // 
            this.dtpTo.Location = new System.Drawing.Point(343, 5);
            this.dtpTo.Name = "dtpTo";
            this.dtpTo.Size = new System.Drawing.Size(209, 20);
            this.dtpTo.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 5);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Từ ngày";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(284, 4);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Đến ngày";
            // 
            // btnStatistic
            // 
            this.btnStatistic.Location = new System.Drawing.Point(616, 2);
            this.btnStatistic.Name = "btnStatistic";
            this.btnStatistic.Size = new System.Drawing.Size(75, 23);
            this.btnStatistic.TabIndex = 4;
            this.btnStatistic.Text = "Thống kê";
            this.btnStatistic.UseVisualStyleBackColor = true;
            // 
            // fAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(761, 366);
            this.Controls.Add(this.tcAdmin);
            this.Name = "fAdmin";
            this.Text = "fAdmin";
            this.tcAdmin.ResumeLayout(false);
            this.tpRevenue.ResumeLayout(false);
            this.tpStaff.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvStaff)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tcAdmin;
        private System.Windows.Forms.TabPage tpRevenue;
        private System.Windows.Forms.TabPage tpTable;
        private System.Windows.Forms.TabPage tpDrink;
        private System.Windows.Forms.TabPage tpStaff;
        private System.Windows.Forms.DataGridView dgvStaff;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnStatistic;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dtpTo;
        private System.Windows.Forms.DateTimePicker dtpFrom;
    }
}