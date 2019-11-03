using System;

namespace Gravitation_On_The_Moon
{
    class GravitationOnTheMoon
    {
        static void Main()
        {
            float weight = float.Parse(Console.ReadLine());
            float weightOnMoon;

            weightOnMoon = (weight * (float)17) / (float)100;

            Console.WriteLine(weightOnMoon);
        }
    }
}
