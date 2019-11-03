using System;

namespace Playing_With_Types
{
    class PlayingWithTypes
    {
        static void Main()
        {
            Console.WriteLine("Please choose a type:");
            Console.WriteLine("1 --> int\n2 --> double\n3 --> string");
            byte i = byte.Parse(Console.ReadLine());
            object buff = null;

            if (i == 1)
            {
                buff = int.Parse(Console.ReadLine());
                buff = (int)buff + 1;
            }
            else if (i == 2)
            {
                buff = float.Parse(Console.ReadLine());
                buff = (float)buff + 1;
            }
            else if (i == 3)
            {
                buff = Console.ReadLine();
                buff = buff + "*";
            }

            Console.WriteLine(buff);
        }
    }
}
