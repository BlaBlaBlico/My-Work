using System;

namespace Multiplication_Sign
{
    class MultiplicationSign
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float a = float.Parse(line);
            line = Console.ReadLine();
            float b = float.Parse(line);
            line = Console.ReadLine();
            float c = float.Parse(line);

            if (a == 0 || b == 0 || c == 0)
            {
                Console.WriteLine(0);
            }
            else if (((a > 0 && b < 0 && c > 0) || 
                      (a > 0 && b > 0 && c < 0) || 
                      (a < 0 && b > 0 && c > 0)) ||
                      (a < 0 && b < 0 && c < 0))
            {
                Console.WriteLine("-");
            }
            else
            {
                Console.WriteLine("+");
            }
        }
    }
}
