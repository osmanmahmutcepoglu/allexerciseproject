using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnluCo.ExtensionsMethods.Interface;

namespace UnluCo.ExtensionsMethods
{
    public static class StringExtensions
    {
        public static bool IsValidPassword(this List<IPasswordValidationRule> rules, string password)
        {
            return rules.All(rule => rule.IsValid(password));
        }
    }
}
