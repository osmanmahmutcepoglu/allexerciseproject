namespace UnluCo.Week4.QueryFilters
{
    public class PageInfo
    {
        public int TotalItemCount { get; set; } = 0;
        public int TotalPageCount { get; set; } = 1;

        public int CurrentPage { get; set; } = 1;

        private int _nextPage;
        public int NextPage
        {
            get
            {
                _nextPage = CurrentPage == TotalPageCount ? CurrentPage : CurrentPage + 1;
                return _nextPage;
            }
        }

        private int _previousPage;

        public int PreviousPage
        {
            get
            {
                _previousPage = CurrentPage == 1 ? CurrentPage : CurrentPage - 1;
                return _previousPage;
            }
        }
    }
}
