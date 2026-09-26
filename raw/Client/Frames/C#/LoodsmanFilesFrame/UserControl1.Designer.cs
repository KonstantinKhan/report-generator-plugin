using System.Windows.Forms;

namespace CSActiveX
{
    partial class UserControl1
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

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserControl1));
            this.listView1 = new System.Windows.Forms.ListView();
            this.Имя = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Размер = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Создан = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Изменен = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.btnAddFile = new System.Windows.Forms.ToolStripDropDownButton();
            this.добавитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.вставитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.создатьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnDeleteFile = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnGetInfo = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnLargeIconMode = new System.Windows.Forms.ToolStripButton();
            this.btnSmallIconMode = new System.Windows.Forms.ToolStripButton();
            this.btnListMode = new System.Windows.Forms.ToolStripButton();
            this.btnDetailsMode = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.btnRefresh = new System.Windows.Forms.ToolStripButton();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // listView1
            // 
            this.listView1.Activation = System.Windows.Forms.ItemActivation.OneClick;
            this.listView1.Alignment = System.Windows.Forms.ListViewAlignment.SnapToGrid;
            this.listView1.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.Имя,
            this.Размер,
            this.Создан,
            this.Изменен,
            this.columnHeader1});
            this.listView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listView1.FullRowSelect = true;
            this.listView1.GridLines = true;
            this.listView1.HideSelection = false;
            this.listView1.HoverSelection = true;
            this.listView1.Location = new System.Drawing.Point(0, 25);
            this.listView1.Margin = new System.Windows.Forms.Padding(8);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(556, 389);
            this.listView1.TabIndex = 1;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            // 
            // Имя
            // 
            this.Имя.Text = "Имя";
            this.Имя.Width = 150;
            // 
            // Размер
            // 
            this.Размер.Text = "Размер";
            this.Размер.Width = 150;
            // 
            // Создан
            // 
            this.Создан.Text = "Создан";
            this.Создан.Width = 150;
            // 
            // Изменен
            // 
            this.Изменен.Text = "Изменен";
            this.Изменен.Width = 150;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Относительный путь";
            this.columnHeader1.Width = 150;
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnAddFile,
            this.btnDeleteFile,
            this.toolStripSeparator1,
            this.btnGetInfo,
            this.toolStripSeparator2,
            this.btnLargeIconMode,
            this.btnSmallIconMode,
            this.btnListMode,
            this.btnDetailsMode,
            this.toolStripSeparator3,
            this.btnRefresh});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(556, 25);
            this.toolStrip1.Stretch = true;
            this.toolStrip1.TabIndex = 3;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // btnAddFile
            // 
            this.btnAddFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.добавитьToolStripMenuItem,
            this.вставитьToolStripMenuItem,
            this.создатьToolStripMenuItem});
            this.btnAddFile.Image = ((System.Drawing.Image)(resources.GetObject("btnAddFile.Image")));
            this.btnAddFile.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnAddFile.Name = "btnAddFile";
            this.btnAddFile.Size = new System.Drawing.Size(120, 22);
            this.btnAddFile.Text = "Добавить файл";
            // 
            // добавитьToolStripMenuItem
            // 
            this.добавитьToolStripMenuItem.Name = "добавитьToolStripMenuItem";
            this.добавитьToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.добавитьToolStripMenuItem.Text = "Добавить";
            // 
            // вставитьToolStripMenuItem
            // 
            this.вставитьToolStripMenuItem.Name = "вставитьToolStripMenuItem";
            this.вставитьToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.вставитьToolStripMenuItem.Text = "Вставить";
            // 
            // создатьToolStripMenuItem
            // 
            this.создатьToolStripMenuItem.Name = "создатьToolStripMenuItem";
            this.создатьToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.создатьToolStripMenuItem.Text = "Создать";
            // 
            // btnDeleteFile
            // 
            this.btnDeleteFile.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnDeleteFile.Image = ((System.Drawing.Image)(resources.GetObject("btnDeleteFile.Image")));
            this.btnDeleteFile.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnDeleteFile.Name = "btnDeleteFile";
            this.btnDeleteFile.Size = new System.Drawing.Size(23, 22);
            this.btnDeleteFile.Text = "Удалить";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // btnGetInfo
            // 
            this.btnGetInfo.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnGetInfo.Image = ((System.Drawing.Image)(resources.GetObject("btnGetInfo.Image")));
            this.btnGetInfo.ImageTransparentColor = System.Drawing.Color.Black;
            this.btnGetInfo.Name = "btnGetInfo";
            this.btnGetInfo.Size = new System.Drawing.Size(23, 22);
            this.btnGetInfo.Text = "toolStripButton2";
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // btnLargeIconMode
            // 
            this.btnLargeIconMode.CheckOnClick = true;
            this.btnLargeIconMode.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnLargeIconMode.Image = ((System.Drawing.Image)(resources.GetObject("btnLargeIconMode.Image")));
            this.btnLargeIconMode.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnLargeIconMode.Name = "btnLargeIconMode";
            this.btnLargeIconMode.Size = new System.Drawing.Size(23, 22);
            this.btnLargeIconMode.Tag = "1";
            this.btnLargeIconMode.Text = "toolStripButton3";
            this.btnLargeIconMode.Click += new System.EventHandler(this.btnListViewMode_Click);
            // 
            // btnSmallIconMode
            // 
            this.btnSmallIconMode.CheckOnClick = true;
            this.btnSmallIconMode.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnSmallIconMode.Image = ((System.Drawing.Image)(resources.GetObject("btnSmallIconMode.Image")));
            this.btnSmallIconMode.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSmallIconMode.Name = "btnSmallIconMode";
            this.btnSmallIconMode.Size = new System.Drawing.Size(23, 22);
            this.btnSmallIconMode.Tag = "2";
            this.btnSmallIconMode.Text = "toolStripButton4";
            this.btnSmallIconMode.Click += new System.EventHandler(this.btnListViewMode_Click);
            // 
            // btnListMode
            // 
            this.btnListMode.CheckOnClick = true;
            this.btnListMode.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnListMode.Image = ((System.Drawing.Image)(resources.GetObject("btnListMode.Image")));
            this.btnListMode.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnListMode.Name = "btnListMode";
            this.btnListMode.Size = new System.Drawing.Size(23, 22);
            this.btnListMode.Tag = "3";
            this.btnListMode.Text = "toolStripButton5";
            this.btnListMode.Click += new System.EventHandler(this.btnListViewMode_Click);
            // 
            // btnDetailsMode
            // 
            this.btnDetailsMode.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnDetailsMode.Checked = true;
            this.btnDetailsMode.CheckOnClick = true;
            this.btnDetailsMode.CheckState = System.Windows.Forms.CheckState.Checked;
            this.btnDetailsMode.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnDetailsMode.Image = ((System.Drawing.Image)(resources.GetObject("btnDetailsMode.Image")));
            this.btnDetailsMode.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnDetailsMode.Name = "btnDetailsMode";
            this.btnDetailsMode.Size = new System.Drawing.Size(23, 22);
            this.btnDetailsMode.Tag = "4";
            this.btnDetailsMode.Text = "toolStripButton6";
            this.btnDetailsMode.Click += new System.EventHandler(this.btnListViewMode_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // btnRefresh
            // 
            this.btnRefresh.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnRefresh.Image = ((System.Drawing.Image)(resources.GetObject("btnRefresh.Image")));
            this.btnRefresh.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(23, 22);
            this.btnRefresh.Text = "Обновить";
            this.btnRefresh.Click += new System.EventHandler(this.toolStripButton7_Click);
            // 
            // UserControl1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.toolStrip1);
            this.Name = "UserControl1";
            this.Size = new System.Drawing.Size(556, 414);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private ListView listView1;
        private ColumnHeader Имя;
        private ColumnHeader Размер;
        private ColumnHeader Создан;
        private ColumnHeader Изменен;
        private ToolStrip toolStrip1;
        private ToolStripButton btnDeleteFile;
        private ColumnHeader columnHeader1;
        private ToolStripDropDownButton btnAddFile;
        private ToolStripMenuItem добавитьToolStripMenuItem;
        private ToolStripMenuItem вставитьToolStripMenuItem;
        private ToolStripMenuItem создатьToolStripMenuItem;
        private ToolStripSeparator toolStripSeparator1;
        private ToolStripButton btnGetInfo;
        private ToolStripSeparator toolStripSeparator2;
        private ToolStripButton btnLargeIconMode;
        private ToolStripButton btnSmallIconMode;
        private ToolStripButton btnListMode;
        private ToolStripButton btnDetailsMode;
        private ToolStripSeparator toolStripSeparator3;
        private ToolStripButton btnRefresh;
    }


}
