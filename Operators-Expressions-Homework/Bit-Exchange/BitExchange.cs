using System;

namespace Bit_Exchange
{
    class BitExchange
    {
        static void Main()
        {
            uint n = uint.Parse(Console.ReadLine());
            uint nRighti1, nRighti2;

            string nToBin1 = Convert.ToString(n, 2);
            Console.WriteLine(nToBin1);

            for (int i = 3; i <= 5; i++)
            {
                nRighti1 = n >> i;
                nRighti2 = n >> (i + 23);
                uint bit1 = nRighti1 & 1;
                uint bit2 = nRighti2 & 1;
                if (bit1 == 1 && bit2 == 0)
                {
                    int mask1 = 1 << (i + 23);
                    n |= (uint)mask1;
                    int mask2 = ~(1 << i);
                    n &= (uint)mask2;
                }
                else if (bit1 == 0 && bit2 == 1)
                {
                    int mask1 = ~(1 << i + 23);
                    n &= (uint)mask1;
                    int mask2 = 1 << i;
                    n |= (uint)mask2; 
                }
            }
            string nToBin2 = Convert.ToString(n, 2);
            Console.WriteLine(nToBin2);
        }
    }
}
