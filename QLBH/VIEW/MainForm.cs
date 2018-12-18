using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars;

namespace QLBH.VIEW
{
    public partial class MainForm : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void ribbon_Click(object sender, EventArgs e)
        {

        }

        private void btnLogout_ItemClick(object sender, ItemClickEventArgs e)
        {
            MainForm.ActiveForm.Close();
        }
    }
}