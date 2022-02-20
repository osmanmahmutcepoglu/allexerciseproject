using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnluCo.ExtensionsMethods.Interface
{
    public interface IPasswordValidationRule
    {
        bool IsValid(string password);
    }
}
