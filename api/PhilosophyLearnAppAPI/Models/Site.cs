using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public record Site
    {
        [Key, ForeignKey("Topic")]
        public int Index { get; init; }
        public string Title { get; init; } = string.Empty;
        public string Content { get; init; } = string.Empty;
    }
}
