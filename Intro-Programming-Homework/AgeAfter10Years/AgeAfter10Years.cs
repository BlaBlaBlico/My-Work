using System;

namespace AgeAfter10Years
{
    class AgeAfter10Years
    {
        static void Main()
        {
            Console.Write("Date of birth: ");
            string date_born = Console.ReadLine();
            int year_born = Convert.ToInt32(date_born.Substring(date_born.Length - 4));

            var date = DateTime.Now;
            string date_current = date.ToString("dd/MM/yyyy");
            int year_current = Convert.ToInt32(date_current.Substring(date_current.Length - 4));

            int years_old = year_current - year_born;
            int after_10_years = years_old + 10;

            Console.WriteLine("Now: {0}", years_old);
            Console.WriteLine("After 10 years: {0}", after_10_years);
        }
    }
}
