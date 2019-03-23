using CPRG214.Framework.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.Marina.Domain
{
    public class CustomerManager
    {
        public static List<Customer> Customers { get; private set; }

        static CustomerManager()
        {
            Customers = GenericDB.GenericRead<Customer>("Customer");
        }
        public static int LogIn (string firstName,string lastName)
        {
            int ID = -1;
            Customers.ForEach(c =>
            {
               ID= (c.FirstName == firstName&&c.LastName==lastName) ? c.ID : ID;
            });

            return ID;
        }
    }
}
