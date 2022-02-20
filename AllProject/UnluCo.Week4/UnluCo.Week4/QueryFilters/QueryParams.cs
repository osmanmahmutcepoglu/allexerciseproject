namespace UnluCo.Week4.QueryFilters
{
    public class QueryParams
    {
        public int PageSize { get; set; } = 10;
        public int Page { get; set; } = 1;
        public string[] SortOptions { get; set; } = null;
        public bool SortingDirection { get; set; } = false;
        public string SearchValue { get; set; } = null;
    }
}
