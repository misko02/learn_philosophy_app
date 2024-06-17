using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public record Question
    {
        [Key, ForeignKey("Quiz")]
        public int QuizId{ get; init; }

        [Required]
        public string Content { get; init; } = string.Empty;

        [Required]
        public List<string> Answers { get; init; } = [];
        public int CorrectAnswerIndex { get; init; }
    }
}
