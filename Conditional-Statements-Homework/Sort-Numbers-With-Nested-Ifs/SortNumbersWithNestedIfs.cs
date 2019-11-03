using System;

namespace Sort_Numbers_With_Nested_Ifs
{
    class SortNumbersWithNestedIfs
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float a = float.Parse(line);
            line = Console.ReadLine();
            float b = float.Parse(line);
            line = Console.ReadLine();
            float c = float.Parse(line);
            float buff1 = 0, buff2 = 0, buff3 = 0;

            if (a > b && a > c)
            {
                buff1 = a;
                if (b > c)
                {
                    buff2 = b;
                    buff3 = c;
                }
                else
                {
                    buff2 = c;
                    buff3 = b;
                }
            }
            else if (b > a && b > c)
            {
                buff1 = b;
                if (a > c)
                {
                    buff2 = a;
                    buff3 = c;
                }
                else
                {
                    buff2 = c;
                    buff3 = a;
                }
            }
            else if (c > a && c > b)
            {
                buff1 = c;
                if (a > b)
                {
                    buff2 = a;
                    buff3 = b;
                }
                else
                {
                    buff2 = b;
                    buff3 = a;
                }
            }
            else
            {
                buff1 = a;
                buff2 = b;
                buff3 = c;
            }

            Console.WriteLine("{0} {1} {2}", buff1, buff2, buff3);
        }
    }
}
