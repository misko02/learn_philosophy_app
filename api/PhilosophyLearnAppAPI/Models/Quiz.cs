using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public class Quiz
    {
        [Key]
        public int QuizId { get; set; }

        [Required]
        [MaxLength(50)]
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public bool Finished { get; set; } = false;

        [ForeignKey("Topic")]
        public int TopicId { get; set; }

        public virtual ICollection<Question> Questions { get; set; } = [];
    }
}
