
using CPRG214.Framework.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.Marina.Domain
{
    public class SlipManager
    {
        public static List<Slip> Slips { get; private set; }
        static SlipManager()
        {
            Slips = GenericDB.GenericRead<Slip>("Slip");
        }
        public static List<Slip> AvailSlips()
        {
            List<Lease> Leases = GenericDB.GenericRead<Lease>("Lease");
            List<Slip> tempSlip = new List<Slip>(Slips);
            foreach (Slip s in Slips)
            {
                foreach (Lease l in Leases)
                {
                    if (s.ID == l.SlipID)
                    {
                        tempSlip.Remove(s);
                    }
                }
            }
            return tempSlip;
        }
    }
}
