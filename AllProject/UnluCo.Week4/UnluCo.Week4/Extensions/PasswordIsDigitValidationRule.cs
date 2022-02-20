using System.Linq;

namespace UnluCo.Week4.Extensions
{
    public class PasswordIsDigitValidationRule : IPasswordValidationRule
    {
        public bool IsValid(string password)
        {
            return password.Any(x => char.IsDigit(x));
        }
    }
}
