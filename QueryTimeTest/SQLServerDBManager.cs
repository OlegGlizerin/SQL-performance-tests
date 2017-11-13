using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.IO;

namespace Testing
{
    class DBManager : IManager
    {
        private SqlConnection myConnection = null;
        private SqlCommand myCommand = null;

        //constructor init the SqlConnection and SqlCommand
        public DBManager()
        {
            myConnection = new SqlConnection();
            myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Connection = myConnection;
        }

        //Run the stored procedure by name
        public void RunStoredProcedure(string procedureName)
        {
            Stopwatch stopWatch = new Stopwatch();
            TimeSpan timeSpan;
            Console.WriteLine("Run stored procedure: " + procedureName);
            stopWatch.Start();
            myCommand.CommandText = procedureName;
            using (var reader = myCommand.ExecuteReader())
            {
                int entryCounter = 0;
                Console.WriteLine("Query result, " + procedureName + ":");
                while (reader.Read())
                {
                    entryCounter++;
                }
                Console.WriteLine(entryCounter + " items returned.");
            }       
            stopWatch.Stop();
            timeSpan = stopWatch.Elapsed;
            Console.WriteLine("Query run time: " + timeSpan.TotalMilliseconds);
        }

        //open the connection to the sql server
        public bool OpenConnectionToDB()
        {
            try
            {
                myConnection.ConnectionString = ConfigurationManager.AppSettings["DBconfig"];
                myConnection.Open();
                Console.WriteLine("Connection to SQLServer estabilished.");
            }
            catch (Exception e)
            {
                Console.WriteLine("Something bad in the connection to sql server.\n");
                Console.WriteLine(e.Data);
                return false;
            }
            return true;
        }

        //close the connection to the sql server
        public bool CloseConnectionToDB()
        {
            try
            {
                myConnection.Close();
                Console.WriteLine("Connection to SQLServer closed.");
            }
            catch (Exception e)
            {
                Console.WriteLine("Something wrong in close connection to sql server.\n");
                Console.WriteLine(e.Data);
                return false;
            }
            return true;
        }
    }
}
