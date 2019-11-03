using System;

namespace Min_Max_Sum_And_Average_Of_N_Numbers
{
    class MinMaxSumAndAverageOfNNumbers
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            int[] buff = new int[n];
            int Sum = 0;

            for (int i = 0; i < n; i++)
            {
                buff[i] = int.Parse(Console.ReadLine());
                Sum += buff[i];
            }

            int Min = Math.Min(buff[0], buff[1]);
            for (int i = 2; i < n; i++)
            {
                Min = Math.Min(buff[i], Min);
            }

            int Max = Math.Max(buff[0], buff[1]);
            for (int i = 2; i < n; i++)
            {
                Max = Math.Max(buff[i], Max);
            }

            Console.WriteLine("Min = {0}", Min);
            Console.WriteLine("Max = {0}", Max);
            Console.WriteLine("Sum = {0}", Sum);
            Console.WriteLine("Avg = {0:F2}",((float)Sum / (float)n));
        }
    }
}
