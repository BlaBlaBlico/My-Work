using System;

namespace Prime_Number_Check
{
    class PrimeNumberCheck
    {
        static void Main()
        {
            bool isPrime;
            ulong i, n = 1;
            int br = 0;

            while (br < 100001)
            {
                n++;
                i = 2;  
                isPrime = true;
                while (i <= Math.Sqrt(n))
                {
                    if (n % i == 0)
                    {
                        isPrime = false;
                        break;
                    }
                    else
                    {
                        i++;
                    }
                }
                if (isPrime)
                {
                    br++;
                }
            }
            Console.WriteLine(n);
        }
    }
}
