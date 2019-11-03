using System;

namespace Check_Bit_At_Given_Position
{
    class CheckBitAtGivenPosition
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            int p = int.Parse(Console.ReadLine());

            int nRightP = n >> p;
            int a = nRightP & 1;
            bool isOne = (a == 1) ? true : false;
            Console.WriteLine(isOne);
        }
    }
}
