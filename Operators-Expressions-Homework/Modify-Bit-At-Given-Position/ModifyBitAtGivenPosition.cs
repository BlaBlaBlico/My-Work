using System;

namespace Modify_Bit_At_Given_Position
{
    class ModifyBitAtGivenPosition
    {
        static void Main()
        {
            string line = Console.ReadLine();
            int n = int.Parse(line);
            line = Console.ReadLine();
            int p = int.Parse(line);
            line = Console.ReadLine();
            int v = int.Parse(line);
            int mask;

            if (v == 1)
            {
                mask = 1 << p;
                Console.WriteLine(n | mask);
            }
            else
            {
                mask = ~(1 << p);
                Console.WriteLine(n & mask);
            }
        }
    }
}
