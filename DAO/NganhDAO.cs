using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class NganhDAO
    {
        public DataTable LoadAllNganh()
        {
            Provider _provider = new Provider();
            DataTable _dataTable = null;
            try
            {
                string strSQL = "sp_LoadAllNganh";
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
