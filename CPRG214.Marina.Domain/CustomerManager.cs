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
            try
            {
                Customers = GenericDB.GenericRead<Customer>("Customer");
            }
            catch (Exception)
            {

                throw;
            }
            
        }
        public static int Registe(string firstName,string lastName,string phone,string city)
        {
            int ID = -1;
            //check if the customer already existing
            Customers.ForEach(c =>
            {
               ID= (c.FirstName == firstName&&c.LastName==lastName) ? c.ID : ID;
            });

            //new customer, create record and return new ID.
            if(ID==-1)
            {
                Customer newCus = new Customer()
                {
                    FirstName = firstName,
                    LastName = lastName,
                    Phone = phone,
                    City = city
                };
                try
                {
                    ID = GenericDB.GenericInsert<Customer>("Customer", newCus);
                } catch(Exception ex)
                {
                    throw new Exception(ex.Message, ex);
                }

            }


            return ID;
        }
    }
}
