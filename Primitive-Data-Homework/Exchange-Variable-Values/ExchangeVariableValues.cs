using System;

namespace Exchange_Variable_Values
{
    class ExchangeVariableValues
    {
        static void Main()
        {
            byte a = 5, b = 10, c;

            Console.WriteLine("Before:\na = {0}\nb = {1}", a, b);

            c = a;
            a = b;
            b = c;

            Console.WriteLine("After:\na = {0}\nb = {1}", a, b);
        }
    }
}
