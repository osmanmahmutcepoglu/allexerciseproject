using Microsoft.AspNetCore.Mvc.Filters;
using System;

namespace UnluCo.Week4.Filter
{
    public class ResponseFilter : ResultFilterAttribute
    {
        // Respons'da Header'a zamanı ekleme
        public void OnResultExecuted(ActionExecutedContext context)
        {
            string date = DateTime.Now.ToString();
            context.HttpContext.Response.Headers.Add("Create Time", date);
        }

    }
}
