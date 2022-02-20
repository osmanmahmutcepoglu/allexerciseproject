using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnluCo.ExtensionsMethods.Interface;

namespace UnluCo.ExtensionsMethods.Rules
{
    public class PasswordIsDigitValidationRule : IPasswordValidationRule
    {
        public bool IsValid(string password)
        {
            return password.Any(x => char.IsDigit(x));
        }
    }
}
