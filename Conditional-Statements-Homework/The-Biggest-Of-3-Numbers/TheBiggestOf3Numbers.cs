using System;

namespace The_Biggest_Of_3_Numbers
{
    class TheBiggestOf3Numbers
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float a = float.Parse(line);
            line = Console.ReadLine();
            float b = float.Parse(line);
            line = Console.ReadLine();
            float c = float.Parse(line);

            Console.WriteLine(Math.Max(Math.Max(a, b), c));
        }
    }
}
