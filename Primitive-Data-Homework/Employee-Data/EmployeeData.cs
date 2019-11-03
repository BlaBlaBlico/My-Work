using System;

namespace Employee_Data
{
    class EmployeeData
    {
        static void Main()
        {
            string FirstName = "Amanda", LastName = "Jonson";
            byte Age = 27;
            char Gender = 'f';
            ulong ID = 8306112507;
            uint EmployeeNum = 27563571;

            Console.WriteLine("First name: {0}\nLast name: {1}\nAge: {2}\nGender: {3}\nPersonal ID: {4}\nUnique Employee number: {5}", FirstName, LastName, Age, Gender, ID, EmployeeNum);
        }
    }
}
