using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class NganhDTO
    {
        private string _maNganh;
        private string _tenNganh;
        private int _socd;
        private int _tssv;


        public string MANGANH { get { return _maNganh; } set { _maNganh = value; } }
        public string TENNGANH { get { return _tenNganh; } set { _tenNganh = value; } }
        public int SOCD { get { return _socd; } set { _socd = value; } }
        public int TSSV { get { return _tssv; } set { _tssv = value; } }
    }
}
