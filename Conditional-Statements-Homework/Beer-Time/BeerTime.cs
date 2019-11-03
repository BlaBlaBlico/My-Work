using System;

namespace Beer_Time
{
    class BeerTime
    {
        static void Main()
        {
            DateTime time = DateTime.Parse(Console.ReadLine());

            Console.WriteLine(time.ToString("hh:mm tt"));
            Console.WriteLine(time.Hour);
            Console.WriteLine(time.Minute);
            Console.WriteLine(time.TimeOfDay);
        }
    }
}
