using System.Linq;

namespace UnluCo.Week4.Extensions
{
    public class PasswordIsUpperCaseValidationRule : IPasswordValidationRule
    {
        public bool IsValid(string password)
        {
            return password.Any(x => char.IsUpper(x));
        }
    }
}
