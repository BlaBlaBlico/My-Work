using System;

namespace Rectangles
{
    class Rectangles
    {
        static void Main()
        {
            string line = Console.ReadLine();
            float width = float.Parse(line);
            line = Console.ReadLine();
            float height = float.Parse(line);

            Console.WriteLine((width * 2) + (height * 2));
            Console.WriteLine(width * height);
        }
    }
}
