using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
    }
}
