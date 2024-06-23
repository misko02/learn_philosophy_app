using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public record Question
    {
        [Key]
        public int Id { get; init; }

        [Required]
        public string Content { get; init; } = string.Empty;

        [Required]
        public List<string> Answers { get; init; } = [];

        [Required]
        public int CorrectAnswerIndex { get; init; }

        [ForeignKey("Quiz")]
        public int QuizId { get; init; }
    }
}
