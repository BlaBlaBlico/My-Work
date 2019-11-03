using System;

namespace BattleShips_Game
{
    class BattleShips
    {
        static void Main()
        {
            Random rand = new Random();
            string gameState = "playing";

            char[,] boardVis = new char[10, 10];
            char[,] boardInvis = new char[10, 10];

            Reset_Board(boardVis);
            Reset_Board(boardInvis);

            int turn = 1;
            int totalTurns = 0;
            int shots = 0;

            for (int i = 0; i < rand.Next(1, 3); i++)
            {
                int type = rand.Next(5);

                if (type == 0 || type == 2)
                {
                    Boat_Spawn(boardInvis, rand);
                    shots++;
                }
                else
                {
                    Ship_Spawn(boardInvis, rand);
                    shots += 2;
                }
            }

            totalTurns = (shots * 3) - 2;

            while (turn != totalTurns)
            {

                int playerX = 0;
                int playerY = 0;

                UI(gameState, ref playerX, ref playerY, turn, totalTurns, shots, boardVis);

                if (boardInvis[playerX, playerY] == 'X')
                {
                    boardVis[playerX, playerY] = 'X';
                    shots--;
                }
                else
                {
                    boardVis[playerX, playerY] = '$';
                }

                turn++;
            }

            if (shots == 0)
            {
                Console.WriteLine("You WON!!!!");
            }
            else
            {
                Console.WriteLine("You LOST!!");
            }
        }

        static void Reset_Board(char[,] board)
        {
            for (int x = 0; x < 10; x++)
            {
                for (int y = 0; y < 10; y++)
                {
                    if ((x == 0 || x == 9) && (y == 0 || y == 9))
                    {
                        board[x, y] = '#';
                    }
                    if (((x == 0 || x == 9) && y > 0 && y < 9) || (x > 0 && x < 9 && (y == 0 || y == 9)))
                    {
                        board[x, y] = '+';
                    }
                    if (x > 0 && x < 9 && y > 0 && y < 9)
                    {
                        board[x, y] = 'O';
                    }
                }
            }
        }

        static void Print_Board(char[,] board)
        {
            for (int x = 0; x < 10; x++)
            {
                Console.Write(" ");
                for (int y = 0; y < 10; y++)
                {
                    Console.Write("{0} ", board[x, y]);
                }
                Console.WriteLine();
            }
            Console.WriteLine();
        }

        static void UI(string state, ref int playerX, ref int playerY, int turn, int totalTurns, int shots, char[,] board)
        {
            Console.WriteLine(" *********] Score [*********");
            Console.WriteLine(" Turn: {0}/{1}     Shots left: {2}", turn, totalTurns, shots);
            Console.WriteLine(" ***************************");
            if (state == "playing")
            {
                Console.WriteLine();
                Print_Board(board);
                Console.Write("Choose row 1-8: ");
                playerX = int.Parse(Console.ReadLine());
                Console.Write("Choose col 1-8: ");
                playerY = int.Parse(Console.ReadLine());
                Console.WriteLine();
            }
        }

        static int Random_Num(int minValue, int maxValue, Random rand)
        {
            return rand.Next(minValue, maxValue);
        }

        static void Position(ref int x, ref int y, char[,] board, Random rand)
        {
            do
            {
                x = Random_Num(1, 9, rand);
                y = Random_Num(1, 9, rand);
            } while (board[x, y] == 'X');
        }

        static void Boat_Spawn(char[,] board, Random rand)
        {
            int x = 0, y = 0;

            Position(ref x, ref y, board, rand);

            do
            {
                x = Random_Num(1, 9, rand);
                y = Random_Num(1, 9, rand);
            } while (board[x, y] == 'X' || 
                     board[x, y + 1] == 'X' ||
                     board[x, y - 1] == 'X' ||
                     board[x + 1, y] == 'X' ||
                     board[x - 1, y] == 'X' ||
                     board[x + 1, y + 1] == 'X' ||
                     board[x - 1, y + 1] == 'X' ||
                     board[x + 1, y - 1] == 'X' ||
                     board[x - 1, y - 1] == 'X');

            board[x, y] = 'X';
        }

        static void Ship_Spawn(char[,] board, Random rand)
        {
            bool spawned = false;

            while (!spawned)
            {
                int x = 0, y = 0;
                int ran1 = rand.Next(2);
                int ran2 = rand.Next(2);

                Position(ref x, ref y, board, rand);

                bool test1 = true;
                bool test2 = true;
                bool test3 = true;
                bool test4 = true;

                while (test1 && test2 && test3 && test4)
                {
                    if (ran1 == 0)
                    {
                        if (ran2 == 0)
                        {
                            if (x == 1 || board[x - 1, y] == 'X')
                            {
                                ran2 = 1;
                                test1 = false;
                            }
                            else
                            {
                                board[x, y] = 'X';
                                board[x - 1, y] = 'X';
                                spawned = true;
                                break;
                            }
                        }

                        if (ran2 == 1)
                        {
                            if (x == 8 || board[x + 1, y] == 'X')
                            {
                                ran1 = 1;
                                ran2 = 0;
                                test2 = false;
                            }
                            else
                            {
                                board[x, y] = 'X';
                                board[x + 1, y] = 'X';
                                spawned = true;
                                break;
                            }
                        }
                    }

                    if (ran1 == 1)
                    {
                        if (ran2 == 0)
                        {
                            if (y == 1 || board[x, y - 1] == 'X')
                            {
                                ran2 = 1;
                                test3 = false;
                            }
                            else
                            {
                                board[x, y] = 'X';
                                board[x, y - 1] = 'X';
                                spawned = true;
                                break;
                            }
                        }

                        if (ran2 == 1)
                        {
                            if (y == 8 || board[x, y + 1] == 'X')
                            {
                                ran1 = 0;
                                ran2 = 0;
                                test4 = false;
                            }
                            else
                            {
                                board[x, y] = 'X';
                                board[x, y + 1] = 'X';
                                spawned = true;
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
}
