using System;

namespace Bitwise_Extract_Bit_3
{
    class BitwiseExtractBit3
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());

            int nRight3 = n >> 3;
            Console.WriteLine(nRight3 & 1);
        }
    }
}
