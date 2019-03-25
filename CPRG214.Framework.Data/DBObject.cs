using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.Framework.Data
{
    public class DBObject
    {
        private DBObject() { }
        public static SqlConnection GetConnection()
        {
            string connectionString = @"Data Source=localhost\Sqlexpress;Initial Catalog=Marina;Integrated Security=True";
            return new SqlConnection(connectionString);
        }
    }
}
