using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace QLBH.VIEW
{
    public partial class Login : DevExpress.XtraEditors.XtraForm
    {
        public Login()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (txbUsername.Text == "admin" && txbPassword.Text == "admin")
            {
                this.Hide();
                MainForm mainForm = new MainForm();
                mainForm.FormClosed += mainFormClose;
                mainForm.Show();
            } else
            {
                XtraMessageBox.Show("Tên đăng nhập hoặc mật khẩu không hợp lệ!", "Lỗi", MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }
        private void mainFormClose(object sender, FormClosedEventArgs e)
        {
            txbPassword.Text = "";
            txbUsername.Text = "";
            this.Show();
        }
    }
}