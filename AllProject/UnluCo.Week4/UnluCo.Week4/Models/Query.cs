namespace UnluCo.Week4.Models
{
    public enum SortingDirection
    {
        Asc = 1,
        Desc
    }

    public class Query
    {
        public string Search { get; set; }
        public string Sort { get; set; } = "ProductName";
        public SortingDirection SortingDirection { get; set; }

    }
}
