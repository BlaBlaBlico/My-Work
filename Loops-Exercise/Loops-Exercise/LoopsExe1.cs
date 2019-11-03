using System;

namespace Loops_Exercise
{
    class LoopsExe1
    {
        static void Main()
        {
            int N = int.Parse(Console.ReadLine()); 
            int Fac = 1;

            for (int i = 2; i <= N; i++)
            {
                Fac *= i;
            }

            Console.WriteLine(Fac);
        }
    }
}
