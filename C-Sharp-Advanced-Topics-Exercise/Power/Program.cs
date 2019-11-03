using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Power
{
    class Program
    {
        static double Power(double n, double power)
        {
            return Math.Pow(n, power);
        }

        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int power = int.Parse(Console.ReadLine());

            Console.WriteLine(Power(n, power));
        }
    }
}
