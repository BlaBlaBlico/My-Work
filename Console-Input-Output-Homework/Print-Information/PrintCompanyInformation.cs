using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Print_Information
{
    class PrintCompanyInformation
    {
        static void Main()
        {
            //Company(C):
            Console.Write("Company name: ");
            string CName = Console.ReadLine();
            Console.Write("Company address: ");
            string CAdress = Console.ReadLine();
            Console.Write("Phone number: ");
            string CPhoneNum = Console.ReadLine();
            Console.Write("Fax number: ");
            string input = Console.ReadLine();
            int CFaxNum;
            bool isValid = int.TryParse(input, out CFaxNum);
            Console.Write("Web site: ");
            string CWebSite = Console.ReadLine();
            //Manager(M):
            Console.Write("Manager first name: ");
            string MFirstName = Console.ReadLine();
            Console.Write("Manager last name: ");
            string MLastName = Console.ReadLine();
            Console.Write("Manager age: ");
            byte MAge = byte.Parse(Console.ReadLine());
            Console.Write("Manager phone: ");
            string MPhoneNum = Console.ReadLine();

            Console.WriteLine("\n");
            Console.WriteLine(CName);
            Console.WriteLine("Adress: {0}", CAdress);
            Console.WriteLine("Tel. {0}", CPhoneNum);
            if (isValid)
            {
                Console.WriteLine("Fax: {0}", CFaxNum);
            }
            else
            {
                Console.WriteLine("Fax: (no fax)");
            }
            Console.WriteLine("Web site: {0}", CWebSite);
            Console.WriteLine("Manager: {0} {1} (age: {2}, tel. {3})", MFirstName, MLastName, MAge, MPhoneNum);
        }
    }
}
