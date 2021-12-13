using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;

namespace BUS
{
    public class SinhVienBUS
    {
        public DataTable LoadAllSinhVien()
        {
           SinhVienDAO svDAO  = new SinhVienDAO();
            return svDAO.LoadAllSinhVien();
        }
    }
}
