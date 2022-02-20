using System;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;

namespace UnluCo.Week4.QueryFilters
{
    public static class QueryableHelper
    {

        public static IQueryable<TModel> OrderBy<TModel>
          (this IQueryable<TModel> q, string name, bool desc)
        {
            Type entityType = typeof(TModel);
            PropertyInfo p = entityType.GetProperty(name);
            MethodInfo m = typeof(QueryableHelper)
             .GetMethod("OrderByProperty")
             .MakeGenericMethod(entityType, p.PropertyType);
            return (IQueryable<TModel>)m.Invoke(null, new object[] {
         q, p , desc });
        }


        public static IQueryable<TModel> OrderByProperty<TModel, TRet>
           (IQueryable<TModel> q, PropertyInfo p, bool desc)
        {
            ParameterExpression pe = Expression.Parameter(typeof(TModel));
            Expression se = Expression.Convert(Expression.Property(pe, p), typeof(object));
            var exp = Expression.Lambda<Func<TModel, TRet>>(se, pe);
            return desc ? q.OrderByDescending(exp) : q.OrderBy(exp);
        }

    }
}
