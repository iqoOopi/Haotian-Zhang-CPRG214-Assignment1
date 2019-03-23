using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.Marina.Domain
{
    public class Dock
    {
        public int ID { get; set; }
        public string Name { get; set; }//<50 char
        public bool WaterService { get; set; }
        public bool ElectricalService { get; set; }
    }
}
