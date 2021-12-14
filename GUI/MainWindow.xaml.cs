using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using BUS;
using DTO;

namespace ThreePlayers
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SinhVienBUS sinhVienBUS = new SinhVienBUS();
            NganhBUS nganhBUS = new NganhBUS();

            dpNgaySinh.DisplayDate = DateTime.Now.Date;
            GridViewName.DataContext = sinhVienBUS.LoadAllSinhVien();
            cbNganh.DataContext = nganhBUS.LoadAllNganh();
        }

        private void Button_Them_Click(object sender, RoutedEventArgs e)
        {
            SinhVienDTO sv = new SinhVienDTO();
            SinhVienBUS svBUS = new SinhVienBUS();
            var male = phaiNam.Content;
            var female = phaiNu.Content;

            if (maSV.Text.ToString().Length < 1)
            {
                MessageBox.Show("Student ID is not empty!");
                return;
            }
            sv.MASV = int.Parse(maSV.Text.ToString());
            sv.HOTEN = hoTen.Text;
            sv.DIACHI = diaChi.Text;
            if (phaiNam.IsChecked.Value)
            {
                sv.PHAI = male.ToString();
            }
            if (phaiNu.IsChecked.Value)
            {
                sv.PHAI = female.ToString();
            }
            sv.NGAYSINH = dpNgaySinh.SelectedDate;
            dynamic selectedCB = cbNganh.SelectedItem;
            sv.MANGANH = int.Parse(selectedCB.Row.ItemArray[0].Trim());


            if (svBUS.InsertSinhVien(sv) == 1)
            {
                MessageBox.Show("Insert Student Successful!");
            }

        }
    }
}
