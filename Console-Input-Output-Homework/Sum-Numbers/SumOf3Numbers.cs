using System;

namespace Sum_Numbers
{
    class SumOf3Numbers
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float a = float.Parse(line);
            line = Console.ReadLine();
            float b = float.Parse(line);
            line = Console.ReadLine();
            float c = float.Parse(line);

            Console.WriteLine("SUM = {0}", a + b + c);
        }
    }
}
