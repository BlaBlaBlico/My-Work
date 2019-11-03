using System;
using System.Collections.Generic;

namespace Biggest_Of_Three
{
    class Program
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float x = float.Parse(line);
            line = Console.ReadLine();
            float y = float.Parse(line);
            line = Console.ReadLine();
            float r = float.Parse(line);

            bool isInCircle = (x * x) + (y * y) <= (r * r);

            Console.WriteLine(isInCircle);
        }
    }
}
