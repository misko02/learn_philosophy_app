namespace PhilosophyLearnAppAPI.Utilities
{
    public class QueryParams
    {
        public int Page { get; set; }
        public int PageSize { get; set; }
        public string SortBy { get; set; } = string.Empty;
        public string SortOrder { get; set; } = string.Empty;
        public string Search { get; set; } = string.Empty;
    }
}
