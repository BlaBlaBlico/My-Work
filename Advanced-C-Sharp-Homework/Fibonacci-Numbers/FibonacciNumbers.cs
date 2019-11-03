using System;

namespace Fibonacci_Numbers
{
    class FibonacciNumbers
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            int[] fibNum = new int[n + 2];
            fibNum[0] = 1;
            fibNum[1] = 1;

            for (int i = 2; i <= n; i++)
            {
                fibNum[i] = fibNum[i - 1] + fibNum[i - 2];
            }

            Console.WriteLine(fibNum[n]);
        }
    }
}
