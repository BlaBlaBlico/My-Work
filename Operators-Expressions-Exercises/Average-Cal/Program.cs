using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Average_Cal
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int bitAtPosition1;

            bitAtPosition1 = 1 & (1 >> n);

            Console.WriteLine(bitAtPosition1);
        }
    }
}
