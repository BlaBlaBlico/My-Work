using System;

namespace Four_Digit_Number
{
    class FourDigitNumber
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            int a, b, c, d;

            a = n / 1000;
            b = (n / 100) % 10;
            c = (n / 10) % 10;
            d = n % 10;

            Console.WriteLine("Sum: {0}", a + b + c + d);
            Console.WriteLine("Rev: {0}{1}{2}{3}", d, c, b, a);
            Console.WriteLine("Last digit in front: {0}{1}{2}{3}", d, a, b, c);
            Console.WriteLine("Exchange: {0}{1}{2}{3}", a, c, b, d);
        }
    }
}
