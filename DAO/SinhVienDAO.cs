using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{
    public class SinhVienDAO
    {
        public DataTable LoadAllSinhVien()
        {
            Provider _provider = new Provider();
            DataTable _dataTable = null;
            try
            {
                string strSQL = "sp_LoadAllSInhVien";
                _provider.Connect();
                _dataTable = _provider.ExcecuteQuery(CommandType.StoredProcedure, strSQL);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                _provider.DisConnect();
            }
            return _dataTable;
        }

        public int InsertSinhVien(SinhVienDTO sv)
        {
            Provider p = new Provider();
            int nRow = 0;
            try
            {
                string strSQL = "sp_InsertSV";
                p.Connect();
                nRow = p.ExcecuteNonQuery(CommandType.StoredProcedure, strSQL,
                        new SqlParameter { ParameterName = "@MASV", Value = sv.MASV },
                        new SqlParameter { ParameterName = "@HOTEN", Value = sv.HOTEN },
                        new SqlParameter { ParameterName = "@PHAI", Value = sv.PHAI },
                        new SqlParameter { ParameterName = "@NGAYSINH", Value = sv.NGAYSINH },
                        new SqlParameter { ParameterName = "@DIACHI", Value = sv.DIACHI },
                        new SqlParameter { ParameterName = "@MANGANH", Value = sv.MANGANH }
                    );
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                p.DisConnect();
            }
            return nRow;
        }
    }
}
