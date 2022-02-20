using Microsoft.AspNetCore.Http;
using System;
using System.Net;
using System.Security.Authentication;
using System.Text.Json;
using System.Threading.Tasks;

namespace UnluCo.Week4.Middleware
{
    public class CustomExceptionMiddleware
    {
        private readonly RequestDelegate _next;

        public CustomExceptionMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext httpContext)
        {
            try
            {
                await _next(httpContext);
            }
            catch (AuthenticationException ex)
            {
                int statusCode = ex != null ? (int)HttpStatusCode.Unauthorized : (int)HttpStatusCode.OK;

                await HandleExceptionAsync(httpContext, statusCode, ex);
            }
        }
        private async Task HandleExceptionAsync(HttpContext context, int statusCode, Exception exception)
        {
            context.Response.ContentType = "application/json";
            context.Response.StatusCode = statusCode;

            var result = JsonSerializer.Serialize(new { context.Response.StatusCode, error = exception.Message });
            await context.Response.WriteAsync(result);
        }
    }
}
