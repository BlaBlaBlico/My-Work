using System;

namespace The_Biggest_Of_5_Numbers
{
    class TheBiggestOf5Numbers
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float a = float.Parse(line);
            line = Console.ReadLine();
            float b = float.Parse(line);
            line = Console.ReadLine();
            float c = float.Parse(line);
            line = Console.ReadLine();
            float d = float.Parse(line);
            line = Console.ReadLine();
            float e = float.Parse(line);

            if (a > e || b > e || c > e || d > e)
            {
                if (a > d || b > d || c > d)
                {
                    if (a > c || b > c)
                    {
                        if (a > b)
                        {
                            Console.WriteLine(a);
                        }
                        else
                        {
                            Console.WriteLine(b);
                        }
                    }
                    else
                    {
                        Console.WriteLine(c);
                    }
                }
                else
                {
                    Console.WriteLine(d);
                }
            }
            else
            {
                Console.WriteLine(e);
            }
        }
    }
}
