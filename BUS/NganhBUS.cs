using DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class NganhBUS
    {
        public DataTable LoadAllNganh()
        {
            NganhDAO dao = new NganhDAO();
            return dao.LoadAllNganh();
        }
    }
}
