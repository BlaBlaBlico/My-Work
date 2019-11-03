using System;

namespace Print_A_Deck_Of_52_Cards
{
    class Program
    {
        static void Main()
        {
            Console.OutputEncoding = System.Text.Encoding.UTF8;
            for (int i = 1; i <= 13; i++)
            {
                for (int j = 1; j <= 4; j++)
                {
                    switch (j)
                    {
                        case 1:
                            if (i < 10)
                            {
                                Console.Write("{0}♣ ", i);
                            }
                            else if (i == 10)
                            {
                                Console.Write("J♣ ");
                            }
                            else if (i == 11)
                            {
                                Console.Write("Q♣ ");
                            }
                            else if (i == 12)
                            {
                                Console.Write("K♣ ");
                            }
                            else
                            {
                                Console.Write("A♣ ");
                            }
                        break;
                        case 2:
                            if (i < 10)
                            {
                                Console.Write("{0}♦ ", i);
                            }
                            else if (i == 10)
                            {
                                Console.Write("J♦ ");
                            }
                            else if (i == 11)
                            {
                                Console.Write("Q♦ ");
                            }
                            else if (i == 12)
                            {
                                Console.Write("K♦ ");
                            }
                            else
                            {
                                Console.Write("A♦ ");
                            }
                        break;
                        case 3:
                            if (i < 10)
                            {
                                Console.Write("{0}♥ ", i);
                            }
                            else if (i == 10)
                            {
                                Console.Write("J♥ ");
                            }
                            else if (i == 11)
                            {
                                Console.Write("Q♥ ");
                            }
                            else if (i == 12)
                            {
                                Console.Write("K♥ ");
                            }
                            else
                            {
                                Console.Write("A♥ ");
                            }
                        break;
                        case 4:
                            if (i < 10)
                            {
                                Console.WriteLine("{0}♠ ", i);
                            }
                            else if (i == 10)
                            {
                                Console.WriteLine("J♠ ");
                            }
                            else if (i == 11)
                            {
                                Console.WriteLine("Q♠ ");
                            }
                            else if (i == 12)
                            {
                                Console.WriteLine("K♠ ");
                            }
                            else
                            {
                                Console.WriteLine("A♠ ");
                            }
                        break;
                    }
                }
            }
        }
    }
}
