﻿namespace ClientCardFB3
{
    partial class DaysOpenForm
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DaysOpenForm));
            this.label1 = new System.Windows.Forms.Label();
            this.cboOpenMon = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cboOpenTues = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cboOpenThurs = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cboOpenWeds = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cboOpenSat = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cboOpenFri = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cboOpenSun = new System.Windows.Forms.ComboBox();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(485, 272);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(519, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "Please Select The Foodbanks Open Days";
            // 
            // cboOpenMon
            // 
            this.cboOpenMon.FormattingEnabled = true;
            this.cboOpenMon.Location = new System.Drawing.Point(756, 12);
            this.cboOpenMon.Name = "cboOpenMon";
            this.cboOpenMon.Size = new System.Drawing.Size(248, 28);
            this.cboOpenMon.TabIndex = 1;
            this.cboOpenMon.Tag = "Monday";
            this.cboOpenMon.SelectionChangeCommitted += new System.EventHandler(this.cboOpenMon_SelectionChangeCommitted);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(679, 15);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "Monday:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(679, 49);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 20);
            this.label3.TabIndex = 4;
            this.label3.Text = "Tuesday:";
            // 
            // cboOpenTues
            // 
            this.cboOpenTues.FormattingEnabled = true;
            this.cboOpenTues.Location = new System.Drawing.Point(756, 46);
            this.cboOpenTues.Name = "cboOpenTues";
            this.cboOpenTues.Size = new System.Drawing.Size(248, 28);
            this.cboOpenTues.TabIndex = 3;
            this.cboOpenTues.Tag = "Tuesday";
            this.cboOpenTues.SelectionChangeCommitted += new System.EventHandler(this.cboOpenTues_SelectionChangeCommitted);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(671, 117);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 20);
            this.label4.TabIndex = 8;
            this.label4.Text = "Thursday:";
            // 
            // cboOpenThurs
            // 
            this.cboOpenThurs.FormattingEnabled = true;
            this.cboOpenThurs.Location = new System.Drawing.Point(756, 114);
            this.cboOpenThurs.Name = "cboOpenThurs";
            this.cboOpenThurs.Size = new System.Drawing.Size(248, 28);
            this.cboOpenThurs.TabIndex = 7;
            this.cboOpenThurs.Tag = "Thursday";
            this.cboOpenThurs.SelectionChangeCommitted += new System.EventHandler(this.cboOpenThurs_SelectionChangeCommitted);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(654, 83);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(101, 20);
            this.label5.TabIndex = 6;
            this.label5.Text = "Wednesday:";
            // 
            // cboOpenWeds
            // 
            this.cboOpenWeds.FormattingEnabled = true;
            this.cboOpenWeds.Location = new System.Drawing.Point(756, 80);
            this.cboOpenWeds.Name = "cboOpenWeds";
            this.cboOpenWeds.Size = new System.Drawing.Size(248, 28);
            this.cboOpenWeds.TabIndex = 5;
            this.cboOpenWeds.Tag = "Wednesday";
            this.cboOpenWeds.SelectionChangeCommitted += new System.EventHandler(this.cboOpenWeds_SelectionChangeCommitted);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(674, 197);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(80, 20);
            this.label6.TabIndex = 12;
            this.label6.Text = "Saturday:";
            // 
            // cboOpenSat
            // 
            this.cboOpenSat.FormattingEnabled = true;
            this.cboOpenSat.Location = new System.Drawing.Point(756, 194);
            this.cboOpenSat.Name = "cboOpenSat";
            this.cboOpenSat.Size = new System.Drawing.Size(248, 28);
            this.cboOpenSat.TabIndex = 11;
            this.cboOpenSat.Tag = "Saturday";
            this.cboOpenSat.SelectionChangeCommitted += new System.EventHandler(this.cboOpenSat_SelectionChangeCommitted);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(690, 151);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(60, 20);
            this.label7.TabIndex = 10;
            this.label7.Text = "Friday:";
            // 
            // cboOpenFri
            // 
            this.cboOpenFri.FormattingEnabled = true;
            this.cboOpenFri.Location = new System.Drawing.Point(756, 148);
            this.cboOpenFri.Name = "cboOpenFri";
            this.cboOpenFri.Size = new System.Drawing.Size(248, 28);
            this.cboOpenFri.TabIndex = 9;
            this.cboOpenFri.Tag = "Friday";
            this.cboOpenFri.SelectionChangeCommitted += new System.EventHandler(this.cboOpenFri_SelectionChangeCommitted);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(679, 231);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(69, 20);
            this.label8.TabIndex = 14;
            this.label8.Text = "Sunday:";
            // 
            // cboOpenSun
            // 
            this.cboOpenSun.FormattingEnabled = true;
            this.cboOpenSun.Location = new System.Drawing.Point(756, 228);
            this.cboOpenSun.Name = "cboOpenSun";
            this.cboOpenSun.Size = new System.Drawing.Size(248, 28);
            this.cboOpenSun.TabIndex = 13;
            this.cboOpenSun.Tag = "Sunday";
            this.cboOpenSun.SelectionChangeCommitted += new System.EventHandler(this.cboOpenSun_SelectionChangeCommitted);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "C.bmp");
            // 
            // DaysOpenForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Cornsilk;
            this.ClientSize = new System.Drawing.Size(1016, 725);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.cboOpenSun);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.cboOpenSat);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.cboOpenFri);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cboOpenThurs);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cboOpenWeds);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cboOpenTues);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cboOpenMon);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "DaysOpenForm";
            this.Text = "DaysOpen";
            this.Load += new System.EventHandler(this.DaysOpen_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboOpenMon;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboOpenTues;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cboOpenThurs;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cboOpenWeds;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cboOpenSat;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cboOpenFri;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cboOpenSun;
        private System.Windows.Forms.ImageList imageList1;
    }
}