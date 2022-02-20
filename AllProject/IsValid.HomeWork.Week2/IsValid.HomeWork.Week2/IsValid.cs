using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace IsValid.HomeWork.Week2
{
    public interface IPasswordValidationRule
    {
        bool IsValid(string password);
    }

    public class PasswordIsUpperCaseValidationRule : IPasswordValidationRule
    {
        private readonly string _password;

        public PasswordIsUpperCaseValidationRule(string password) => _password = password;

        public bool IsValid(string password)
        {
            return _password.Any(x => char.IsUpper(x));
        }
    }

    public class PasswordIsDigitValidationRule : IPasswordValidationRule
    {
        private readonly string _password;

        public PasswordIsDigitValidationRule(string password) => _password = password;

        public bool IsValid(string password)
        {
            return _password.Any(x => char.IsDigit(x));
        }
    }




    public  class PassWordValidator
    {

        public  bool IsValid(string password)
        {
            List<IPasswordValidationRule> _rules = new List<IPasswordValidationRule>();
            _rules.Add(new PasswordIsDigitValidationRule(password));
            _rules.Add(new PasswordIsUpperCaseValidationRule(password));
            _rules.IsValidPassword(password);

            return _rules.IsValidPassword(password);
        }
    }

}
