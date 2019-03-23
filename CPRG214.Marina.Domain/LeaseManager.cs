using CPRG214.Framework.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.Marina.Domain
{
   public class LeaseManager
    {
        public static List<Lease> Leases { get; private set; }
        static LeaseManager()
        {
            Leases = GenericDB.GenericRead<Lease>("Lease");
        }
        public static List<Lease> LeaseHistory(int customerId)
        {
            List<Lease> tempLeases = new List<Lease>();
            
            foreach (Lease l in Leases)
            {

                if (l.CustomerID == customerId)
                {
                    tempLeases.Add(l);
                }

            }
            return tempLeases;
        }
        public static void addLease(int customerID, int slipId)
        {
            Lease newLease = new Lease()
            {
                CustomerID = customerID,
                SlipID = slipId,
            };
            GenericDB.GenericInsert<Lease>("Lease", newLease);
            Leases = GenericDB.GenericRead<Lease>("Lease");//Static Leases, so need update Leases after each insert. 
        }
    }
}
