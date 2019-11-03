using System;

namespace Point_In_A_Circle
{
    class PointInACircle
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float x = float.Parse(line);
            line = Console.ReadLine();
            float y = float.Parse(line);
            
            if ((Math.Pow(Math.Abs(x), 2)) + (Math.Pow(Math.Abs(y), 2)) <= Math.Pow(2, 2))
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
