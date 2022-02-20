using System.Collections.Generic;
using System.Collections;

namespace UnluCo.Week4.QueryFilters
{
    public class QueryResponse<T>
    {
        public List<T> DataList { get; set; }

        public PageInfo PageInfo { get; set; }
    }
}
