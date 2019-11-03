using System;

namespace Odd_Or_Even_Integers
{
    class OddOrEvenIntegers
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());

            if (n % 2 == 0)
            {
                Console.WriteLine(false);
            }
            else
            {
                Console.WriteLine(true);
            }
        }
    }
}
