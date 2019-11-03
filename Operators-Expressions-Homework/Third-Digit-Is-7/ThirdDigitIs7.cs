using System;

namespace Third_Digit_Is_7
{
    class ThirdDigitIs7
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            int thirdDigit;

            thirdDigit = (n % ((int)Math.Pow(10, 3))) / ((int)Math.Pow(10, 3 - 1));

            if (thirdDigit == 7)
            {
                Console.WriteLine(true);
            }
            else
            {
                Console.WriteLine(false);
            }
        }
    }
}
