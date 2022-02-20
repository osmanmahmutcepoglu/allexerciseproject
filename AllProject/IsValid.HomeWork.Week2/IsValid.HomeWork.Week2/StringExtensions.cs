using System;
using System.Collections.Generic;
using System.Linq;

namespace IsValid.HomeWork.Week2
{
    public static class StringExtensions
    {
        public static bool IsValidPassword(this List<IPasswordValidationRule> rules, string password)
        {
            return rules.All(rule => rule.IsValid(password));
        }
    }
}
