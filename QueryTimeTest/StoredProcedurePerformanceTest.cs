

using NUnit.Framework;
using System;
using System.Diagnostics;
using System.IO;

namespace Testing
{
    [TestFixture]
    public class StoredProcedurePerformanceTest
    {
        [Test]
        public void Test1()
        { 
            string storedProcedureName1 = "s1";
            string storedProcedureName2 = "s2";

            //init manager to access the sql server
            IManager dBManager = new DBManager();
            
            //Run stored procedure 1
            dBManager.OpenConnectionToDB();
            dBManager.RunStoredProcedure(storedProcedureName1);
            dBManager.CloseConnectionToDB();
            Console.WriteLine();
            //Run stored procedure 1
            dBManager.OpenConnectionToDB();
            dBManager.RunStoredProcedure(storedProcedureName1);
            dBManager.CloseConnectionToDB();
            Console.WriteLine();
            //Run stored procedure 2
            dBManager.OpenConnectionToDB();
            dBManager.RunStoredProcedure(storedProcedureName2);
            dBManager.CloseConnectionToDB();
            Console.WriteLine();
            //Run stored procedure 2
            dBManager.OpenConnectionToDB();
            dBManager.RunStoredProcedure(storedProcedureName2);
            dBManager.CloseConnectionToDB();
        }
    }
}
