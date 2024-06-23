using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public class Statistics
    {
        [Key, ForeignKey("User")]
        public Guid UserId { get; set; }
        public int QuizzesTaken { get; set; }
        public int QuizzesPassed { get; set; }
        public int TopicsFinished { get; set; }
        public int QuestionsAnswered { get; set; }
        public int CorrectAnswers { get; set; }
        public int WrongAnswers { get; set; }
    }
}
