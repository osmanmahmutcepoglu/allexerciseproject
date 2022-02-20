using System;

namespace UnluCo.ExtensionsMethods
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string pass = "OsmanMahmutcepoglu1";
            Console.WriteLine(PassWordValidator.IsValid(pass));
        }
    }
}
