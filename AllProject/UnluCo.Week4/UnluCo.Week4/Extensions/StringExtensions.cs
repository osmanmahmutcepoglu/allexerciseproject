using System.Collections.Generic;
using System.Linq;

namespace UnluCo.Week4.Extensions
{
    public static class StringExtensions
    {
        public static bool IsValidPassword(this List<IPasswordValidationRule> rules, string password)
        {
            return rules.All(rule => rule.IsValid(password));
        }
    }
}
