using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{

    public record Topic
    {
        [Key]
        public int TopicId { get; init; }

        [Required]
        [MaxLength(50)]
        public string Title { get; init; } = string.Empty;

        [Required]
        public string Description { get; init; } = string.Empty;

        public string[] Categories { get; init; } = [];

        public virtual ICollection<Site> Sites { get; init; } = [];
        public virtual Quiz Quiz { get; init; } = new Quiz();
    }
}
