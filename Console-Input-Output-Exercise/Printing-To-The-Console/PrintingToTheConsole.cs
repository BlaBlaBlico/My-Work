using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Printing_To_The_Console
{
    class PrintingToTheConsole
    {
        static void Main(string[] args)
        {
            string Text = Console.ReadLine();
            string Table = "";
            byte i = 0;

            foreach (char letter in Text)
            {
                if (Table == "")
                {
                    Table += letter;
                }
                else if (letter != Text[i])
                {
                    Table += letter;
                    i++;
                }
                else
                {
                    i++;
                }
            }

            Console.WriteLine(Table);
        }
    }
}
