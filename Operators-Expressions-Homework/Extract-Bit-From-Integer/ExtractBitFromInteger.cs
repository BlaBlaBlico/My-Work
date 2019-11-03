using System;

namespace Extract_Bit_From_Integer
{
    class ExtractBitFromInteger
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            int p = int.Parse(Console.ReadLine());

            int nRight3 = n >> p;
            Console.WriteLine(nRight3 & 1);
        }
    }
}
