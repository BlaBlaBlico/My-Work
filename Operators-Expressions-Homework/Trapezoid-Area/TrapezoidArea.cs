using System;

namespace Trapezoid_Area
{
    class TrapezoidArea
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float a = float.Parse(line);
            line = Console.ReadLine();
            float b = float.Parse(line);
            line = Console.ReadLine();
            float h = float.Parse(line);

            Console.WriteLine("Area: {0}", ((a + b) / 2) * h);
        }
    }
}
