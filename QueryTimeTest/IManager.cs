using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Testing
{
    interface IManager
    {
        bool OpenConnectionToDB();
        void RunStoredProcedure(string procedureName);
        bool CloseConnectionToDB();
    }
}
