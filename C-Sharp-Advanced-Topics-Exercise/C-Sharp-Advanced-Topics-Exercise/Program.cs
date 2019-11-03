using System;

namespace C_Sharp_Advanced_Topics_Exercise
{
    class Program
    {
        static void PrintEvenNumbers(int MinRange, int MaxRange)
        {
            for (int i = MinRange; i <= MaxRange; i++)
            {
                if (i % 2 == 0)
                {
                    Console.WriteLine(i);
                }
            }
        }

        static void Main()
        {
            int min = int.Parse(Console.ReadLine());
            int max = int.Parse(Console.ReadLine());

            PrintEvenNumbers(min, max);
        }
    }
}
