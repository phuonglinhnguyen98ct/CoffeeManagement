namespace QuanLyQuanCafe
{
    partial class fMain
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.adminToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinTàiKhoảnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.đăngXuấtToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.đăngXuấtToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.cbCategory = new System.Windows.Forms.ComboBox();
            this.cbDrink = new System.Windows.Forms.ComboBox();
            this.numQuantity = new System.Windows.Forms.NumericUpDown();
            this.btnAddDrink = new System.Windows.Forms.Button();
            this.flpTable = new System.Windows.Forms.FlowLayoutPanel();
            this.btnCheckout = new System.Windows.Forms.Button();
            this.numDiscount = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.cbChangeTable = new System.Windows.Forms.ComboBox();
            this.txtBillDetail = new System.Windows.Forms.TextBox();
            this.menuStrip1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numQuantity)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numDiscount)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.adminToolStripMenuItem,
            this.thôngTinTàiKhoảnToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(717, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // adminToolStripMenuItem
            // 
            this.adminToolStripMenuItem.Name = "adminToolStripMenuItem";
            this.adminToolStripMenuItem.Size = new System.Drawing.Size(55, 20);
            this.adminToolStripMenuItem.Text = "Admin";
            // 
            // thôngTinTàiKhoảnToolStripMenuItem
            // 
            this.thôngTinTàiKhoảnToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.đăngXuấtToolStripMenuItem1,
            this.đăngXuấtToolStripMenuItem});
            this.thôngTinTàiKhoảnToolStripMenuItem.Name = "thôngTinTàiKhoảnToolStripMenuItem";
            this.thôngTinTàiKhoảnToolStripMenuItem.Size = new System.Drawing.Size(70, 20);
            this.thôngTinTàiKhoảnToolStripMenuItem.Text = "Tài khoản";
            // 
            // đăngXuấtToolStripMenuItem1
            // 
            this.đăngXuấtToolStripMenuItem1.Name = "đăngXuấtToolStripMenuItem1";
            this.đăngXuấtToolStripMenuItem1.Size = new System.Drawing.Size(178, 22);
            this.đăngXuấtToolStripMenuItem1.Text = "Thông tin tài khoản";
            // 
            // đăngXuấtToolStripMenuItem
            // 
            this.đăngXuấtToolStripMenuItem.Name = "đăngXuấtToolStripMenuItem";
            this.đăngXuấtToolStripMenuItem.Size = new System.Drawing.Size(178, 22);
            this.đăngXuấtToolStripMenuItem.Text = "Đăng xuất";
            this.đăngXuấtToolStripMenuItem.Click += new System.EventHandler(this.đăngXuấtToolStripMenuItem_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.flpTable);
            this.panel1.Location = new System.Drawing.Point(12, 27);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(393, 381);
            this.panel1.TabIndex = 1;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.txtBillDetail);
            this.panel2.Location = new System.Drawing.Point(412, 87);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(293, 259);
            this.panel2.TabIndex = 2;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnAddDrink);
            this.panel3.Controls.Add(this.numQuantity);
            this.panel3.Controls.Add(this.cbDrink);
            this.panel3.Controls.Add(this.cbCategory);
            this.panel3.Location = new System.Drawing.Point(412, 28);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(293, 53);
            this.panel3.TabIndex = 3;
            // 
            // cbCategory
            // 
            this.cbCategory.FormattingEnabled = true;
            this.cbCategory.Location = new System.Drawing.Point(4, 4);
            this.cbCategory.Name = "cbCategory";
            this.cbCategory.Size = new System.Drawing.Size(121, 21);
            this.cbCategory.TabIndex = 0;
            // 
            // cbDrink
            // 
            this.cbDrink.FormattingEnabled = true;
            this.cbDrink.Location = new System.Drawing.Point(4, 29);
            this.cbDrink.Name = "cbDrink";
            this.cbDrink.Size = new System.Drawing.Size(121, 21);
            this.cbDrink.TabIndex = 1;
            // 
            // numQuantity
            // 
            this.numQuantity.Location = new System.Drawing.Point(131, 19);
            this.numQuantity.Minimum = new decimal(new int[] {
            100,
            0,
            0,
            -2147483648});
            this.numQuantity.Name = "numQuantity";
            this.numQuantity.Size = new System.Drawing.Size(40, 20);
            this.numQuantity.TabIndex = 2;
            this.numQuantity.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // btnAddDrink
            // 
            this.btnAddDrink.Location = new System.Drawing.Point(193, 8);
            this.btnAddDrink.Margin = new System.Windows.Forms.Padding(2);
            this.btnAddDrink.Name = "btnAddDrink";
            this.btnAddDrink.Size = new System.Drawing.Size(83, 38);
            this.btnAddDrink.TabIndex = 3;
            this.btnAddDrink.Text = "Thêm món";
            this.btnAddDrink.UseVisualStyleBackColor = true;
            // 
            // flpTable
            // 
            this.flpTable.Location = new System.Drawing.Point(3, 3);
            this.flpTable.Name = "flpTable";
            this.flpTable.Size = new System.Drawing.Size(387, 375);
            this.flpTable.TabIndex = 0;
            // 
            // btnCheckout
            // 
            this.btnCheckout.Location = new System.Drawing.Point(622, 367);
            this.btnCheckout.Margin = new System.Windows.Forms.Padding(2);
            this.btnCheckout.Name = "btnCheckout";
            this.btnCheckout.Size = new System.Drawing.Size(83, 38);
            this.btnCheckout.TabIndex = 4;
            this.btnCheckout.Text = "Thanh toán";
            this.btnCheckout.UseVisualStyleBackColor = true;
            // 
            // numDiscount
            // 
            this.numDiscount.Location = new System.Drawing.Point(553, 385);
            this.numDiscount.Name = "numDiscount";
            this.numDiscount.Size = new System.Drawing.Size(40, 20);
            this.numDiscount.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(540, 367);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Giảm giá (%)";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(416, 358);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(106, 23);
            this.button1.TabIndex = 6;
            this.button1.Text = "Chuyển đến bàn";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // cbChangeTable
            // 
            this.cbChangeTable.FormattingEnabled = true;
            this.cbChangeTable.Location = new System.Drawing.Point(416, 387);
            this.cbChangeTable.Name = "cbChangeTable";
            this.cbChangeTable.Size = new System.Drawing.Size(106, 21);
            this.cbChangeTable.TabIndex = 4;
            // 
            // txtBillDetail
            // 
            this.txtBillDetail.Location = new System.Drawing.Point(4, 4);
            this.txtBillDetail.Multiline = true;
            this.txtBillDetail.Name = "txtBillDetail";
            this.txtBillDetail.ReadOnly = true;
            this.txtBillDetail.Size = new System.Drawing.Size(286, 252);
            this.txtBillDetail.TabIndex = 0;
            // 
            // fMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(717, 420);
            this.Controls.Add(this.cbChangeTable);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.numDiscount);
            this.Controls.Add(this.btnCheckout);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.menuStrip1);
            this.Name = "fMain";
            this.Text = "Quản lý quán cà phê";
            this.Load += new System.EventHandler(this.fMain_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.numQuantity)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numDiscount)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem adminToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thôngTinTàiKhoảnToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem đăngXuấtToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem đăngXuấtToolStripMenuItem;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.NumericUpDown numQuantity;
        private System.Windows.Forms.ComboBox cbDrink;
        private System.Windows.Forms.ComboBox cbCategory;
        private System.Windows.Forms.Button btnAddDrink;
        private System.Windows.Forms.FlowLayoutPanel flpTable;
        private System.Windows.Forms.Button btnCheckout;
        private System.Windows.Forms.NumericUpDown numDiscount;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ComboBox cbChangeTable;
        private System.Windows.Forms.TextBox txtBillDetail;
    }
}