using Microsoft.AspNetCore.Identity;
using System;

namespace UnluCo.Week4.Models
{
    public class ApplicationUserTokens : IdentityUserToken<string>
    {
        public DateTime ExpireDate { get; set; }
    }
}
