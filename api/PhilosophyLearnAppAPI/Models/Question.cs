using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public record Question
    {
        [Key, ForeignKey("Quiz")]
        public int QuizId{ get; init; }
        required public int Index { get; init; }

        [Required]
        public string Content { get; init; } = string.Empty;

        [Required]
        public List<string> Answers { get; init; } = [];

        [Required]
        public int CorrectAnswerIndex { get; init; }

        public bool Finished { get; set; } = false;
    }
}
