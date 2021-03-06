﻿using CPRG214.Framework.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPRG214.Marina.Domain
{
    public class DockManager
    {
        public static List<Dock> Docks { get; private set; }
        static DockManager()
        {
            try
            {
                Docks = GenericDB.GenericRead<Dock>("Dock");
            }
            catch (Exception)
            {

                throw;
            }
           
        }
        public static List<Dock> AvailDocks()
        {
            return Docks;
        }
    }
}
