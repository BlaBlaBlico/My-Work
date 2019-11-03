using System;

namespace Dividing_By_7_And_5
{
    class DividingBy7And5
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());

            if (n % 7 == 0 && n % 5 == 0 && n != 0)
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
