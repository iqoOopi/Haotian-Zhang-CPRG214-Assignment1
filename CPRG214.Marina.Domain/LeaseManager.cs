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
        /// <summary>
        /// DataSource for all Leases
        /// </summary>
        public static List<Lease> Leases { get; private set; }
        static LeaseManager()
        {
            try
            {
                Leases = GenericDB.GenericRead<Lease>("Lease");
            }
            catch (Exception)
            {

                throw;
            }
            
        }
        /// <summary>
        /// DataSource for Lese History
        /// </summary>
        /// <param name="customerId"></param>
        /// <returns></returns>
        public static List<Lease> LeaseHistory(int customerId)
        {
            List<Lease> tempLeases = new List<Lease>();
            try
            {
                Leases = GenericDB.GenericRead<Lease>("Lease");//read again in case concurrency inserted 
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message, ex);
            }
            foreach (Lease l in Leases)
            {

                if (l.CustomerID == customerId)
                {
                    tempLeases.Add(l);
                }

            }
            return tempLeases;
        }
        /// <summary>
        /// add new lease to DB
        /// </summary>
        /// <param name="customerID"></param>
        /// <param name="slipId"></param>
        public static void addLease(int customerID, int slipId)
        {
            Lease newLease = new Lease()
            {
                CustomerID = customerID,
                SlipID = slipId,
            };
            try
            {
                GenericDB.GenericInsert<Lease>("Lease", newLease);
                Leases = GenericDB.GenericRead<Lease>("Lease");//Static Leases, so need update Leases after each insert. 
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message,ex);
            }
            
        }
    }
}
