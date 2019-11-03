using System;

namespace Point_In_Circle_And_Out_Rect
{
    class PointInCircleAndOutRect
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float x = float.Parse(line);
            line = Console.ReadLine();
            float y = float.Parse(line);

            if ((Math.Pow(Math.Abs(x) - 1, 2)) + (Math.Pow(Math.Abs(y) - 1, 2)) <= Math.Pow(1.5, 2) && y > 1)
            {
                Console.WriteLine("yes");
            }
            else
            {
                Console.WriteLine("no");
            }
        }
    }
}
