
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
        private static List<Slip> availSlips;
        /// <summary>
        /// get all Slips
        /// </summary>
        static SlipManager()
        {
            try
            {
                Slips = GenericDB.GenericRead<Slip>("Slip");
            }
            catch (Exception)
            {

                throw;
            }
            
        }
        /// <summary>
        /// Find available slips
        /// </summary>
        /// <returns></returns>
        public static List<Slip> AvailSlips()
        {
            List<Lease> Leases = null;
            try
            {
                Leases = GenericDB.GenericRead<Lease>("Lease");
            }
            catch (Exception)
            {

                throw;
            }

            availSlips = new List<Slip>(Slips);
            foreach (Slip s in Slips)
            {
                foreach (Lease l in Leases)
                {
                    if (s.ID == l.SlipID)
                    {
                        availSlips.Remove(s);
                    }
                }
            }
            return availSlips;
        }

        /// <summary>
        /// Find all Available slips for one Dock
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public static List<Slip> relatedAvailSlips(int Id)
        {
            AvailSlips();
            List<Slip> tempSlip = new List<Slip>();
            foreach (Slip s in availSlips)
            {
                
                    if (s.DockID == Id)
                    {
                        tempSlip.Add(s);
                    }
                
            }
            return tempSlip;
        }

    }
}
