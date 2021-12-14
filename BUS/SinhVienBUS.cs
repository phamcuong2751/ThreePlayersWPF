using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace BUS
{
    public class SinhVienBUS
    {
        public DataTable LoadAllSinhVien()
        {
            SinhVienDAO svDAO = new SinhVienDAO();
            return svDAO.LoadAllSinhVien();
        }
        public int InsertSinhVien(SinhVienDTO sv)
        {
            SinhVienDAO svDAO = new SinhVienDAO();
            return svDAO.InsertSinhVien(sv);
        }
        public int DeleteSinhVien(string maSV)
        {
            SinhVienDAO svDAO = new SinhVienDAO();
            return svDAO.DeleteSinhVien(maSV);
        }
    }
}
