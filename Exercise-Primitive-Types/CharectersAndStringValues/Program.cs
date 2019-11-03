using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CharectersAndStringValues
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("a = ");
            float a = Math.Abs(Console.Read());
            Console.Write("b = ");
            Console.ReadLine();
            float b = Math.Abs(Console.Read());
            float eps = 0.000001f;
            float diff = Math.Abs(a - b);

            if (a == b) {
                Console.WriteLine(true);
            }
            else if (a == 0 || b == 0 || diff < eps) {
                Console.WriteLine(diff < eps);
            }
            else {
                Console.WriteLine(diff / (a + b) < eps);
            }
        }
    }
}
