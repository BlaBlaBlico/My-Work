using System;

namespace PrintLongSequence
{
    class PrintLongSequence
    {
        static void Main()
        {
            int N = 1000;

            for (int i = 2; i < N + 2; i++) {
                if (i % 2 == 0 & i != N + 1) {
                    Console.Write(i + ",");
                }
                else if(i % 2 == 1 & i != N + 1) {
                    Console.Write("-" + i + ",");
                }
                else {
                    if (i % 2 == 0) {
                        Console.Write(i);
                    }
                    else {
                        Console.Write("-" + i);
                    }
                }
            }
            Console.WriteLine();
        }
    }
}
