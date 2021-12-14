using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SinhVienDTO
    {
        private int _maSV;
        private string _hoten;
        private string _phai;
        private Nullable<System.DateTime> _ngaySinh;
        private string _diaChi;
        private int _maNganh;

        public int MASV
        {
            get { return _maSV; }
            set { _maSV = value; }
        }
        public string HOTEN
        {
            get { return _hoten; }
            set { _hoten = value; }
        }
        public string PHAI
        {
            get { return _phai; }
            set { _phai = value; }
        }
        public Nullable<System.DateTime> NGAYSINH
        {
            get { return _ngaySinh; }
            set { _ngaySinh = value; }
        }
        public string DIACHI
        {
            get { return _diaChi; }
            set { _diaChi = value; }
        }
        public int MANGANH { 
            get { return _maNganh;  }
            set { _maNganh = value; }
        }

        public SinhVienDTO()
        {
            _maSV = 0;
            _hoten = "";
            _phai = "";
            _ngaySinh = DateTime.Now;
            _diaChi = "";
            _maNganh = 0;
        }
    }
}
