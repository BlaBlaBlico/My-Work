using System;

namespace Check_For_A_Play_Card
{
    class CheckForAPlayCard
    {
        static void Main()
        {
            string character = Console.ReadLine();

            if (character == "2" || character == "3" || character == "4" || character == "5" || character == "6" 
                || character == "7" || character == "8" || character == "9" || character == "J" 
                || character == "Q" || character == "K" || character == "A")
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
