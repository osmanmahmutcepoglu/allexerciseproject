using System.Collections.Generic;

namespace UnluCo.Week4.Extensions
{
    public static class PassWordValidator
    {
        public static bool IsValid(string password)
        {
            var _rules = new List<IPasswordValidationRule>();
            _rules.Add(new PasswordIsDigitValidationRule());
            _rules.Add(new PasswordIsUpperCaseValidationRule());

            return _rules.IsValidPassword(password);
        }
    }
}
